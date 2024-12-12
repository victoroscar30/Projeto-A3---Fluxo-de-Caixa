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
Essa função Retorna a quantidade de lançamentos (entradas ou saídas) em determinada período passado como parâmetro

### ObterTotalPorNatureza
Essa função Retorna a quantidade de Entradas ou Saídas em determinada período, a natureza do lançamento (entrada ou saída) e o período devem ser passados como parâmetros
