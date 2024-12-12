# Projeto-A3---Fluxo-de-Caixa

#### Neste documento está descrito os usos das Functions, Procedures e Triggers do sistema de Fluxo de Caixa

## Functions

### ObterTotalDocumentosPorPessoa
Essa função busca na tabela Documentos todos os registros atribuídos a uma Pessoa que foi passada como parâmetro na função

### ObterTotalLancamentosPorDocumento
Essa função busca na tabela Lancamentos todos os registros atribuídos a um Documento que foi passado como parâmetro na função

### CalcularSaldoDocumento
Essa função Retorna o saldo (Valor nominal - Valores Baixados) de um Documento que foi passado como parâmetro

### ObterQtdLancamentosPorPeriodo
Essa função Retorna a quantidade de lançamentos (receitas ou despesas) em determinada período passado como parâmetro

### ObterTotalPorNatureza
Essa função Retorna a quantidade de Receitas ou Despesas em determinada período, a natureza do lançamento (receita ou despesa) e o período devem ser passados como parâmetros

### ObterNomeUsuario
Essa função retorna o Nome de um Usuário da tabela Usuarios a partir do ID do Usuário que é passado via parâmetro


## Procedures

### CadastrarPessoa
Essa procedure realiza a inserção de um registro na Tabela Pessoa, é necessário passar os atributos NOME, TIPO, CNPJCPF, LOGRADOURO, BAIRRO, COMPLEMENTO, PAIS, ESTADO, MUNICIPIO, EMAIL, NASCIMENTO, IDENTIDADE, EHCLIENTE, CEP, EHFORNECEDOR.

### AtualizarDadosPessoa
Essa procedure realiza um Update de um registro da Tabela Pessoa

### ConsultarPessoaPorCnpjCpf
Essa procedure realiza uma busca na Tabela Pessoas por CPF ou CNPJ

### RegistrarDocumento
Essa procedure realiza a inserção de um registro na Tabela Documentos, é necessário passar os atributos PESSOA, DOCUMENTODIGITADO, DATAENTRADA, DATAEMISSAO, VALORNOMINAL, ENTRADASAIDA, USUARIOINCLUIU, STATUS, DATAVENCIMENTO, CENTROCUSTO

### AtualizarSaldoCentroCusto
Essa procedure atualiza o atributo Saldo de um registro da Tabela Centrocusto com o novo valor do Saldo

### LancarMovimentacao
Essa procedure realiza a inserção de um registro na Tabela Movimentacao, é necessário passar os atributos DATALANCAMENTO, VALOR, NATUREZA, DOCUMENTO, BANCOCONTAINTERNA, BANCOCONTAPESSOA, FORMAPAGAMENTO, USUARIOINCLUIU

### CancelarDocumento
Essa procedure atualiza um Documento (registro da Tabela Documentos) para o Status de Cancelado

### RelatorioLancamentosPorPeriodo
Essa procedure cria um relatório a partir dos registros da Tabela Lancamentos dentro de um periodo

### ConsultarDocumentosAbertos
Essa procedure consulta todos os Documentos (registros da Tabela Documentos) que estejam com valor pendende de recebimento ou de pagamento

## Triggers 

### trg_AtualizarSaldoCentroCusto
Essa trigger atualiza o Saldo do Centro de Custo, na Tabela Lancamentos, quando feito novo registro na Tabela Lancamentos

### trg_UnicidadeChavePix
Essa trigger verifica se a chave pix é única no sistema ou ja está atrelada a algum outro registro da Tabela Bancocontas

### trg_ValidarFormatoCnpjCpf
Essa trigger verifica se o valor recebido no campo CNPJCPF é um CNPJ ou um CPF e se ele é válido

### trg_AtualizarStatusDocumento
Essa trigger atualiza o Status de um Documento (registro da Tabela Documentos) caso o Valor baixado for maior ou igual o Valor nominal

### trg_AtualizarLogDocumento
Essa trigger atualiza o campo Log de um Documento (registro da Tabela Documentos) com informações de confirmação ou cancelamento do documento


