CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    nota DECIMAL NOT NULL,
    periodo VARCHAR(255)
);

INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Juliana", 15, "manhã", 7.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Renan", 14, "manhã", 9.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Alice", 14, "tarde", 5.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Joao", 15, "manhã", 3.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Fabiana", 15, "manhã", 10.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Thiago", 15, "tarde", 8.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Maria", 14, "tarde", 10.0);
INSERT INTO tb_alunos (nome, idade, periodo, nota)
VALUES ("Debora", 15, "tarde", 7.0);

SELECT * FROM tb_alunos WHERE nota >7;
SELECT * FROM tb_alunos WHERE nota <7;

UPDATE tb_alunos SET nota = 5.0 WHERE Id = 6;