CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE  tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
recomendacao varchar(255) not null,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tipo, recomendacao)
values ("cosmetico", "adulto");
INSERT INTO tb_categorias(tipo, recomendacao)
values ("cosmetico", "infantil");
INSERT INTO tb_categorias(tipo, recomendacao)
values ("medicamento", "adulto");
INSERT INTO tb_categorias(tipo, recomendacao)
values ("medicamento", "pediatrico");
INSERT INTO tb_categorias(tipo, recomendacao)
values ("medicamento", "uso geral");

CREATE TABLE  tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6, 2),
quantidade int, 
indicacao varchar(255) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Dramin", 22.90, 1, "Enjoo, nausea", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Dipirona", 3.99, 1, "Dores em geral", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Neotoss", 15.00, 1, "Anti-Inflamatório", 4);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Anticoncepcional", 80.00, 2, "Contraceptivo", 3);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Esomeprazol", 91.00, 1, "Doenças ácido-pépticas", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Batom", 8.00, 1, "Maquiagem", 2);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Delineador", 15.00, 1, "Maquiagem", 1);
INSERT INTO tb_produtos(nome, preco, quantidade, indicacao, categoria_id)
values ("Chapinha", 215.00, 1, "Cabelo", 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;


SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "medicamento"