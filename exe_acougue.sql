CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE  tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tipo, descricao)
values ("vermelha", "sem osso");
INSERT INTO tb_categorias(tipo, descricao)
values ("vermelha", "com osso");
INSERT INTO tb_categorias(tipo, descricao)
values ("branca", "sem osso");
INSERT INTO tb_categorias(tipo, descricao)
values ("branca", "com osso");
INSERT INTO tb_categorias(tipo, descricao)
values ("peixe", "sem osso");
INSERT INTO tb_categorias(tipo, descricao)
values ("peixe", "com osso");

CREATE TABLE  tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6, 2),
quantidade int, 
tipo varchar(255) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Patinho", 35.90, "500 gramas", "bife", 1); 
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Filé Sassami", 23.90, "700gramas", "bife", 3);
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Costela", 52.90, "2kg", "inteira", 2);
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Peito de frango", 56.70, "2.5kg", "inteiro", 4);
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Tilápia", 72.90, "1.5kg", "bife", 6);
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Salmão", 130.00, "3kg", "inteiro", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Linguiça Toscana", 15.00, "500gramas", "inteira", 1);
INSERT INTO tb_produtos(nome, preco, quantidade, tipo, categoria_id)
values("Filé de frango", 23.90, "500gramas", "bife", 3);


ALTER TABLE tb_produtos MODIFY quantidade varchar(255) not null;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "vermelha"

