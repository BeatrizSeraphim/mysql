CREATE DATABASE db_estudantes;

USE db_estudantes;

CREATE TABLE tb_dados(
	id bigint auto_increment,
    nome varchar(255) not null,
    serie  varchar(255) not null,
    nota decimal not null,
    idade int,
    periodo varchar(255) not null,
    primary key(id)
    );
    
SELECT * FROM tb_dados;
         
INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Marcos", "2EM", 8.00, "17", "manhã");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Giselle", "2EM", 6.00, "17", "manhã");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Maria", "3EM", 5.00, "18", "noite");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Gustavo", "1EM", 9.00, "16", "tarde");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Sabrina", "3EM", 10.00, "18", "noite");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Arthur", "2EM", 4.00, "17", "tarde");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Beatriz", "3EM", 10.00, "18", "manhã");
 INSERT INTO tb_dados(nome, serie, nota, idade, periodo)
values ("Vinicius", "1EM", 3.00, "16", "tarde");

SELECT * FROM tb_dados WHERE nota > 7.00;

SELECT * FROM tb_dados WHERE nota < 7.00;

ALTER TABLE tb_dados MODIFY nota decimal(6,2);

UPDATE tb_dados SET periodo = "noite" WHERE id = 6;
