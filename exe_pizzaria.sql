CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE  tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
tipo varchar(255) not null,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao, tipo)
values ("salgado", "vegano");
INSERT INTO tb_categorias(descricao, tipo)
values ("doce", "vegano");
INSERT INTO tb_categorias(descricao, tipo)
values ("doce", "comum");
INSERT INTO tb_categorias(descricao, tipo)
values ("salgado", "comum");
INSERT INTO tb_categorias(descricao, tipo)
values ("broto", "vegano");
INSERT INTO tb_categorias(descricao, tipo)
values ("broto", "comum");

CREATE TABLE  tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal(6, 2),
quantidade int, 
borda varchar(255) not null,
entrega varchar (255) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas; 

INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Chocolate branco com uva", 39.90, 1, "s/borda", "delivery", 3);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Mussarela com calabresa", 47.90, 1, "s/borda", "retirada", 4);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Marguerita", 92.50, 2, "borda catupiry", "retirada", 4);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Brócolis", 50.00, 1, "s/borda", "delivery", 1);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Banana com canela", 57.00, 1, "s/borda", "delivery", 2);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Frango c/ catupiry", 79.90, 2, "borda cheddar", "delivery", 4);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Chocolate com canela", 42.50, 1, "s/borda", "delivery", 6);
INSERT INTO tb_pizzas(sabor, preco, quantidade, borda, entrega, categoria_id)
values ("Tofu", 72.00, 1, "s/borda", "delivery", 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "doce"
