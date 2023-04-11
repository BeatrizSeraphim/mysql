CREATE DATABASE db_cosmetico;

USE db_cosmetico;

CREATE TABLE db_cosmetico(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int, 
    valor decimal not null,
    recomendacao varchar(255) not null,
    cor varchar(255) not null,
    primary key(id)
    );
    
SELECT * FROM db_cosmetico;
    
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Batom", "2", 25.00, "boca", "vermelho");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Rímel", "50", 14.00, "olhos", "preto");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Sombra", "30", 16.00, "olhos", "marrom");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Cilios postiços", "100", 10.00, "olhos", "preto");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Hidratante corporal", "63", 17.00, "corpo", "s/cor");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Pomada", "20", 10.00, "cabelo", "s/cor");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Chapinha", "3", 650.00, "cabelo", "rosa");
INSERT INTO db_cosmetico(nome, quantidade, valor, recomendacao, cor)
values ("Aquecedor de cera", "2", 700.00, "pele", "branco");

SELECT * FROM db_cosmetico WHERE valor > 500.00;

SELECT * FROM db_cosmetico WHERE valor < 500.00;

ALTER TABLE db_cosmetico MODIFY valor decimal(6,2);

UPDATE db_cosmetico SET cor = "nude" WHERE id = 2;
