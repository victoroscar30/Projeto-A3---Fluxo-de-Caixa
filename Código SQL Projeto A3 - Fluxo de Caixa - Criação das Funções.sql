CREATE FUNCTION ObterTotalDocumentosPorPessoa (@PessoaID INT)
RETURNS INT
AS
BEGIN
    RETURN (
        SELECT COUNT(*) 
        FROM DOCUMENTOS 
        WHERE PESSOA = @PessoaID
    );
END;

CREATE FUNCTION ObterTotalLancamentosPorDocumento (@DocumentoID INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    RETURN (
        SELECT SUM(VALOR) 
        FROM LANCAMENTOS 
        WHERE DOCUMENTO = @DocumentoID
    );
END;

CREATE FUNCTION CalcularSaldoDocumento (@DocumentoID INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @Saldo DECIMAL(18, 2);
    SELECT @Saldo = VALORNOMINAL - VALORESBAIXADOS
    FROM DOCUMENTOS
    WHERE HANDLE = @DocumentoID;
    RETURN ISNULL(@Saldo, 0);
END;

CREATE FUNCTION ObterQtdLancamentosPorPeriodo (@DataInicio DATE, @DataFim DATE)
RETURNS INT
AS
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM LANCAMENTOS
        WHERE DATALANCAMENTO BETWEEN @DataInicio AND @DataFim
    );
END;

CREATE FUNCTION ObterTotalPorNatureza (@Natureza CHAR(1), @DataInicio DATE, @DataFim DATE)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    RETURN (
        SELECT SUM(VALOR) 
        FROM LANCAMENTOS
        WHERE NATUREZA = @Natureza AND DATALANCAMENTO BETWEEN @DataInicio AND @DataFim
    );
END;

CREATE FUNCTION ObterNomeUsuario (@UsuarioID INT)
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @Nome VARCHAR(255);
    SELECT @Nome = NOME
    FROM USUARIOS
    WHERE HANDLE = @UsuarioID;
    RETURN @Nome;
END;

