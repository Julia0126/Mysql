CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    aniversario DATE,
    funcao VARCHAR(255),
	salario DECIMAL NOT NULL
);

INSERT INTO tb_funcionarios(nome, idade, aniversario, funcao, salario) 
VALUES ("Paula",30, "1994-06-15", "recepcionista", 1.900);
INSERT INTO tb_funcionarios(nome, idade, aniversario, funcao, salario) 
VALUES ("José",40, "1984-03-20", "segurança", 2.000);
INSERT INTO tb_funcionarios(nome, idade, aniversario, funcao, salario) 
VALUES ("Enzo",20, "2004-02-07", "estagiário", 1.300);
INSERT INTO tb_funcionarios(nome, idade, aniversario, funcao, salario) 
VALUES ("Roberta",31, "1993-10-15", "gerente", 2.900);
INSERT INTO tb_funcionarios(nome, idade, aniversario, funcao, salario) 
VALUES ("Claudia",51, "1973-12-15", "diretora geral", 15.900);

SELECT *FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario >2.000;

SELECT * FROM tb_funcionarios WHERE salario <2.000;

SELECT * FROM tb_funcionarios WHERE salario <=2.000;

ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(6,3);

UPDATE tb_funcionarios SET salario = 1.299 WHERE Id = 4;