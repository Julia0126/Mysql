CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produto(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    tipo VARCHAR(255)
);

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("Libre",130, "2025-08-15", 700.00, "perfume");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("Light & Blue",500, "2025-07-05", 900.99, "perfume");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("Pó facial Laura Mercier",90, "2025-07-05", 300.70, "maquiagem");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("Shampoo Truss",550, "2024-08-15", 100.00, "cabelo");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("lenço facial",270, "2025-08-15", 15.00, "pele");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("escova tangle",130, "2999-09-11", 85.00, "cabelo");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("base dior",200, "2024-06-15", 350.00, "maquiagem");

INSERT INTO tb_produto(nome, quantidade, datavalidade, preco, tipo) 
VALUES ("Prada Candy",100, "2025-04-18", 780.00, "perfume");

ALTER TABLE tb_produto MODIFY preco DECIMAL(6,2);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco >500;

SELECT * FROM tb_produto WHERE preco <500;

UPDATE tb_produto SET preco = 199 WHERE Id = 1;