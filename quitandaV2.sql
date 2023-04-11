-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");
INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");
INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");
INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");
INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");
INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

SHOW FULL COLUMNS FROM tb_produtos;

-- Ordena o que for pedido
SELECT * FROM tb_produtos ORDER BY nome;

SELECT * FROM tb_produtos ORDER BY nome, preco DESC;

SELECT * FROM tb_produtos WHERE NOT categoria_id = 1;

SELECT * FROM tb_produtos WHERE preco IN (5, 1.50, 15);

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

-- traz o item que comece com "ra"
SELECT * FROM tb_produtos WHERE nome LIKE "ra%";
-- traz o item que tenha "ra" no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";
-- traz o item que termine com "ra"
SELECT * FROM tb_produtos WHERE nome LIKE "%ra";

-- contar as linhas
SELECT COUNT(*) FROM tb_produtos;
-- contar as linhas da "categoria_id"
SELECT COUNT(categoria_id) FROM tb_produtos;

-- somar os valores
SELECT SUM(preco) AS Soma_Preço FROM tb_produtos;
-- calcula a média 
SELECT AVG(preco) AS Média_Preço FROM tb_produtos;
-- agrupa o calculo a partir do atributo "categoria"(apenas para colunas)
SELECT categoria_id, AVG(preco) AS Média_Preço FROM tb_produtos GROUP BY categoria_id;

SELECT categoria_id, AVG(preco) AS Média_Preço FROM tb_produtos GROUP BY categoria_id ORDER BY Média_Preço;

-- mostrar o valor maximo
SELECT MAX(preco) FROM tb_produtos;
-- mostrar o valor minimo
SELECT MIN(preco) FROM tb_produtos;

-- inner join traz apenas os produtos que possuem uma categoria 
-- associada
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- left join traz a intersecçao e os produtos que não tem nenhuma 
-- categoria associada
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- right join traz todos os produtos que tem uma categoria
-- associada e a categoria outros que nao tem relaçao com nenhum produto
SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;


