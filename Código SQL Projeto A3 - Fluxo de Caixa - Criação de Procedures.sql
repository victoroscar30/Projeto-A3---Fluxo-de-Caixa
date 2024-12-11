CREATE PROCEDURE CadastrarPessoa
    @Nome VARCHAR(255),
    @Tipo CHAR(1),
    @CnpjCpf VARCHAR(255),
    @Logradouro VARCHAR(255),
    @Bairro VARCHAR(255),
    @Complemento VARCHAR(255),
    @Pais VARCHAR(255),
    @Estado VARCHAR(255),
    @Municipio VARCHAR(255),
    @Email VARCHAR(255),
    @Nascimento DATE,
    @Identidade VARCHAR(255),
    @EhCliente CHAR(1),
    @Cep VARCHAR(255),
    @EhFornecedor CHAR(1)
AS
BEGIN
    INSERT INTO PESSOAS 
    (NOME, TIPO, CNPJCPF, LOGRADOURO, BAIRRO, COMPLEMENTO, PAIS, ESTADO, MUNICIPIO, EMAIL, NASCIMENTO, IDENTIDADE, EHCLIENTE, CEP, EHFORNECEDOR)
    VALUES 
    (@Nome, @Tipo, @CnpjCpf, @Logradouro, @Bairro, @Complemento, @Pais, @Estado, @Municipio, @Email, @Nascimento, @Identidade, @EhCliente, @Cep, @EhFornecedor);
END;

CREATE PROCEDURE AtualizarDadosPessoa
    @PessoaID INT,
    @Nome VARCHAR(255) = NULL,
    @Logradouro VARCHAR(255) = NULL,
    @Bairro VARCHAR(255) = NULL,
    @Complemento VARCHAR(255) = NULL,
    @Email VARCHAR(255) = NULL,
    @Cep VARCHAR(255) = NULL
AS
BEGIN
    DECLARE @Sql NVARCHAR(MAX)
    DECLARE @Parametros NVARCHAR(MAX)

    SET @Sql = 'UPDATE PESSOAS SET '
    SET @Parametros = ''

    -- Condição para adicionar o campo 'Nome' se não for nulo
    IF @Nome IS NOT NULL
    BEGIN
        SET @Sql = @Sql + 'NOME = @Nome, '
        SET @Parametros = @Parametros + '@Nome VARCHAR(255), '
    END

    -- Condição para adicionar o campo 'Logradouro' se não for nulo
    IF @Logradouro IS NOT NULL
    BEGIN
        SET @Sql = @Sql + 'LOGRADOURO = @Logradouro, '
        SET @Parametros = @Parametros + '@Logradouro VARCHAR(255), '
    END

    -- Condição para adicionar o campo 'Bairro' se não for nulo
    IF @Bairro IS NOT NULL
    BEGIN
        SET @Sql = @Sql + 'BAIRRO = @Bairro, '
        SET @Parametros = @Parametros + '@Bairro VARCHAR(255), '
    END

    -- Condição para adicionar o campo 'Complemento' se não for nulo
    IF @Complemento IS NOT NULL
    BEGIN
        SET @Sql = @Sql + 'COMPLEMENTO = @Complemento, '
        SET @Parametros = @Parametros + '@Complemento VARCHAR(255), '
    END

    -- Condição para adicionar o campo 'Email' se não for nulo
    IF @Email IS NOT NULL
    BEGIN
        SET @Sql = @Sql + 'EMAIL = @Email, '
        SET @Parametros = @Parametros + '@Email VARCHAR(255), '
    END

    -- Condição para adicionar o campo 'Cep' se não for nulo
    IF @Cep IS NOT NULL
    BEGIN
        SET @Sql = @Sql + 'CEP = @Cep, '
        SET @Parametros = @Parametros + '@Cep VARCHAR(255), '
    END

    -- Remover a última vírgula
    SET @Sql = LEFT(@Sql, LEN(@Sql) - 2)

    -- Adicionar a condição WHERE para o ID
    SET @Sql = @Sql + ' WHERE HANDLE = @PessoaID'

    -- Executar o SQL dinâmico
    EXEC sp_executesql @Sql, @Parametros, @PessoaID, @Nome, @Logradouro, @Bairro, @Complemento, @Email, @Cep
END;

CREATE PROCEDURE ConsultarPessoaPorCnpjCpf
    @CnpjCpf VARCHAR(255)
AS
BEGIN
    SELECT *
    FROM PESSOAS
    WHERE CNPJCPF = @CnpjCpf;
END;

CREATE PROCEDURE RegistrarDocumento
    @Pessoa INT,
    @DocumentoDigitado VARCHAR(255),
    @DataEntrada DATE,
    @DataEmissao DATE,
    @ValorNominal DECIMAL(18, 2),
    @EntradaSaida CHAR(1),
    @UsuarioIncluiu INT,
    @Status CHAR(1),
    @DataVencimento DATE,
    @CentroCusto INT
AS
BEGIN
    INSERT INTO DOCUMENTOS 
    (PESSOA, DOCUMENTODIGITADO, DATAENTRADA, DATAEMISSAO, VALORNOMINAL, ENTRADASAIDA, USUARIOINCLUIU, STATUS, DATAVENCIMENTO, CENTROCUSTO)
    VALUES 
    (@Pessoa, @DocumentoDigitado, @DataEntrada, @DataEmissao, @ValorNominal, @EntradaSaida, @UsuarioIncluiu, @Status, @DataVencimento, @CentroCusto);
END;


CREATE PROCEDURE AtualizarSaldoCentroCusto
    @CentroCustoID INT,
    @NovoSaldo DECIMAL(18, 2)
AS
BEGIN
    UPDATE CENTROSCUSTO
    SET SALDO = @NovoSaldo
    WHERE HANDLE = @CentroCustoID;
END;



CREATE PROCEDURE LancarMovimentacao
    @DataLancamento DATE,
    @Valor DECIMAL(18, 2),
    @Natureza CHAR(1),
    @Documento INT,
    @BancoContaInterna INT,
    @BancoContaPessoa INT,
    @FormaPagamento INT,
    @UsuarioIncluiu INT
AS
BEGIN
    INSERT INTO LANCAMENTOS 
    (DATALANCAMENTO, VALOR, NATUREZA, DOCUMENTO, BANCOCONTAINTERNA, BANCOCONTAPESSOA, FORMAPAGAMENTO, USUARIOINCLUIU)
    VALUES 
    (@DataLancamento, @Valor, @Natureza, @Documento, @BancoContaInterna, @BancoContaPessoa, @FormaPagamento, @UsuarioIncluiu);
END;


CREATE PROCEDURE CancelarDocumento
    @DocumentoID INT,
    @UsuarioID INT
AS
BEGIN
    UPDATE DOCUMENTOS
    SET STATUS = 3, -- Status 3 para "Cancelado"
        DATACONFIRMACAO = GETDATE(),
        USUARIOCONFIRMOU = @UsuarioID
    WHERE HANDLE = @DocumentoID;
END;

CREATE PROCEDURE RelatorioLancamentosPorPeriodo
    @DataInicio DATE,
    @DataFim DATE
AS
BEGIN
    SELECT L.DATALANCAMENTO,
           L.VALOR,
           L.NATUREZA,
           CASE 
               WHEN L.NATUREZA = 'R' THEN 'Receita'
               WHEN L.NATUREZA = 'D' THEN 'Despesa'
           END AS Tipo,
           D.DOCUMENTODIGITADO AS Documento,
           U.NOME AS UsuarioIncluiu
    FROM LANCAMENTOS L
    INNER JOIN DOCUMENTOS D ON L.DOCUMENTO = D.HANDLE
    INNER JOIN USUARIOS U ON L.USUARIOINCLUIU = U.HANDLE
    WHERE L.DATALANCAMENTO BETWEEN @DataInicio AND @DataFim;
END;


CREATE PROCEDURE ConsultarDocumentosAbertos
AS
BEGIN
    SELECT D.HANDLE AS DocumentoID,
           D.DOCUMENTODIGITADO,
           D.DATAEMISSAO,
           D.VALORNOMINAL,
           D.VALORESBAIXADOS,
           (D.VALORNOMINAL - D.VALORESBAIXADOS) AS SaldoDevedor,
           P.NOME AS Pessoa
    FROM DOCUMENTOS D
    INNER JOIN PESSOAS P ON D.PESSOA = P.HANDLE
    WHERE D.VALORNOMINAL > D.VALORESBAIXADOS;
END;
