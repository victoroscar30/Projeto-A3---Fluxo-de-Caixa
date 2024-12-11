DECLARE @Tabela NVARCHAR(255);
DECLARE @Sql NVARCHAR(MAX);
DECLARE @ColumnList NVARCHAR(MAX);
DECLARE @Servico CHAR(1);
DECLARE @Usuario NVARCHAR(255);
DECLARE @Host NVARCHAR(255);

-- Listar as tabelas desejadas
DECLARE Tabelas CURSOR FOR
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

OPEN Tabelas;

FETCH NEXT FROM Tabelas INTO @Tabela;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Inicializar variáveis de controle
    SET @Servico = NULL;
    SET @Usuario = SYSTEM_USER;
    SET @Host = HOST_NAME();

    -- Script dinâmico para criar a trigger
    SET @Sql = '
        CREATE TRIGGER trg_LogDML_' + @Tabela + '
        ON ' + @Tabela + '
        AFTER INSERT, UPDATE, DELETE
        AS
        BEGIN
            SET NOCOUNT ON;

            DECLARE @Servico CHAR(1), 
                    @Usuario NVARCHAR(255), 
                    @Host NVARCHAR(255), 
                    @Registro NVARCHAR(255);

            -- Identificar tipo de operação
            IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
            BEGIN
                SET @Servico = ''A'';  -- Alteração (UPDATE)
            END
            ELSE IF EXISTS (SELECT * FROM inserted)
            BEGIN
                SET @Servico = ''E'';  -- Inserção (INSERT)
            END
            ELSE IF EXISTS (SELECT * FROM deleted)
            BEGIN
                SET @Servico = ''D'';  -- Deleção (DELETE)
            END

            -- Informações adicionais
            SET @Usuario = SYSTEM_USER;
            SET @Host = HOST_NAME();

            -- Inserir uma linha de log para cada registro afetado
            IF @Servico = ''A''
            BEGIN
                -- Se for UPDATE, logar ambos inserted e deleted
                INSERT INTO LOGS (DATAHORA, TABELA, SERVICO, REGISTRO, USUARIO, HOST)
                SELECT GETDATE(), ''' + @Tabela + ''', @Servico, CAST(i.HANDLE AS NVARCHAR(255)), @Usuario, @Host
                FROM inserted i
                UNION ALL
                SELECT GETDATE(), ''' + @Tabela + ''', @Servico, CAST(d.HANDLE AS NVARCHAR(255)), @Usuario, @Host
                FROM deleted d;
            END
            ELSE IF @Servico = ''E''
            BEGIN
                -- Se for INSERT, logar apenas inserted
                INSERT INTO LOGS (DATAHORA, TABELA, SERVICO, REGISTRO, USUARIO, HOST)
                SELECT GETDATE(), ''' + @Tabela + ''', @Servico, CAST(HANDLE AS NVARCHAR(255)), @Usuario, @Host
                FROM inserted;
            END
            ELSE IF @Servico = ''D''
            BEGIN
                -- Se for DELETE, logar apenas deleted
                INSERT INTO LOGS (DATAHORA, TABELA, SERVICO, REGISTRO, USUARIO, HOST)
                SELECT GETDATE(), ''' + @Tabela + ''', @Servico, CAST(HANDLE AS NVARCHAR(255)), @Usuario, @Host
                FROM deleted;
            END
        END;
    ';

    -- Executar o SQL dinâmico
    EXEC sp_executesql @Sql;

    FETCH NEXT FROM Tabelas INTO @Tabela;
END;

CLOSE Tabelas;
DEALLOCATE Tabelas;




CREATE TRIGGER trg_AtualizarSaldoCentroCusto
ON LANCAMENTOS
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Atualizar o saldo do centro de custo baseado nos lançamentos
    UPDATE CENTROSCUSTO
    SET SALDO = (
        SELECT SUM(CASE 
                   WHEN L.NATUREZA = 'R' THEN L.VALOR
                   WHEN L.NATUREZA = 'D' THEN -L.VALOR
                   ELSE 0 END)
        FROM LANCAMENTOS L
        INNER JOIN DOCUMENTOS D ON L.DOCUMENTO = D.HANDLE
        WHERE D.CENTROCUSTO = CENTROSCUSTO.HANDLE
    )
    WHERE HANDLE IN (
        SELECT DISTINCT D.CENTROCUSTO
        FROM LANCAMENTOS L
        INNER JOIN DOCUMENTOS D ON L.DOCUMENTO = D.HANDLE
        WHERE L.DOCUMENTO IN (SELECT DOCUMENTO FROM inserted UNION SELECT DOCUMENTO FROM deleted)
    );
END;

CREATE TRIGGER trg_UnicidadeChavePix
ON BANCOCONTAS
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT CHAVEPIX
        FROM BANCOCONTAS
        WHERE CHAVEPIX IS NOT NULL
        GROUP BY CHAVEPIX
        HAVING COUNT(*) > 1
    )
    BEGIN
        RAISERROR ('A chave Pix informada já está em uso por outra conta.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;


CREATE TRIGGER trg_ValidarFormatoCnpjCpf
ON PESSOAS
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Exemplo de validação básica: garantir que o CNPJCPF tenha entre 11 e 14 caracteres numéricos
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE CNPJCPF NOT LIKE REPLICATE('[0-9]', LEN(CNPJCPF))
          OR LEN(CNPJCPF) NOT IN (11, 14)
    )
    BEGIN
        RAISERROR ('O campo CNPJCPF deve conter apenas números e ter 11 ou 14 caracteres.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;


CREATE TRIGGER trg_AtualizarStatusDocumento
ON DOCUMENTOS
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Atualizar o status para 'Confirmado' se VALORESBAIXADOS >= VALORNOMINAL
    UPDATE DOCUMENTOS
    SET STATUS = 2 -- Status 'Confirmado'
    WHERE HANDLE IN (
        SELECT HANDLE
        FROM DOCUMENTOS
        WHERE VALORESBAIXADOS >= VALORNOMINAL
          AND STATUS <> 2
    );
END;


CREATE TRIGGER trg_AtualizarLogDocumento
ON DOCUMENTOS
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Atualizar o campo LOG com informações de confirmação ou cancelamento
    UPDATE DOCUMENTOS
    SET LOG = CASE 
                  WHEN STATUS = 2 THEN 
                      'Documento confirmado por ' + SYSTEM_USER + 
                      ' em ' + CONVERT(VARCHAR, GETDATE(), 120)
                  WHEN STATUS = 3 THEN 
                      'Documento cancelado por ' + SYSTEM_USER + 
                      ' em ' + CONVERT(VARCHAR, GETDATE(), 120)
                  ELSE LOG
              END
    WHERE HANDLE IN (
        SELECT i.HANDLE
        FROM inserted i
        JOIN deleted d ON i.HANDLE = d.HANDLE
        WHERE i.STATUS IN (2, 3) -- Confirmado ou Cancelado
          AND i.STATUS <> d.STATUS -- Somente se houve mudança de status
    );
END;