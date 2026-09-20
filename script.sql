-- ==========================================
-- 1. CRIAÇÃO DAS TABELAS (DDL)
-- ==========================================

CREATE TABLE CLIENTE (
    id_client INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    endereco VARCHAR(200)
);

CREATE TABLE PRODUTO (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    descricao TEXT
);

CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    id_client INT NOT NULL,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    CONSTRAINT fk_cliente FOREIGN KEY (id_client) REFERENCES CLIENTE(id_client)
);

CREATE TABLE ITENS_PEDIDO (
    id_item INT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
);

-- ==========================================
-- 2. INSERÇÃO DE DADOS (DML)
-- ==========================================

INSERT INTO CLIENTE (id_client, nome, cpf, endereco) VALUES 
(1, 'Carlos Silva', '123.456.789-00', 'Rua das Flores, 123'),
(2, 'Ana Souza', '987.654.321-11', 'Av. Central, 456');

INSERT INTO PRODUTO (id_produto, nome_produto, preco_unitario, descricao) VALUES 
(1, 'Óleo de Motor 5W30', 50.00, 'Óleo sintético para motor'),
(2, 'Filtro de Óleo', 30.00, 'Filtro para linha leve'),
(3, 'Pastilha de Freio', 120.00, 'Jogo de pastilhas dianteiras');

INSERT INTO PEDIDO (id_pedido, id_client, status) VALUES 
(1, 1, 'Em Andamento');

INSERT INTO ITENS_PEDIDO (id_item, id_pedido, id_produto, quantidade, subtotal) VALUES 
(1, 1, 1, 4, 200.00),
(2, 1, 2, 1, 30.00);

-- ==========================================
-- 3. CONSULTAS COM JOIN (DML)
-- ==========================================

SELECT 
    p.id_pedido,
    c.nome AS nome_cliente,
    p.status,
    p.data_pedido
FROM PEDIDO p
JOIN CLIENTE c ON p.id_client = c.id_client;

