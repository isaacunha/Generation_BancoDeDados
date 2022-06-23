
CREATE DATABASE db_ecommercegeneration;

-- indica o banco de dados a ser utilizado/manipulado
USE db_ecommercegeneration;

CREATE TABLE tb_produtos(
	
    
    id BIGINT auto_increment, -- maneira de referenciar primary key 
    produto VARCHAR(255),
	preco DECIMAL(9,2),
    quantidade INT,
	setor VARCHAR(255),
    
    -- segunda forma de referenciar primary key
    PRIMARY KEY (id)
);

-- traz todos os dados da tabela de funcionarios;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE salario > 2000.00;
SELECT * FROM tb_produtos WHERE salario < 2000.00;

INSERT INTO tb_produtos(produto, preco, quantidade, setor) VALUES("Rimel", 100 , 6, "olhos");
INSERT INTO tb_produtos(produto, preco, quantidade, setor) VALUES("Paleta de sombra", 560 , 2, "olhos");
INSERT INTO tb_produtos(produto, preco, quantidade, setor) VALUES("Batom", 520 , 3, "boca");
INSERT INTO tb_produtos(produto, preco, quantidade, setor) VALUES("Base", 600 , 10, "pele");
INSERT INTO tb_produtos(produto, preco, quantidade, setor) VALUES("blush", 300 , 5, "pele");

UPDATE tb_produtos
SET quantidade = 12
WHERE id = 3;


