INSERT INTO PESSOAS (NOME, TIPO, CNPJCPF, LOGRADOURO, BAIRRO, COMPLEMENTO, PAIS, ESTADO, MUNICIPIO, EMAIL, NASCIMENTO, IDENTIDADE, EHCLIENTE, CEP, EHFORNECEDOR)
VALUES
('Jo�o Silva', '1', '123.456.789-00', 'Rua A', 'Centro', NULL, 'Brasil', 'SP', 'S�o Paulo', 'joao.silva@gmail.com', '1980-05-01', '123456', 'S', '01001-000', 'N'),
('Maria Souza', '2', '12.345.678/0001-99', 'Av. B', 'Jardins', 'Bloco 1', 'Brasil', 'RJ', 'Rio de Janeiro', 'contato@mariasouza.com', NULL, NULL, 'N', '20000-000', 'S'),
('Carlos Dias', '1', '987.654.321-00', 'Rua C', 'Vila Nova', NULL, 'Brasil', 'MG', 'Belo Horizonte', 'carlos.dias@gmail.com', '1990-07-15', '987654', 'S', '30000-000', 'N'),
('Ana Pereira', '1', '321.654.987-00', 'Av. D', 'Centro', 'Apto 101', 'Brasil', 'BA', 'Salvador', 'ana.pereira@gmail.com', '1985-11-20', '654321', 'S', '40000-000', 'N'),
('Jos� Martins', '2', '98.765.432/0001-11', 'Rua E', 'Industrial', NULL, 'Brasil', 'RS', 'Porto Alegre', 'contato@martins.com', NULL, NULL, 'N', '90000-000', 'S'),
('Lucia Fernandes', '1', '852.741.963-00', 'Av. F', 'Centro', NULL, 'Brasil', 'SC', 'Florian�polis', 'lucia.fernandes@gmail.com', '1995-09-15', '852741', 'S', '88000-000', 'N'),
('Pedro Castro', '2', '33.222.111/0001-44', 'Rua G', 'Centro', NULL, 'Brasil', 'ES', 'Vit�ria', 'pedro.castro@empresa.com', NULL, NULL, 'N', '29000-000', 'S'),
('Julia Carvalho', '1', '111.222.333-44', 'Av. H', 'Zona Norte', 'Bloco 2', 'Brasil', 'AM', 'Manaus', 'julia.carvalho@gmail.com', '1989-03-05', '112233', 'S', '69000-000', 'N'),
('Rafael Mendes', '1', '555.666.777-88', 'Rua I', 'Centro', NULL, 'Brasil', 'PE', 'Recife', 'rafael.mendes@gmail.com', '1992-06-10', '556677', 'S', '50000-000', 'N'),
('Camila Rocha', '2', '22.333.444/0001-55', 'Rua J', 'Centro', NULL, 'Brasil', 'GO', 'Goi�nia', 'contato@rochalimited.com', NULL, NULL, 'N', '74000-000', 'S'),
('Andre Santos', '1', '999.888.777-66', 'Rua K', 'Bairro Novo', NULL, 'Brasil', 'PR', 'Curitiba', 'andre.santos@gmail.com', '1990-01-15', '998877', 'S', '80000-000', 'N'),
('Bruno Lima', '1', '444.555.666-77', 'Av. L', 'Jardim', 'Casa 10', 'Brasil', 'CE', 'Fortaleza', 'bruno.lima@gmail.com', '1991-04-20', '445566', 'S', '60000-000', 'N'),
('Fernanda Reis', '1', '777.888.999-00', 'Rua M', 'Centro', NULL, 'Brasil', 'MS', 'Campo Grande', 'fernanda.reis@gmail.com', '1986-12-25', '778899', 'S', '79000-000', 'N'),
('Gabriel Torres', '1', '222.333.444-55', 'Rua N', 'Industrial', NULL, 'Brasil', 'PA', 'Bel�m', 'gabriel.torres@gmail.com', '1995-08-30', '223344', 'S', '66000-000', 'N'),
('Mariana Almeida', '2', '11.222.333/0001-66', 'Av. O', 'Jardins', NULL, 'Brasil', 'PB', 'Jo�o Pessoa', 'contato@almeidaindustries.com', NULL, NULL, 'N', '58000-000', 'S'),
('Lucas Oliveira', '1', '666.777.888-99', 'Rua P', 'Centro', NULL, 'Brasil', 'RN', 'Natal', 'lucas.oliveira@gmail.com', '1998-02-15', '667788', 'S', '59000-000', 'N'),
('Paula Vieira', '1', '888.999.000-11', 'Av. Q', 'Centro', NULL, 'Brasil', 'MT', 'Cuiab�', 'paula.vieira@gmail.com', '1990-11-11', '889900', 'S', '78000-000', 'N'),
('Ricardo Gomes', '2', '33.444.555/0001-77', 'Rua R', 'Industrial', NULL, 'Brasil', 'PI', 'Teresina', 'contato@gomesgroup.com', NULL, NULL, 'N', '64000-000', 'S'),
('Aline Moreira', '1', '123.321.456-78', 'Rua S', 'Jardins', NULL, 'Brasil', 'SE', 'Aracaju', 'aline.moreira@gmail.com', '1987-07-07', '123321', 'S', '49000-000', 'N'),
('Vinicius Lima', '2', '44.555.666/0001-88', 'Av. T', 'Centro', NULL, 'Brasil', 'AC', 'Rio Branco', 'contato@limacorp.com', NULL, NULL, 'N', '69900-000', 'S');

INSERT INTO USUARIOS (APELIDO, NOME, EMAIL)
VALUES
('JoaoAdmin', 'Jo�o Administrador', 'admin@empresa.com'),
('MariaC', 'Maria da Concei��o', 'maria.conceicao@empresa.com'),
('CarlosD', 'Carlos Dias', 'carlos.dias@empresa.com'),
('AnaP', 'Ana Pereira', 'ana.pereira@empresa.com'),
('JoseM', 'Jos� Martins', 'jose.martins@empresa.com'),
('LuciaF', 'Lucia Fernandes', 'lucia.fernandes@empresa.com'),
('PedroC', 'Pedro Castro', 'pedro.castro@empresa.com'),
('JuliaR', 'Julia Rocha', 'julia.rocha@empresa.com'),
('RafaelM', 'Rafael Mendes', 'rafael.mendes@empresa.com'),
('CamilaS', 'Camila Souza', 'camila.souza@empresa.com'),
('AndreS', 'Andre Santos', 'andre.santos@empresa.com'),
('BrunoL', 'Bruno Lima', 'bruno.lima@empresa.com'),
('FernandaR', 'Fernanda Reis', 'fernanda.reis@empresa.com'),
('GabrielT', 'Gabriel Torres', 'gabriel.torres@empresa.com'),
('MarianaA', 'Mariana Almeida', 'mariana.almeida@empresa.com'),
('LucasO', 'Lucas Oliveira', 'lucas.oliveira@empresa.com'),
('PaulaV', 'Paula Vieira', 'paula.vieira@empresa.com'),
('RicardoG', 'Ricardo Gomes', 'ricardo.gomes@empresa.com'),
('AlineM', 'Aline Moreira', 'aline.moreira@empresa.com'),
('ViniciusL', 'Vinicius Lima', 'vinicius.lima@empresa.com');


INSERT INTO BANCOCONTAS (NUMEROCONTA, BANCO, AGENCIA, DIGITOAGENCIA, DIGITOCONTA, CHAVEPIX, TIPOPROPRIETARIO, PESSOA, ATIVO, OBSERVACOES)
VALUES
('12345-6', 'Banco do Brasil', '1234', '1', '6', 'joao@pix.com', 'P', 1, 'S', 'Conta principal da empresa.'),
('67890-1', 'Ita�', '5678', '2', '1', 'maria@pix.com', 'T', 2, 'S', 'Conta para recebimento de clientes.'),
('98765-4', 'Santander', '9876', '3', '4', 'carlos@pix.com', 'T', 3, 'S', 'Conta de fornecedor.'),
('11223-7', 'Bradesco', '1122', '4', '7', NULL, 'P', NULL, 'S', 'Conta secund�ria da empresa.'),
('45678-9', 'Caixa Econ�mica', '4567', '5', '9', 'ana@pix.com', 'T', 4, 'S', 'Conta de cliente preferencial.'),
('54321-0', 'Inter', '1111', '0', '5', 'lucia@pix.com', 'T', 5, 'S', 'Conta de fornecedor estrat�gico.'),
('76543-2', 'Nubank', '2222', '1', '3', 'pedro@pix.com', 'P', NULL, 'S', 'Conta da filial 1.'),
('32123-8', 'C6 Bank', '3333', '2', '8', 'julia@pix.com', 'T', 6, 'S', 'Conta para clientes premium.'),
('11111-7', 'Original', '4444', '3', '7', 'rafael@pix.com', 'T', 7, 'S', 'Conta para movimenta��o de sal�rios.'),
('22222-6', 'PagBank', '5555', '4', '6', NULL, 'P', NULL, 'S', 'Conta para pagamentos online.'),
('33333-5', 'Sicoob', '6666', '5', '5', 'camila@pix.com', 'T', 8, 'S', 'Conta de opera��o regional.'),
('44444-4', 'Mercado Pago', '7777', '6', '4', 'andre@pix.com', 'T', 9, 'S', 'Conta para vendas online.'),
('55555-3', 'Neon', '8888', '7', '3', 'bruno@pix.com', 'P', NULL, 'S', 'Conta de poupan�a empresarial.'),
('66666-2', 'Banco Pan', '9999', '8', '2', 'fernanda@pix.com', 'T', 10, 'S', 'Conta para fornecedores externos.'),
('77777-1', 'Safra', '1234', '9', '1', 'gabriel@pix.com', 'T', 11, 'S', 'Conta de exporta��o.'),
('88888-0', 'Daycoval', '2345', '0', '0', 'mariana@pix.com', 'T', 12, 'S', 'Conta de projetos especiais.'),
('99999-9', 'BV', '3456', '1', '9', 'lucas@pix.com', 'T', 13, 'S', 'Conta para clientes VIP.'),
('12321-4', 'BMG', '4567', '2', '4', 'paula@pix.com', 'T', 14, 'S', 'Conta de seguros.'),
('54345-5', 'Banrisul', '5678', '3', '5', 'ricardo@pix.com', 'T', 15, 'S', 'Conta de clientes regionais.'),
('67876-6', 'Bancoob', '6789', '4', '6', 'aline@pix.com', 'T', 16, 'S', 'Conta de microempreendedores.');


INSERT INTO CENTROSCUSTO (NOME, SALDO)
VALUES
('Marketing', 5000.00),
('Financeiro', 10000.00),
('RH', 8000.00),
('TI', 7000.00),
('Log�stica', 6000.00),
('Vendas', 4000.00),
('Opera��es', 12000.00),
('Jur�dico', 2500.00),
('Compras', 3500.00),
('TI Infraestrutura', 15000.00),
('Sistemas', 9000.00),
('Suporte', 3500.00),
('Gest�o de Projetos', 7500.00),
('Treinamento', 2000.00),
('Atendimento ao Cliente', 5000.00),
('Pesquisa e Desenvolvimento', 8000.00),
('Administra��o', 13000.00),
('Auditoria', 4000.00),
('Consultoria', 10000.00),
('Planejamento Estrat�gico', 11000.00);

INSERT INTO FORMASPAGAMENTOS (NOME)
VALUES 
    ('Boleto Banc�rio'),
    ('Cart�o de Cr�dito'),
    ('Transfer�ncia Banc�ria'),
    ('Pix'),
    ('Dinheiro'),
    ('Cheque'),
    ('D�bito em Conta'),
    ('PayPal'),
    ('Google Pay'),
    ('Apple Pay');


INSERT INTO DOCUMENTOS (PESSOA, DOCUMENTODIGITADO, DATAENTRADA, DATAEMISSAO, VALORNOMINAL, VALORESBAIXADOS, ENTRADASAIDA, DATAINCLUSAO, USUARIOINCLUIU, CENTROCUSTO, STATUS, USUARIOCONFIRMOU, DATAVENCIMENTO)
        VALUES    
(12, 'NF-e 87367', '2024-01-16', '2023-12-14', 35.64, 36.01, 'S', '2024-01-16', 4, 6, 1, NULL, '2023-12-21'),
(1, 'NF-e 30862', '2024-04-24', '2024-04-22', 42.69, 42.22, 'S', '2024-04-24', 10, 9, 1, NULL, '2024-04-29'),
(17, 'NF-e 15978', '2024-09-21', '2024-08-05', 30.08, 29.429999999999996, 'S', '2024-09-21', 18, 2, 1, NULL, '2024-08-12'),
(15, 'NF-e 15128', '2024-03-08', '2024-01-03', 92.16, 93.52, 'S', '2024-03-08', 15, 14, 1, NULL, '2024-01-10'),
(4, 'NF-e 19419', '2024-01-11', '2023-12-26', 74.73, 77.12, 'S', '2024-01-11', 9, 20, 1, NULL, '2024-01-02'),
(2, 'NF-e 92337', '2024-07-20', '2024-07-13', 78.43, 78.89000000000001, 'S', '2024-07-20', 14, 13, 1, NULL, '2024-07-20'),
(16, 'NF-e 89434', '2024-11-17', '2024-03-02', 63.99, 64.96, 'S', '2024-11-17', 19, 1, 1, NULL, '2024-03-09'),
(11, 'NF-e 61326', '2024-06-23', '2024-04-02', 37.95, 37.56, 'S', '2024-06-23', 17, 11, 1, NULL, '2024-04-09'),
(9, 'NF-e 77254', '2024-02-16', '2024-02-06', 26.46, 27.6, 'E', '2024-02-16', 11, 10, 1, NULL, '2024-02-13'),
(17, 'NF-e 36611', '2024-01-05', '2023-12-14', 70.9, 72.52000000000001, 'S', '2024-01-05', 2, 19, 1, NULL, '2023-12-21'),
(13, 'NF-e 17808', '2024-06-06', '2024-03-04', 39.24, 39.050000000000004, 'E', '2024-06-06', 18, 4, 1, NULL, '2024-03-11'),
(1, 'NF-e 18556', '2024-03-06', '2024-01-19', 99.98, 100.02, 'E', '2024-03-06', 11, 12, 1, NULL, '2024-01-26'),
(17, 'NF-e 63399', '2024-04-15', '2023-12-16', 70.98, 71.88000000000001, 'S', '2024-04-15', 15, 12, 1, NULL, '2023-12-23'),
(10, 'NF-e 66241', '2024-10-23', '2024-02-22', 37.08, 39.15, 'S', '2024-10-23', 8, 12, 1, NULL, '2024-02-29'),
(13, 'NF-e 32214', '2024-09-11', '2024-02-01', 11.6, 11.62, 'E', '2024-09-11', 16, 7, 1, NULL, '2024-02-08'),
(20, 'NF-e 40180', '2024-04-22', '2024-01-23', 69.06, 67.17999999999999, 'S', '2024-04-22', 11, 14, 1, NULL, '2024-01-30'),
(3, 'NF-e 15316', '2024-03-03', '2024-02-13', 31.57, 32.72, 'S', '2024-03-03', 6, 5, 1, NULL, '2024-02-20'),
(14, 'NF-e 21423', '2024-08-22', '2024-03-19', 94.25, 97.19, 'E', '2024-08-22', 10, 15, 1, NULL, '2024-03-26'),
(10, 'NF-e 99893', '2024-07-18', '2024-06-29', 23.14, 23.110000000000003, 'E', '2024-07-18', 6, 1, 1, NULL, '2024-07-06'),
(4, 'NF-e 33254', '2024-09-28', '2024-07-16', 5.81, 5.819999999999999, 'E', '2024-09-28', 4, 1, 1, NULL, '2024-07-23'),
(14, 'NF-e 98241', '2024-11-25', '2024-09-30', 75.98, 78.12, 'S', '2024-11-25', 6, 1, 1, NULL, '2024-10-07'),
(1, 'NF-e 15119', '2023-12-29', '2023-12-18', 9.59, 9.76, 'S', '2023-12-29', 11, 14, 1, NULL, '2023-12-25'),
(16, 'NF-e 48225', '2024-01-18', '2024-01-08', 34.66, 36.15, 'E', '2024-01-18', 20, 10, 1, NULL, '2024-01-15'),
(8, 'NF-e 15527', '2024-06-11', '2024-01-05', 76.47, 75.18, 'E', '2024-06-11', 1, 17, 1, NULL, '2024-01-12'),
(6, 'NF-e 38185', '2024-05-27', '2024-02-21', 12.07, 11.81, 'S', '2024-05-27', 5, 2, 1, NULL, '2024-02-28'),
(14, 'NF-e 56743', '2024-10-29', '2024-03-07', 49.56, 49.46, 'E', '2024-10-29', 13, 17, 1, NULL, '2024-03-14'),
(8, 'NF-e 76654', '2024-09-11', '2024-05-28', 17.14, 17.400000000000002, 'E', '2024-09-11', 15, 8, 1, NULL, '2024-06-04'),
(2, 'NF-e 44908', '2023-12-21', '2023-12-19', 70.03, 71.55000000000001, 'E', '2023-12-21', 7, 13, 1, NULL, '2023-12-26'),
(12, 'NF-e 57436', '2024-11-01', '2024-05-30', 13.56, 13.77, 'S', '2024-11-01', 8, 6, 1, NULL, '2024-06-06'),
(5, 'NF-e 10337', '2024-07-16', '2024-06-15', 35.9, 35.76, 'E', '2024-07-16', 20, 2, 1, NULL, '2024-06-22'),
(1, 'NF-e 52781', '2024-04-07', '2024-03-05', 7.39, 7.1, 'S', '2024-04-07', 14, 8, 1, NULL, '2024-03-12'),
(19, 'NF-e 20729', '2024-09-08', '2023-12-25', 47.81, 50.379999999999995, 'S', '2024-09-08', 10, 8, 1, NULL, '2024-01-01'),
(20, 'NF-e 41086', '2024-10-07', '2023-12-16', 81.32, 81.03, 'E', '2024-10-07', 16, 12, 1, NULL, '2023-12-23'),
(4, 'NF-e 89052', '2024-01-13', '2023-12-19', 95.71, 99.71, 'S', '2024-01-13', 18, 1, 1, NULL, '2023-12-26'),
(9, 'NF-e 11548', '2023-12-23', '2023-12-21', 21.35, 21.27, 'E', '2023-12-23', 15, 18, 1, NULL, '2023-12-28'),
(11, 'NF-e 17046', '2024-01-28', '2023-12-20', 72.92, 74.25, 'E', '2024-01-28', 1, 11, 1, NULL, '2023-12-27'),
(6, 'NF-e 28273', '2024-07-19', '2024-07-12', 72.82, 73.95, 'E', '2024-07-19', 4, 18, 1, NULL, '2024-07-19'),
(1, 'NF-e 25460', '2024-11-07', '2024-01-24', 90.28, 91.76, 'S', '2024-11-07', 10, 3, 1, NULL, '2024-01-31'),
(15, 'NF-e 60042', '2024-07-21', '2024-06-22', 81.84, 82.15, 'E', '2024-07-21', 8, 3, 1, NULL, '2024-06-29'),
(3, 'NF-e 52630', '2024-07-12', '2024-01-29', 32.56, 33.48, 'E', '2024-07-12', 4, 18, 1, NULL, '2024-02-05'),
(17, 'NF-e 52532', '2024-04-15', '2024-02-18', 96.85, 100.29999999999998, 'E', '2024-04-15', 17, 16, 1, NULL, '2024-02-25'),
(11, 'NF-e 53174', '2024-05-13', '2024-03-01', 35.85, 36.63, 'E', '2024-05-13', 9, 9, 1, NULL, '2024-03-08'),
(15, 'NF-e 41574', '2024-11-01', '2024-10-05', 30.02, 30.45, 'S', '2024-11-01', 17, 13, 1, NULL, '2024-10-12'),
(10, 'NF-e 14562', '2024-03-31', '2023-12-13', 50.82, 50.540000000000006, 'E', '2024-03-31', 10, 5, 1, NULL, '2023-12-20'),
(16, 'NF-e 32314', '2024-11-27', '2024-03-11', 95.47, 91.84, 'S', '2024-11-27', 13, 2, 1, NULL, '2024-03-18'),
(8, 'NF-e 87461', '2024-01-10', '2023-12-27', 2.33, 2.35, 'E', '2024-01-10', 4, 8, 1, NULL, '2024-01-03'),
(18, 'NF-e 10779', '2024-12-09', '2024-09-20', 52.92, 52.31, 'E', '2024-12-09', 12, 18, 1, NULL, '2024-09-27'),
(12, 'NF-e 81220', '2024-03-13', '2024-02-19', 14.69, 14.82, 'E', '2024-03-13', 10, 8, 1, NULL, '2024-02-26'),
(9, 'NF-e 27375', '2024-11-16', '2024-10-17', 12.03, 12.38, 'S', '2024-11-16', 9, 4, 1, NULL, '2024-10-24'),
(20, 'NF-e 93183', '2024-04-06', '2023-12-21', 12.26, 12.37, 'E', '2024-04-06', 7, 20, 1, NULL, '2023-12-28'),
(4, 'NF-e 68436', '2024-05-24', '2024-02-07', 33.05, 33.53999999999999, 'S', '2024-05-24', 8, 10, 1, NULL, '2024-02-14'),
(12, 'NF-e 39649', '2024-03-18', '2024-01-13', 9.47, 9.330000000000002, 'S', '2024-03-18', 10, 17, 1, NULL, '2024-01-20'),
(11, 'NF-e 58281', '2024-05-03', '2024-01-04', 7.53, 7.61, 'S', '2024-05-03', 18, 6, 1, NULL, '2024-01-11'),
(17, 'NF-e 10517', '2024-09-03', '2024-05-30', 15.87, 16.25, 'S', '2024-09-03', 12, 3, 1, NULL, '2024-06-06'),
(6, 'NF-e 99860', '2024-03-18', '2024-02-04', 81.8, 83.63, 'E', '2024-03-18', 16, 3, 1, NULL, '2024-02-11'),
(18, 'NF-e 96624', '2024-03-28', '2024-03-03', 94.47, 98.05999999999999, 'E', '2024-03-28', 14, 10, 1, NULL, '2024-03-10'),
(17, 'NF-e 98044', '2024-01-04', '2023-12-26', 61.96, 61.629999999999995, 'E', '2024-01-04', 9, 14, 1, NULL, '2024-01-02'),
(4, 'NF-e 50592', '2024-03-29', '2024-02-19', 37.25, 36.99, 'E', '2024-03-29', 20, 6, 1, NULL, '2024-02-26'),
(18, 'NF-e 26345', '2024-06-08', '2024-02-25', 29.18, 29.66, 'E', '2024-06-08', 14, 4, 1, NULL, '2024-03-03'),
(5, 'NF-e 19850', '2024-08-25', '2024-02-01', 29.38, 29.129999999999995, 'E', '2024-08-25', 2, 9, 1, NULL, '2024-02-08'),
(17, 'NF-e 85798', '2024-10-21', '2024-10-13', 34.32, 34.13, 'S', '2024-10-21', 15, 13, 1, NULL, '2024-10-20'),
(18, 'NF-e 51809', '2024-06-21', '2023-12-14', 38.84, 39.47, 'S', '2024-06-21', 7, 15, 1, NULL, '2023-12-21'),
(16, 'NF-e 30744', '2024-04-12', '2024-02-18', 93.46, 97.57, 'E', '2024-04-12', 9, 15, 1, NULL, '2024-02-25'),
(14, 'NF-e 47191', '2024-02-16', '2023-12-24', 33.23, 33.309999999999995, 'E', '2024-02-16', 17, 9, 1, NULL, '2023-12-31'),
(9, 'NF-e 36921', '2024-07-15', '2024-05-15', 82.69, 83.53999999999999, 'E', '2024-07-15', 19, 11, 1, NULL, '2024-05-22'),
(12, 'NF-e 33337', '2024-11-06', '2024-08-25', 20.89, 21.94, 'E', '2024-11-06', 4, 15, 1, NULL, '2024-09-01'),
(18, 'NF-e 28950', '2024-10-17', '2024-04-06', 3.86, 3.7899999999999996, 'E', '2024-10-17', 12, 11, 1, NULL, '2024-04-13'),
(12, 'NF-e 53049', '2024-01-20', '2024-01-19', 29.22, 29.089999999999996, 'S', '2024-01-20', 13, 20, 1, NULL, '2024-01-26'),
(10, 'NF-e 94357', '2024-06-18', '2024-02-07', 82.21, 82.53999999999999, 'E', '2024-06-18', 1, 13, 1, NULL, '2024-02-14'),
(17, 'NF-e 90988', '2024-04-26', '2024-04-20', 11.18, 10.819999999999999, 'E', '2024-04-26', 17, 8, 1, NULL, '2024-04-27'),
(13, 'NF-e 47807', '2024-09-27', '2024-09-22', 73.82, 74.64999999999999, 'E', '2024-09-27', 3, 1, 1, NULL, '2024-09-29'),
(10, 'NF-e 29804', '2024-11-12', '2024-07-07', 44.54, 44.21, 'S', '2024-11-12', 16, 4, 1, NULL, '2024-07-14'),
(4, 'NF-e 45465', '2024-07-27', '2024-04-01', 3.83, 3.7399999999999998, 'E', '2024-07-27', 14, 17, 1, NULL, '2024-04-08'),
(6, 'NF-e 68244', '2024-05-14', '2024-04-16', 77.52, 79.26999999999998, 'S', '2024-05-14', 7, 18, 1, NULL, '2024-04-23'),
(3, 'NF-e 63595', '2024-08-27', '2024-07-09', 35.3, 36.26, 'S', '2024-08-27', 12, 1, 1, NULL, '2024-07-16'),
(6, 'NF-e 58155', '2024-10-23', '2024-02-03', 76.44, 75.45, 'E', '2024-10-23', 19, 20, 1, NULL, '2024-02-10'),
(19, 'NF-e 56333', '2024-10-30', '2024-08-10', 14.64, 15.000000000000002, 'E', '2024-10-30', 3, 14, 1, NULL, '2024-08-17'),
(17, 'NF-e 12478', '2024-08-22', '2023-12-27', 52.62, 54.06999999999999, 'S', '2024-08-22', 11, 1, 1, NULL, '2024-01-03'),
(4, 'NF-e 65613', '2024-07-31', '2024-02-09', 63.09, 62.9, 'E', '2024-07-31', 18, 13, 1, NULL, '2024-02-16'),
(19, 'NF-e 66013', '2024-11-19', '2024-02-24', 19.42, 19.230000000000004, 'S', '2024-11-19', 20, 12, 1, NULL, '2024-03-02'),
(1, 'NF-e 55328', '2024-01-11', '2023-12-24', 51.84, 54.06000000000001, 'E', '2024-01-11', 2, 13, 1, NULL, '2023-12-31'),
(12, 'NF-e 99298', '2024-09-29', '2024-07-27', 51.92, 53.099999999999994, 'S', '2024-09-29', 4, 10, 1, NULL, '2024-08-03'),
(18, 'NF-e 31481', '2024-08-11', '2024-05-13', 77.77, 80.88, 'S', '2024-08-11', 15, 17, 1, NULL, '2024-05-20'),
(2, 'NF-e 99749', '2024-01-07', '2023-12-22', 86.34, 87.91000000000001, 'S', '2024-01-07', 15, 9, 1, NULL, '2023-12-29'),
(5, 'NF-e 78851', '2024-09-13', '2023-12-31', 26.88, 26.75, 'S', '2024-09-13', 11, 4, 1, NULL, '2024-01-07'),
(16, 'NF-e 78960', '2024-03-21', '2024-03-15', 77.95, 76.18, 'E', '2024-03-21', 20, 16, 1, NULL, '2024-03-22'),
(7, 'NF-e 48036', '2024-09-04', '2024-02-28', 24.97, 25.700000000000003, 'E', '2024-09-04', 7, 20, 1, NULL, '2024-03-06'),
(15, 'NF-e 40312', '2023-12-30', '2023-12-25', 88.05, 88.31, 'S', '2023-12-30', 8, 11, 1, NULL, '2024-01-01'),
(14, 'NF-e 65693', '2023-12-12', '2023-12-11', 81.33, 85.30999999999999, 'S', '2023-12-12', 1, 17, 1, NULL, '2023-12-18'),
(5, 'NF-e 12188', '2024-01-25', '2023-12-14', 89.85, 90.88999999999999, 'S', '2024-01-25', 19, 7, 1, NULL, '2023-12-21'),
(11, 'NF-e 89588', '2024-07-13', '2024-06-08', 69.74, 71.61, 'E', '2024-07-13', 8, 15, 1, NULL, '2024-06-15'),
(9, 'NF-e 16628', '2024-01-30', '2023-12-11', 46.91, 46.39999999999999, 'E', '2024-01-30', 18, 15, 1, NULL, '2023-12-18'),
(3, 'NF-e 57715', '2024-02-24', '2024-01-22', 13.39, 13.63, 'S', '2024-02-24', 6, 18, 1, NULL, '2024-01-29'),
(2, 'NF-e 83012', '2024-07-06', '2024-04-08', 70.13, 70.74, 'E', '2024-07-06', 2, 13, 1, NULL, '2024-04-15'),
(2, 'NF-e 61098', '2024-05-03', '2024-02-14', 91.86, 93.38, 'S', '2024-05-03', 10, 8, 1, NULL, '2024-02-21'),
(19, 'NF-e 85457', '2024-12-01', '2023-12-22', 74.21, 74.25, 'S', '2024-12-01', 9, 12, 1, NULL, '2023-12-29'),
(9, 'NF-e 66254', '2024-11-09', '2023-12-28', 84.03, 88.22000000000001, 'S', '2024-11-09', 10, 4, 1, NULL, '2024-01-04'),
(6, 'NF-e 65498', '2024-09-22', '2024-07-07', 84.56, 85.61, 'S', '2024-09-22', 11, 2, 1, NULL, '2024-07-14'),
(2, 'NF-e 68980', '2024-10-12', '2024-06-12', 69.06, 69.01, 'S', '2024-10-12', 1, 5, 1, NULL, '2024-06-19'),
(12, 'NF-e 84252', '2024-05-01', '2024-03-30', 70.59, 69.18, 'E', '2024-05-01', 14, 8, 1, NULL, '2024-04-06'),
(9, 'NF-e 79791', '2024-09-11', '2024-06-07', 25.58, 25.559999999999995, 'E', '2024-09-11', 15, 3, 1, NULL, '2024-06-14'),
(4, 'NF-e 32721', '2024-09-16', '2024-04-09', 21.2, 21.689999999999998, 'S', '2024-09-16', 4, 16, 1, NULL, '2024-04-16'),
(5, 'NF-e 80532', '2024-01-03', '2023-12-27', 66.07, 68.5, 'S', '2024-01-03', 7, 12, 1, NULL, '2024-01-03'),
(17, 'NF-e 11367', '2024-02-05', '2024-01-16', 85.73, 84.55, 'S', '2024-02-05', 13, 8, 1, NULL, '2024-01-23'),
(17, 'NF-e 76163', '2024-08-01', '2024-04-24', 81.58, 81.0, 'E', '2024-08-01', 18, 3, 1, NULL, '2024-05-01'),
(2, 'NF-e 77394', '2024-07-12', '2024-01-14', 98.92, 99.59, 'S', '2024-07-12', 18, 7, 1, NULL, '2024-01-21'),
(9, 'NF-e 86133', '2024-11-23', '2024-11-15', 28.6, 28.03, 'S', '2024-11-23', 9, 8, 1, NULL, '2024-11-22'),
(18, 'NF-e 93503', '2023-12-21', '2023-12-11', 60.45, 62.85, 'E', '2023-12-21', 17, 14, 1, NULL, '2023-12-18'),
(4, 'NF-e 11616', '2024-04-06', '2023-12-24', 17.64, 18.62, 'E', '2024-04-06', 18, 12, 1, NULL, '2023-12-31'),
(17, 'NF-e 91429', '2024-07-23', '2024-02-03', 1.95, 1.96, 'E', '2024-07-23', 11, 17, 1, NULL, '2024-02-10'),
(12, 'NF-e 25804', '2024-01-31', '2024-01-30', 5.74, 5.569999999999999, 'E', '2024-01-31', 5, 8, 1, NULL, '2024-02-06'),
(2, 'NF-e 30816', '2024-04-22', '2024-02-06', 75.92, 75.34, 'E', '2024-04-22', 1, 20, 1, NULL, '2024-02-13'),
(9, 'NF-e 85126', '2024-05-27', '2024-05-24', 3.34, 3.32, 'E', '2024-05-27', 1, 3, 1, NULL, '2024-05-31'),
(3, 'NF-e 76934', '2024-11-26', '2024-07-23', 4.56, 4.499999999999999, 'S', '2024-11-26', 20, 16, 1, NULL, '2024-07-30'),
(4, 'NF-e 30402', '2024-06-16', '2024-01-31', 10.69, 11.139999999999999, 'E', '2024-06-16', 9, 3, 1, NULL, '2024-02-07'),
(2, 'NF-e 98437', '2024-01-08', '2023-12-19', 51.57, 50.36, 'E', '2024-01-08', 14, 12, 1, NULL, '2023-12-26'),
(4, 'NF-e 77614', '2024-03-12', '2024-01-27', 75.05, 77.89999999999999, 'E', '2024-03-12', 18, 17, 1, NULL, '2024-02-03'),
(6, 'NF-e 54250', '2024-02-12', '2024-01-12', 20.93, 21.55, 'S', '2024-02-12', 7, 8, 1, NULL, '2024-01-19'),
(11, 'NF-e 79552', '2024-11-18', '2024-10-15', 78.63, 81.77, 'S', '2024-11-18', 3, 18, 1, NULL, '2024-10-22'),
(9, 'NF-e 77747', '2024-11-25', '2024-07-29', 90.09, 90.54, 'S', '2024-11-25', 18, 19, 1, NULL, '2024-08-05'),
(1, 'NF-e 51024', '2024-04-23', '2024-02-01', 74.1, 74.55999999999999, 'S', '2024-04-23', 19, 4, 1, NULL, '2024-02-08'),
(10, 'NF-e 62454', '2024-03-26', '2024-03-10', 11.5, 11.599999999999998, 'S', '2024-03-26', 19, 14, 1, NULL, '2024-03-17'),
(12, 'NF-e 94248', '2024-12-05', '2024-06-01', 68.04, 66.28, 'S', '2024-12-05', 5, 3, 1, NULL, '2024-06-08'),
(19, 'NF-e 93351', '2024-11-15', '2024-10-05', 53.34, 53.95000000000001, 'S', '2024-11-15', 5, 2, 1, NULL, '2024-10-12'),
(14, 'NF-e 82722', '2024-02-17', '2024-01-02', 84.41, 84.42, 'E', '2024-02-17', 7, 5, 1, NULL, '2024-01-09'),
(14, 'NF-e 17293', '2024-10-07', '2024-01-05', 58.22, 57.68, 'S', '2024-10-07', 11, 10, 1, NULL, '2024-01-12'),
(19, 'NF-e 20966', '2024-08-24', '2023-12-26', 26.89, 27.34, 'S', '2024-08-24', 1, 9, 1, NULL, '2024-01-02'),
(5, 'NF-e 65174', '2024-07-17', '2024-02-11', 74.94, 73.6, 'S', '2024-07-17', 17, 8, 1, NULL, '2024-02-18'),
(14, 'NF-e 22297', '2024-03-09', '2023-12-27', 98.87, 99.24000000000001, 'S', '2024-03-09', 7, 12, 1, NULL, '2024-01-03'),
(4, 'NF-e 70405', '2024-10-07', '2024-01-16', 61.46, 62.31, 'E', '2024-10-07', 3, 15, 1, NULL, '2024-01-23'),
(15, 'NF-e 35459', '2024-08-14', '2024-07-27', 51.22, 52.11, 'E', '2024-08-14', 13, 2, 1, NULL, '2024-08-03'),
(14, 'NF-e 92910', '2023-12-11', '2023-12-11', 92.15, 95.26, 'S', '2023-12-11', 14, 16, 1, NULL, '2023-12-18'),
(18, 'NF-e 38615', '2024-09-01', '2024-06-09', 32.84, 33.39, 'E', '2024-09-01', 16, 11, 1, NULL, '2024-06-16'),
(12, 'NF-e 61133', '2023-12-12', '2023-12-11', 47.27, 46.35, 'S', '2023-12-12', 14, 8, 1, NULL, '2023-12-18'),
(20, 'NF-e 25983', '2023-12-13', '2023-12-11', 23.94, 23.400000000000002, 'S', '2023-12-13', 11, 12, 1, NULL, '2023-12-18'),
(10, 'NF-e 37191', '2024-09-25', '2024-01-16', 46.9, 48.879999999999995, 'S', '2024-09-25', 14, 10, 1, NULL, '2024-01-23'),
(5, 'NF-e 37500', '2024-01-28', '2024-01-06', 3.14, 3.1500000000000004, 'S', '2024-01-28', 17, 9, 1, NULL, '2024-01-13'),
(12, 'NF-e 79736', '2024-05-07', '2023-12-28', 95.05, 98.41, 'E', '2024-05-07', 13, 3, 1, NULL, '2024-01-04'),
(3, 'NF-e 12707', '2024-03-29', '2024-02-06', 71.82, 72.36999999999999, 'S', '2024-03-29', 4, 1, 1, NULL, '2024-02-13'),
(8, 'NF-e 59101', '2024-04-14', '2024-03-13', 58.07, 57.730000000000004, 'S', '2024-04-14', 16, 3, 1, NULL, '2024-03-20'),
(5, 'NF-e 35580', '2024-01-24', '2023-12-13', 4.58, 4.71, 'E', '2024-01-24', 15, 3, 1, NULL, '2023-12-20'),
(9, 'NF-e 23635', '2024-03-21', '2024-01-02', 42.94, 45.019999999999996, 'E', '2024-03-21', 20, 4, 1, NULL, '2024-01-09'),
(9, 'NF-e 60570', '2024-03-13', '2024-01-01', 62.13, 63.84, 'E', '2024-03-13', 8, 1, 1, NULL, '2024-01-08'),
(5, 'NF-e 88886', '2024-10-22', '2023-12-21', 99.38, 100.45, 'E', '2024-10-22', 5, 11, 1, NULL, '2023-12-28'),
(20, 'NF-e 36076', '2024-01-22', '2024-01-01', 87.06, 89.56, 'S', '2024-01-22', 13, 10, 1, NULL, '2024-01-08'),
(19, 'NF-e 53657', '2024-05-22', '2024-05-11', 92.46, 97.88, 'S', '2024-05-22', 6, 3, 1, NULL, '2024-05-18'),
(14, 'NF-e 51804', '2024-08-25', '2024-06-17', 75.01, 75.59000000000002, 'S', '2024-08-25', 16, 2, 1, NULL, '2024-06-24'),
(6, 'NF-e 87213', '2024-03-31', '2024-02-17', 64.12, 64.82000000000001, 'S', '2024-03-31', 9, 19, 1, NULL, '2024-02-24'),
(16, 'NF-e 95418', '2024-07-04', '2024-02-29', 93.9, 96.32000000000001, 'S', '2024-07-04', 6, 9, 1, NULL, '2024-03-07'),
(17, 'NF-e 45604', '2024-01-24', '2024-01-10', 35.07, 34.169999999999995, 'E', '2024-01-24', 5, 20, 1, NULL, '2024-01-17');

INSERT INTO LANCAMENTOS (DATALANCAMENTO, VALORMULTA, DESCONTO, NATUREZA, VALOR, VALORJUROS, DOCUMENTO, BANCOCONTAINTERNA, BANCOCONTAPESSOA, FORMAPAGAMENTO, USUARIOINCLUIU)
        VALUES    
('2024-11-01', 1.69, 1.72, 'D', 35.64, 0.4, 1, 7, 16, 2, 19),
('2024-08-04', 0.2, 1.15, 'D', 42.69, 0.48, 2, 7, 9, 2, 10),
('2024-11-08', 0.41, 1.44, 'R', 30.08, 0.38, 3, 10, 5, 10, 5),
('2024-07-07', 3.03, 3.0, 'D', 92.16, 1.33, 4, 10, 9, 6, 14),
('2024-10-26', 2.56, 0.53, 'R', 74.73, 0.36, 5, 4, 15, 8, 16),
('2024-12-02', 0.01, 0.06, 'D', 78.43, 0.51, 6, 7, 12, 5, 19),
('2024-06-16', 2.57, 2.84, 'D', 63.99, 1.24, 7, 4, 20, 1, 15),
('2024-07-10', 0.36, 0.78, 'R', 37.95, 0.03, 8, 4, 2, 1, 1),
('2024-05-07', 1.18, 0.13, 'R', 26.46, 0.09, 9, 7, 17, 2, 12),
('2024-05-18', 3.09, 2.83, 'R', 70.9, 1.36, 10, 10, 9, 4, 18),
('2024-09-09', 0.8, 1.58, 'D', 39.24, 0.59, 11, 7, 17, 7, 11),
('2024-05-06', 4.63, 4.8, 'D', 99.98, 0.21, 12, 1, 12, 4, 16),
('2024-05-01', 3.16, 2.77, 'D', 70.98, 0.51, 13, 13, 5, 3, 8),
('2024-04-07', 1.52, 0.11, 'R', 37.08, 0.66, 14, 13, 8, 4, 14),
('2024-08-23', 0.18, 0.23, 'D', 11.6, 0.07, 15, 1, 16, 7, 17),
('2024-07-22', 1.21, 3.42, 'D', 69.06, 0.33, 16, 7, 15, 8, 13),
('2024-02-11', 0.59, 0.02, 'D', 31.57, 0.58, 17, 4, 17, 5, 2),
('2024-05-29', 2.45, 0.03, 'R', 94.25, 0.52, 18, 7, 12, 1, 5),
('2024-08-14', 0.91, 1.04, 'D', 23.14, 0.1, 19, 1, 11, 10, 11),
('2024-10-27', 0.17, 0.2, 'R', 5.81, 0.04, 20, 10, 5, 1, 16),
('2024-02-15', 2.22, 1.11, 'D', 75.98, 1.03, 21, 10, 20, 9, 2),
('2024-10-07', 0.36, 0.25, 'D', 9.59, 0.06, 22, 4, 20, 4, 9),
('2024-11-27', 1.67, 0.42, 'D', 34.66, 0.24, 23, 4, 12, 3, 19),
('2024-06-02', 1.31, 3.78, 'R', 76.47, 1.18, 24, 13, 9, 1, 4),
('2024-05-26', 0.19, 0.52, 'R', 12.07, 0.07, 25, 10, 16, 10, 15),
('2024-02-14', 0.25, 0.65, 'D', 49.56, 0.3, 26, 1, 20, 8, 1),
('2024-03-01', 0.43, 0.47, 'R', 17.14, 0.3, 27, 1, 11, 7, 14),
('2024-03-30', 1.64, 0.57, 'D', 70.03, 0.45, 28, 7, 17, 5, 4),
('2024-05-08', 0.57, 0.63, 'D', 13.56, 0.27, 29, 13, 2, 5, 18),
('2024-06-15', 1.14, 1.36, 'D', 35.9, 0.08, 30, 10, 12, 7, 20),
('2024-10-30', 0.0, 0.29, 'D', 7.39, 0.0, 31, 7, 9, 7, 16),
('2024-08-28', 2.33, 0.31, 'R', 47.81, 0.55, 32, 13, 12, 2, 17),
('2024-08-31', 0.04, 1.35, 'R', 81.32, 1.02, 33, 1, 15, 10, 14),
('2024-10-06', 3.3, 0.95, 'D', 95.71, 1.65, 34, 7, 14, 1, 11),
('2024-08-12', 0.75, 0.85, 'D', 21.35, 0.02, 35, 13, 9, 3, 20),
('2024-09-17', 2.31, 1.05, 'R', 72.92, 0.07, 36, 1, 5, 6, 18),
('2024-02-10', 2.2, 1.27, 'D', 72.82, 0.2, 37, 13, 6, 4, 4),
('2024-04-12', 1.56, 1.58, 'R', 90.28, 1.5, 38, 7, 19, 4, 4),
('2024-10-05', 2.2, 3.26, 'D', 81.84, 1.37, 39, 1, 3, 7, 6),
('2024-06-18', 0.79, 0.49, 'R', 32.56, 0.62, 40, 13, 8, 3, 2),
('2024-03-03', 4.13, 2.23, 'D', 96.85, 1.55, 41, 7, 20, 6, 5),
('2024-09-27', 0.89, 0.54, 'R', 35.85, 0.43, 42, 7, 5, 8, 13),
('2024-03-17', 0.9, 0.83, 'D', 30.02, 0.36, 43, 1, 8, 10, 5),
('2024-02-21', 1.43, 1.91, 'D', 50.82, 0.2, 44, 13, 6, 5, 6),
('2024-01-03', 0.55, 4.33, 'R', 95.47, 0.15, 45, 1, 5, 5, 17),
('2024-01-31', 0.05, 0.07, 'D', 2.33, 0.04, 46, 4, 15, 4, 14),
('2024-08-16', 1.06, 2.22, 'D', 52.92, 0.55, 47, 7, 17, 10, 12),
('2024-02-18', 0.49, 0.53, 'R', 14.69, 0.17, 48, 1, 12, 7, 19),
('2024-07-04', 0.17, 0.03, 'D', 12.03, 0.21, 49, 7, 2, 7, 14),
('2024-11-27', 0.49, 0.58, 'D', 12.26, 0.2, 50, 1, 20, 5, 6),
('2024-04-16', 1.26, 1.09, 'D', 33.05, 0.32, 51, 1, 17, 1, 12),
('2024-05-06', 0.13, 0.4, 'D', 9.47, 0.13, 52, 10, 17, 10, 17),
('2024-01-29', 0.2, 0.23, 'R', 7.53, 0.11, 53, 4, 2, 7, 14),
('2024-11-06', 0.42, 0.21, 'D', 15.87, 0.17, 54, 7, 3, 3, 19),
('2024-01-13', 3.87, 3.67, 'R', 81.8, 1.63, 55, 1, 16, 10, 14),
('2024-04-27', 3.46, 0.31, 'D', 94.47, 0.44, 56, 13, 15, 7, 20),
('2024-01-04', 0.3, 0.78, 'D', 61.96, 0.15, 57, 4, 11, 8, 9),
('2024-11-20', 0.32, 1.15, 'D', 37.25, 0.57, 58, 4, 14, 5, 15),
('2024-04-08', 0.47, 0.06, 'D', 29.18, 0.07, 59, 13, 2, 8, 15),
('2024-03-31', 0.38, 0.94, 'D', 29.38, 0.31, 60, 10, 18, 6, 12),
('2024-10-14', 0.95, 1.71, 'D', 34.32, 0.57, 61, 1, 12, 5, 10),
('2024-01-20', 1.0, 0.42, 'R', 38.84, 0.05, 62, 1, 6, 4, 6),
('2024-12-03', 3.2, 0.62, 'D', 93.46, 1.53, 63, 13, 2, 3, 17),
('2024-05-20', 0.4, 0.71, 'D', 33.23, 0.39, 64, 4, 17, 7, 17),
('2024-01-19', 2.35, 2.51, 'D', 82.69, 1.01, 65, 10, 15, 5, 15),
('2024-02-10', 0.84, 0.06, 'D', 20.89, 0.27, 66, 1, 17, 4, 17),
('2024-01-16', 0.06, 0.16, 'D', 3.86, 0.03, 67, 4, 17, 5, 7),
('2024-09-18', 0.81, 1.19, 'D', 29.22, 0.25, 68, 4, 6, 9, 17),
('2024-10-17', 1.58, 2.18, 'R', 82.21, 0.93, 69, 1, 11, 5, 6),
('2024-06-18', 0.04, 0.55, 'R', 11.18, 0.15, 70, 10, 16, 9, 14),
('2024-07-06', 2.06, 2.56, 'D', 73.82, 1.33, 71, 1, 19, 8, 8),
('2024-05-30', 0.31, 1.12, 'D', 44.54, 0.48, 72, 1, 11, 4, 7),
('2024-05-21', 0.03, 0.14, 'D', 3.83, 0.02, 73, 1, 17, 6, 5),
('2024-04-12', 1.07, 0.26, 'R', 77.52, 0.94, 74, 4, 18, 3, 15),
('2024-08-29', 0.5, 0.07, 'D', 35.3, 0.53, 75, 13, 8, 4, 8),
('2024-07-31', 2.11, 3.25, 'R', 76.44, 0.15, 76, 1, 15, 4, 1),
('2024-06-10', 0.72, 0.44, 'R', 14.64, 0.08, 77, 7, 2, 5, 12),
('2024-03-28', 1.24, 0.77, 'R', 52.62, 0.98, 78, 10, 11, 10, 5),
('2024-04-08', 2.02, 2.39, 'R', 63.09, 0.18, 79, 7, 2, 8, 6),
('2024-06-05', 0.42, 0.66, 'R', 19.42, 0.05, 80, 10, 11, 1, 4),
('2024-08-11', 2.32, 0.69, 'D', 51.84, 0.59, 81, 4, 5, 7, 12),
('2024-01-28', 2.19, 1.49, 'D', 51.92, 0.48, 82, 10, 9, 4, 19),
('2024-04-10', 2.75, 0.06, 'D', 77.77, 0.42, 83, 13, 17, 3, 9),
('2024-03-27', 0.92, 0.35, 'R', 86.34, 1.0, 84, 13, 3, 3, 9),
('2024-02-14', 0.9, 1.17, 'D', 26.88, 0.14, 85, 4, 15, 6, 1),
('2024-03-31', 0.79, 2.9, 'D', 77.95, 0.34, 86, 13, 11, 5, 12),
('2024-02-09', 0.71, 0.15, 'R', 24.97, 0.17, 87, 1, 9, 5, 19),
('2024-05-30', 1.92, 3.02, 'R', 88.05, 1.36, 88, 10, 16, 2, 18),
('2024-11-08', 3.02, 0.03, 'R', 81.33, 0.99, 89, 13, 8, 6, 14),
('2024-03-07', 2.13, 1.36, 'D', 89.85, 0.27, 90, 10, 16, 7, 11),
('2024-02-01', 2.73, 0.92, 'D', 69.74, 0.06, 91, 10, 11, 8, 15),
('2024-04-05', 0.55, 1.59, 'R', 46.91, 0.53, 92, 1, 9, 3, 17),
('2024-05-10', 0.24, 0.25, 'R', 13.39, 0.25, 93, 13, 17, 2, 16),
('2024-09-03', 1.74, 1.72, 'D', 70.13, 0.59, 94, 7, 5, 2, 1),
('2024-01-12', 1.66, 0.3, 'D', 91.86, 0.16, 95, 4, 2, 2, 13),
('2024-05-12', 1.93, 2.2, 'D', 74.21, 0.31, 96, 13, 8, 9, 16),
('2024-12-09', 4.15, 0.3, 'D', 84.03, 0.34, 97, 1, 20, 5, 13),
('2024-10-12', 2.41, 2.7, 'D', 84.56, 1.34, 98, 1, 19, 6, 9),
('2024-11-28', 2.22, 3.33, 'D', 69.06, 1.06, 99, 10, 8, 2, 3),
('2024-10-28', 0.18, 2.42, 'R', 70.59, 0.83, 100, 10, 2, 7, 2),
('2024-09-11', 0.49, 0.96, 'D', 25.58, 0.45, 101, 13, 19, 10, 5),
('2024-02-04', 0.52, 0.18, 'D', 21.2, 0.15, 102, 13, 2, 8, 17),
('2024-03-19', 3.17, 1.41, 'D', 66.07, 0.67, 103, 13, 20, 2, 8),
('2024-09-16', 0.63, 3.16, 'D', 85.73, 1.35, 104, 13, 14, 4, 13),
('2024-06-24', 0.21, 0.99, 'R', 81.58, 0.2, 105, 7, 5, 1, 4),
('2024-02-13', 4.91, 4.36, 'R', 98.92, 0.12, 106, 10, 19, 1, 19),
('2024-03-10', 0.65, 1.36, 'D', 28.6, 0.14, 107, 7, 3, 8, 5),
('2024-09-29', 2.54, 0.43, 'D', 60.45, 0.29, 108, 4, 5, 9, 17),
('2024-05-25', 0.82, 0.18, 'R', 17.64, 0.34, 109, 1, 17, 2, 11),
('2024-01-13', 0.02, 0.02, 'R', 1.95, 0.01, 110, 1, 9, 3, 6),
('2024-10-13', 0.04, 0.27, 'D', 5.74, 0.06, 111, 4, 17, 3, 2),
('2024-08-26', 0.08, 1.14, 'R', 75.92, 0.48, 112, 13, 9, 9, 5),
('2024-06-30', 0.1, 0.12, 'R', 3.34, 0.0, 113, 10, 11, 5, 8),
('2024-01-09', 0.02, 0.12, 'D', 4.56, 0.04, 114, 7, 12, 8, 20),
('2024-06-01', 0.32, 0.06, 'R', 10.69, 0.19, 115, 10, 6, 2, 18),
('2024-06-24', 1.07, 2.44, 'R', 51.57, 0.16, 116, 13, 2, 6, 14),
('2024-08-02', 2.49, 0.46, 'R', 75.05, 0.82, 117, 10, 18, 6, 19),
('2024-01-18', 0.64, 0.09, 'R', 20.93, 0.07, 118, 1, 2, 6, 10),
('2024-04-06', 2.71, 0.91, 'D', 78.63, 1.34, 119, 4, 12, 3, 1),
('2024-02-26', 3.62, 4.42, 'D', 90.09, 1.25, 120, 4, 5, 10, 2),
('2024-05-26', 1.32, 1.95, 'R', 74.1, 1.09, 121, 1, 15, 6, 16),
('2024-09-11', 0.12, 0.21, 'D', 11.5, 0.19, 122, 4, 16, 2, 11),
('2024-08-03', 0.36, 3.36, 'D', 68.04, 1.24, 123, 7, 12, 10, 5),
('2024-10-26', 1.13, 0.97, 'D', 53.34, 0.45, 124, 7, 19, 9, 17),
('2024-08-28', 2.7, 2.92, 'R', 84.41, 0.23, 125, 1, 17, 2, 15),
('2024-10-30', 0.79, 2.01, 'R', 58.22, 0.68, 126, 7, 14, 9, 15),
('2024-06-28', 0.83, 0.64, 'R', 26.89, 0.26, 127, 13, 3, 6, 19),
('2024-02-28', 2.01, 3.62, 'R', 74.94, 0.27, 128, 13, 5, 1, 8),
('2024-05-25', 4.16, 4.6, 'D', 98.87, 0.81, 129, 1, 15, 6, 11),
('2024-03-22', 2.74, 1.95, 'R', 61.46, 0.06, 130, 1, 14, 9, 7),
('2024-02-07', 0.57, 0.58, 'R', 51.22, 0.9, 131, 10, 15, 2, 6),
('2024-12-09', 3.39, 1.55, 'R', 92.15, 1.27, 132, 7, 20, 5, 4),
('2024-05-03', 0.41, 0.19, 'D', 32.84, 0.33, 133, 13, 20, 7, 17),
('2024-09-06', 0.2, 1.24, 'R', 47.27, 0.12, 134, 4, 11, 2, 13),
('2024-05-26', 0.48, 1.05, 'D', 23.94, 0.03, 135, 10, 5, 1, 9),
('2024-05-27', 1.86, 0.74, 'D', 46.9, 0.86, 136, 1, 15, 2, 10),
('2024-05-13', 0.12, 0.13, 'R', 3.14, 0.02, 137, 4, 17, 4, 2),
('2024-04-29', 3.92, 1.63, 'D', 95.05, 1.07, 138, 13, 19, 7, 7),
('2024-08-10', 0.63, 0.75, 'R', 71.82, 0.67, 139, 1, 3, 1, 13),
('2024-03-01', 0.49, 1.53, 'R', 58.07, 0.7, 140, 1, 2, 3, 10),
('2024-11-22', 0.16, 0.12, 'D', 4.58, 0.09, 141, 1, 9, 6, 16),
('2024-04-22', 2.05, 0.24, 'R', 42.94, 0.27, 142, 10, 17, 2, 19),
('2024-04-20', 1.64, 0.65, 'R', 62.13, 0.72, 143, 13, 14, 5, 5),
('2024-08-23', 1.45, 1.25, 'R', 99.38, 0.87, 144, 4, 18, 9, 19),
('2024-04-11', 2.71, 1.02, 'D', 87.06, 0.81, 145, 1, 16, 6, 12),
('2024-08-06', 4.36, 0.62, 'D', 92.46, 1.68, 146, 13, 9, 7, 3),
('2024-07-05', 0.12, 0.96, 'D', 75.01, 1.42, 147, 4, 2, 1, 12),
('2024-03-03', 1.97, 1.32, 'D', 64.12, 0.05, 148, 13, 3, 9, 20),
('2024-11-07', 3.13, 2.05, 'R', 93.9, 1.34, 149, 7, 12, 4, 2),
('2024-07-07', 0.48, 1.46, 'R', 35.07, 0.08, 150, 4, 18, 1, 5);











