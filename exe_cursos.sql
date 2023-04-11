CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE  tb_categorias(
id bigint auto_increment,
horario varchar(255) not null,
duraçao varchar(255) not null,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(horario, duracao)
values ("noite", "4 anos" );
INSERT INTO tb_categorias(horario, duracao)
values ("manhã", "4 anos");
INSERT INTO tb_categorias(horario, duracao)
values ("noite", "1 ano e meio");
INSERT INTO tb_categorias(horario, duracao)
values ("manha", "1 ano e meio");
INSERT INTO tb_categorias(horario, duracao)
values ("noite", "5 anos");

ALTER TABLE tb_categorias CHANGE duraçao duracao varchar(255);

CREATE TABLE  tb_cursos(
id bigint auto_increment,
tipo varchar(255) not null,
pagamento varchar(255) not null,
quantAulaSemanal varchar(255) not null, 
preco decimal(6, 2),
descricao varchar(255) not null, 
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Graduação", "até dia 7", 4, 620.00, "Administração", 2); 
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Graduação", "até dia 7", 3, 380.00, "Gestão de RH ", 1);
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Graduação", "até dia 10", 4, 1200.00, "Medicina", 5);
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Graduação", "até dia 10", 4, 745.00, "Biomedicina", 2);  
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Tecnólogo", "até dia 7", 4, 400.00, "Administração", 3); 
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Tecnólogo", "até dia 7", 4, 690.00, "Enfermagem", 3); 
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Tecnólogo", "até dia 10", 4, 720.00, "Jardinagem", 4); 
INSERT INTO tb_cursos(tipo, pagamento, quantAulaSemanal, preco, descricao, categoria_id)
values("Tecnólogo", "até dia 7", 4, 800.00, "Mecatronica", 4);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE descricao LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;


SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.horario = "noite"