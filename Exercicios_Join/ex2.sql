CREATE DATABASE db_pizzaria_legal;

-- indica o banco de dados a ser utilizado/manipulado
USE db_pizzaria_legal;

-- a criação da tabela de setor precisa vir primeiro do que a tabela de funcionarios
CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    borda VARCHAR(10),
    doce_salgada VARCHAR(20),
    PRIMARY KEY(id)
);

-- criação da tabela de funcionarios
CREATE TABLE tb_pizzas(
	
	id BIGINT auto_increment,
    sabor VARCHAR(255),
    tamanho VARCHAR(30),
    preco DECIMAL(9,2),
	forma VARCHAR(30),
    
    fk_categorias_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY (fk_categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias(borda, doce_salgada)VALUES("sim","doce");
INSERT INTO tb_categorias(borda, doce_salgada)VALUES("sim","salgada");
INSERT INTO tb_categorias(borda, doce_salgada)VALUES("nao","salgada");
INSERT INTO tb_categorias(borda, doce_salgada)VALUES("nao","doce");

INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("frango","pequena", 53.30, "redonda", 2);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("calabresa","grande", 26.70, "redonda",2);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("marguerita","media", 70.30, "quadrada",3);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("frango","grande", 20.90, "redonda",3);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("portuguesa","grande", 50.30, "redonda",3);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("lombo","pequena", 90.30, "quadrada",2);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("calabresa","grande", 66.30, "redonda",3);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("morango","media", 120.30, "redonda",1);
INSERT INTO tb_pizzas(sabor, tamanho, preco, forma, fk_categorias_id)VALUES("chocolate","grande", 130.50, "quadrada",4);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco > 50.00 && preco < 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da 
-- tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.fk_categorias_id 
WHERE doce_salgada = "doce";

