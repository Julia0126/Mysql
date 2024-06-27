CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
vida INT NOT NULL,
mana INT NOT NULL,
classe VARCHAR (100) NOT NULL
);

INSERT INTO tb_classe (vida,mana,classe) VALUES (2000, 4000, "mago");
INSERT INTO tb_classe (vida,mana,classe) VALUES (5000, 950, "suporte");
INSERT INTO tb_classe (vida,mana,classe) VALUES (2500, 1500, "assassino");
INSERT INTO tb_classe (vida,mana,classe) VALUES (3500, 2000, "guerreiro");
INSERT INTO tb_classe (vida,mana,classe) VALUES (2300, 1800, "caçador");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
poder VARCHAR (100),
ataque INT,
defesa INT,
classeid BIGINT,
FOREIGN KEY (classeid) REFERENCES tb_classe (id)
);

SELECT * FROM tb_personagem;
DROP TABLE tb_personagem;

INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Zeus","mágico",1200, 800,1);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Ymir","mágico",800, 2000,2);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Daji","físico",1800, 750,3);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Belona","físico",1000, 1300,4);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Neith","físico",1700, 800,6);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Discordia","mágico",1200, 800,1);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Tyr","físico",1000, 1300,4);
INSERT INTO tb_personagem (nome,poder,ataque,defesa,classeid) VALUES ("Scyla","mágico",1200, 800,1);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 1200;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE '%C%';

SELECT tb_personagem.id, tb_personagem.nome, tb_personagem.poder, tb_personagem.ataque, tb_personagem.defesa, tb_classe.vida, tb_classe.mana, tb_classe.classe
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classeid = tb_classe.id;

SELECT tb_personagem.id, tb_personagem.nome, tb_personagem.poder, tb_personagem.ataque, tb_personagem.defesa, tb_classe.vida, tb_classe.mana, tb_classe.classe
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classeid = tb_classe.id
WHERE tb_classe.classe = 'caçador';