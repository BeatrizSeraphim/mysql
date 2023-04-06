CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE db_rh(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo  varchar(255) not null,
    salario decimal not null,
    idade int,
    email varchar(255) not null,
    primary key(id)
    );
    
    SELECT * FROM db_rh;
    
INSERT INTO db_rh(nome, cargo, salario, idade, email)
values ("Beatriz", "Dona", 900.000, 21, "beatrizoseraphim@gmail.com");
INSERT INTO db_rh(nome, cargo, salario, idade, email)
values ("Gabriel", "Gerente", 4.000, 22, "gabrielmachadom@gmail.com");
INSERT INTO db_rh(nome, cargo, salario, idade, email)
values ("Daisy", "Supervisora", 3.700, 23, "daisycristina@gmail.com");
INSERT INTO db_rh(nome, cargo, salario, idade, email)
values ("Rafael", "Estagiário", 1.200, 27, "rafaelqueiroz@gmail.com");
INSERT INTO db_rh(nome, cargo, salario, idade, email)
values ("Jamile", "Aprendiz", 1.000, 19, "jamilegen@gmail.com");

SELECT * FROM db_rh WHERE salario < 2000.00;

SELECT * FROM db_rh WHERE salario > 2000.00;

UPDATE db_rh SET salario = 1000.00 WHERE id = 6;