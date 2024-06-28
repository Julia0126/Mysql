CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (100) NOT NULL,
descricao VARCHAR (100) NOT NULL
);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Salgada","Sabores mais diferenciados");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Doce","Sabores para adoçar o paladar");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Vegetariana","Opções sem nenhum tipo de carne");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Especial","Combinações à gosto do chef");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Tradicional","Sabores clássicos");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR (100) NOT NULL,
ingredientes VARCHAR (100) NOT NULL,
preco DECIMAL (10,2),
tamanho VARCHAR (100) NOT NULL,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

-- Pizzas Salgadas
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Pepperoni com cebola", "Pepperoni, cebola, queijo, molho de tomate", 60.00, "Grande", 1);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("CalaBacon", "Calabresa, queijo, molho de tomate e bacon", 30.00, "Média", 1);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Atum", "Atum, queijo, molho de tomate e cebola", 28.00, "Grande", 1);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Margherita", "Mussarela, tomate, manjericão", 30.00, "Média", 1);

-- Pizzas Doces
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Brigadeiro", "Chocolate, morangos, granulado", 60.00, "Grande", 2);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Doce de leite", "Doce de leite e amendoin triturado", 55.00, "Média", 2);

-- Pizza Vegetarianas
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ('Vegetariana especial', 'Mussarela, tomate, pimentão, cebola', 30.00, "Pequena", 3);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Quatro Queijos", "Mussarela, provolone, gorgonzola, parmesão", 65.00, "Grande", 3);

-- Pizza Especial
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Pizza Especial do Chef", "Ingredientes exclusivos do chef", 50.00, "Média", 4);

-- Pizza Tradicional
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES ("Pizza Portuguesa", "Presunto, ovos, cebola, ervilhas", 27.00, "Grande", 5);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, categoriaid) VALUES("Pizza de Pepperoni", "Pepperoni, queijo, molho de tomate", 60.00, "Grande", 5);

-- Consultas
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

SELECT tb_pizzas.id, tb_pizzas.sabor, tb_pizzas.ingredientes, tb_pizzas.preco, tb_pizzas.tamanho,
       tb_categorias.id AS categoria_id, tb_categorias.tipo AS categoria_tipo, tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.id, tb_pizzas.sabor, tb_pizzas.ingredientes, tb_pizzas.preco, tb_pizzas.tamanho,
       tb_categorias.id AS categoria_id, tb_categorias.tipo AS categoria_tipo, tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';