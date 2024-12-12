# Projeto-A3---Fluxo-de-Caixa

## Projeto por
| Autor                                 | RA                | Email                                        |
|---------------------------------------|-------------------|----------------------------------------------|
| Marcelo Bindi Leal                    | 12522189242       | mbindileal10@gmail.com                       |
| Allan dos Santos Grell                | 12522142998       | allan.grell@gmail.com                        |
| Victor Macartney Oscar Monteiro       | 12522164519       | victoroscar30@gmail.com                      |


#### Neste documento está descrito os usos das Functions, Procedures e Triggers do sistema de Fluxo de Caixa

O sistema de fluxo de caixa modelado pelas tabelas apresenta uma estrutura relacional que integra diversas entidades para gerenciar o controle financeiro. Os relacionamentos entre as tabelas permitem a rastreabilidade de informações, desde os dados básicos das pessoas envolvidas até os detalhes de lançamentos financeiros. Abaixo, está a descrição das relações:

## **Tabelas e seus Relacionamentos**

### 1. **PESSOAS**
   - É a tabela central para armazenar informações sobre clientes e fornecedores.
   - Relaciona-se com:
     - **BANCOCONTAS**: Cada pessoa pode possuir uma ou mais contas bancárias registradas.
     - **DOCUMENTOS**: As pessoas são associadas aos documentos financeiros emitidos ou recebidos.

### 2. **USUARIOS**
   - Representa os usuários do sistema, responsáveis por incluir e confirmar ações.
   - Relaciona-se com:
     - **DOCUMENTOS**: Identifica o usuário que incluiu e, opcionalmente, quem confirmou o documento.
     - **LANCAMENTOS**: Define o usuário que registrou o lançamento financeiro.

### 3. **CENTROSCUSTO**
   - Armazena centros de custo para controle orçamentário.
   - Relaciona-se com:
     - **DOCUMENTOS**: Cada documento financeiro deve estar associado a um centro de custo.

### 4. **BANCOCONTAS**
   - Gerencia as contas bancárias do sistema, tanto internas quanto de terceiros.
   - Relaciona-se com:
     - **PESSOAS**: Associa contas bancárias às pessoas.
     - **LANCAMENTOS**: Utiliza contas bancárias para registrar transações, distinguindo entre contas internas e de pessoas.

### 5. **FORMASPAGAMENTOS**
   - Contém as formas de pagamento disponíveis no sistema.
   - Relaciona-se com:
     - **LANCAMENTOS**: Define a forma de pagamento utilizada em cada lançamento.

### 6. **DOCUMENTOS**
   - Registra documentos financeiros, como faturas ou recibos.
   - Relaciona-se com:
     - **PESSOAS**: Cada documento pertence a uma pessoa.
     - **CENTROSCUSTO**: Associa o documento a um centro de custo para controle orçamentário.
     - **USUARIOS**: Identifica quem incluiu ou confirmou o documento.
     - **LANCAMENTOS**: Cada lançamento está vinculado a um documento, garantindo rastreabilidade.

### 7. **LANCAMENTOS**
   - Representa as movimentações financeiras (receitas e despesas).
   - Relaciona-se com:
     - **DOCUMENTOS**: Cada lançamento é associado a um documento, para controlar os valores e sua origem.
     - **BANCOCONTAS**: Utiliza contas bancárias internas e externas para registrar transações financeiras.
     - **FORMASPAGAMENTOS**: Define como o pagamento foi realizado.
     - **USUARIOS**: Associa o lançamento ao usuário que o registrou.

### 8. **LOGS**
   - Armazena o histórico de operações realizadas no sistema.
   - Relaciona-se indiretamente com todas as tabelas, registrando as alterações feitas nelas (exemplo: inclusão, alteração ou deleção de registros).

---

### **Resumo dos Fluxos**
- O fluxo começa com o cadastro de pessoas (clientes e fornecedores), usuários, e contas bancárias.
- Documentos financeiros são criados para representar transações comerciais, associados a pessoas e centros de custo.
- Lançamentos financeiros conectam documentos a contas bancárias e formas de pagamento, registrando as entradas e saídas financeiras.
- Logs capturam o histórico de operações, garantindo rastreabilidade e auditoria de todas as ações.

---

## Dicionário de dados

### **Tabela: PESSOAS**
| Campo            | Tipo              | Descrição                                                                          |
|-------------------|-------------------|----------------------------------------------------------------------------------|
| HANDLE           | INT (PK)          | Identificador único da pessoa.                                                  |
| NOME             | VARCHAR(255)      | Nome da pessoa.                                                                  |
| TIPO             | CHAR(1)           | Tipo de pessoa: 1 (Pessoa Física) ou 2 (Pessoa Jurídica).                        |
| CNPJCPF          | VARCHAR(255)      | Documento de identificação (CNPJ ou CPF).                                       |
| LOGRADOURO       | VARCHAR(255)      | Endereço.                                                                        |
| BAIRRO           | VARCHAR(255)      | Bairro.                                                                          |
| COMPLEMENTO      | VARCHAR(255)      | Complemento do endereço.                                                        |
| PAIS             | VARCHAR(255)      | País.                                                                            |
| ESTADO           | VARCHAR(255)      | Estado.                                                                          |
| MUNICIPIO        | VARCHAR(255)      | Município.                                                                       |
| EMAIL            | VARCHAR(255)      | Endereço de e-mail.                                                              |
| NASCIMENTO       | DATE              | Data de nascimento.                                                              |
| IDENTIDADE       | VARCHAR(255)      | Documento de identidade.                                                         |
| EHCLIENTE        | CHAR(1)           | Indica se é cliente: 'S' (Sim), 'N' (Não).                                       |
| CEP              | VARCHAR(255)      | Código Postal.                                                                   |
| EHFORNECEDOR     | CHAR(1)           | Indica se é fornecedor: 'S' (Sim), 'N' (Não).                                    |

---

### **Tabela: USUARIOS**
| Campo    | Tipo         | Descrição                               |
|----------|--------------|-----------------------------------------|
| HANDLE   | INT (PK)     | Identificador único do usuário.         |
| APELIDO  | VARCHAR(255) | Apelido do usuário.                     |
| NOME     | VARCHAR(255) | Nome completo do usuário.               |
| EMAIL    | VARCHAR(255) | Endereço de e-mail do usuário.          |

---

### **Tabela: CENTROSCUSTO**
| Campo  | Tipo          | Descrição                               |
|--------|---------------|-----------------------------------------|
| HANDLE | INT (PK)      | Identificador único do centro de custo. |
| NOME   | VARCHAR(255)  | Nome do centro de custo.                |
| SALDO  | DECIMAL(18,2) | Saldo atual do centro de custo.         |

---

### **Tabela: LOGS**
| Campo     | Tipo          | Descrição                                                              |
|-----------|---------------|------------------------------------------------------------------------|
| HANDLE    | INT (PK)      | Identificador único do log.                                           |
| DATAHORA  | DATETIME      | Data e hora da operação.                                              |
| TABELA    | VARCHAR(255)  | Nome da tabela afetada.                                               |
| SERVICO   | CHAR(1)       | Tipo de serviço: 'E' (Entrada), 'A' (Alteração), 'D' (Deleção).        |
| REGISTRO  | VARCHAR(255)  | Identificador do registro afetado.                                    |
| USUARIO   | VARCHAR(255)  | Nome do usuário responsável pela operação.                            |
| HOST      | VARCHAR(255)  | Host ou máquina responsável pela operação.                            |

---

### **Tabela: FORMASPAGAMENTOS**
| Campo  | Tipo         | Descrição                                  |
|--------|--------------|--------------------------------------------|
| HANDLE | INT (PK)     | Identificador único da forma de pagamento. |
| NOME   | VARCHAR(255) | Nome da forma de pagamento.                |

---

### **Tabela: BANCOCONTAS**
| Campo          | Tipo          | Descrição                                                         |
|-----------------|---------------|-------------------------------------------------------------------|
| HANDLE         | INT (PK)      | Identificador único da conta bancária.                           |
| NUMEROCONTA    | VARCHAR(255)  | Número da conta.                                                 |
| BANCO          | VARCHAR(255)  | Nome do banco.                                                   |
| AGENCIA        | VARCHAR(255)  | Número da agência.                                               |
| DIGITOAGENCIA  | VARCHAR(255)  | Dígito da agência.                                               |
| DIGITOCONTA    | VARCHAR(255)  | Dígito da conta.                                                 |
| CHAVEPIX       | VARCHAR(255)  | Chave PIX associada à conta.                                     |
| TIPOPROPRIETARIO | CHAR(1)     | Tipo de proprietário: 'P' (Próprio), 'T' (Terceiro).             |
| PESSOA         | INT           | Relaciona a conta com uma pessoa (FK para PESSOAS).             |
| ATIVO          | CHAR(1)       | Indica se a conta está ativa: 'S' (Sim), 'N' (Não).              |
| OBSERVACOES    | VARCHAR(MAX)  | Observações adicionais sobre a conta.                            |

---

### **Tabela: DOCUMENTOS**
| Campo            | Tipo          | Descrição                                                          |
|-------------------|---------------|--------------------------------------------------------------------|
| HANDLE           | INT (PK)      | Identificador único do documento.                                 |
| PESSOA           | INT (FK)      | Relaciona o documento com uma pessoa (FK para PESSOAS).           |
| DOCUMENTODIGITADO| VARCHAR(255)  | Documento digitado pelo usuário.                                  |
| DATAENTRADA      | DATE          | Data de entrada do documento.                                     |
| DATAEMISSAO      | DATE          | Data de emissão do documento.                                     |
| VALORNOMINAL     | DECIMAL(18,2) | Valor nominal do documento.                                       |
| VALORESBAIXADOS  | DECIMAL(18,2) | Valores baixados.                                                 |
| ENTRADASAIDA     | CHAR(1)       | Indica se é entrada ('E') ou saída ('S').                         |
| DATAINCLUSAO     | DATE          | Data de inclusão do documento.                                    |
| DATACONFIRMACAO  | DATE          | Data de confirmação do documento.                                 |
| USUARIOINCLUIU   | INT (FK)      | Usuário que incluiu (FK para USUARIOS).                           |
| USUARIOCONFIRMOU | INT (FK)      | Usuário que confirmou (FK para USUARIOS).                         |
| STATUS           | CHAR(1)       | Status do documento: 1 (Cadastrado), 2 (Confirmado), 3 (Cancelado).|
| LOG              | VARCHAR(MAX)  | Log do documento.                                                 |
| DATAVENCIMENTO   | DATE          | Data de vencimento do documento.                                  |
| CENTROCUSTO      | INT (FK)      | Relaciona com um centro de custo (FK para CENTROSCUSTO).          |

---

### **Tabela: LANCAMENTOS**
| Campo            | Tipo          | Descrição                                                            |
|-------------------|---------------|----------------------------------------------------------------------|
| HANDLE           | INT (PK)      | Identificador único do lançamento.                                   |
| DATALANCAMENTO   | DATE          | Data do lançamento.                                                  |
| VALORMULTA       | DECIMAL(18,2) | Valor de multa associado ao lançamento.                              |
| DESCONTO         | DECIMAL(18,2) | Valor de desconto associado ao lançamento.                           |
| NATUREZA         | CHAR(1)       | Natureza: 'R' (Receita), 'D' (Despesa).                              |
| VALOR            | DECIMAL(18,2) | Valor do lançamento.                                                 |
| VALORJUROS       | DECIMAL(18,2) | Valor de juros do lançamento.                                        |
| DOCUMENTO        | INT (FK)      | Relaciona com um documento (FK para DOCUMENTOS).                     |
| BANCOCONTAINTERNA| INT (FK)      | Conta bancária interna (FK para BANCOCONTAS).                        |
| BANCOCONTAPESSOA | INT (FK)      | Conta bancária da pessoa (FK para BANCOCONTAS).                      |
| FORMAPAGAMENTO   | INT (FK)      | Forma de pagamento utilizada (FK para FORMASPAGAMENTOS).             |
| USUARIOINCLUIU   | INT (FK)      | Usuário que incluiu o lançamento (FK para USUARIOS).                 |

--- 


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


