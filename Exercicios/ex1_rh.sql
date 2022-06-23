
CREATE DATABASE db_rhgeneration;

-- indica o banco de dados a ser utilizado/manipulado
USE db_rhgeneration;

CREATE TABLE tb_funcionarios(
	
    
    id BIGINT auto_increment, -- maneira de referenciar primary key 
    nome VARCHAR(255),
	salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT,
    
    -- segunda forma de referenciar primary key
    PRIMARY KEY (id)
);

-- traz todos os dados da tabela de funcionarios;
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula) VALUES("Isabella", 1500.70, "Tecnologia", 06);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula) VALUES("Livia", 1000.70, "Vendas", 02);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula) VALUES("Iraci", 5090.70, "Vendas", 06);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula) VALUES("Sonia", 3600.70, "Administraçãoa", 01);

UPDATE tb_funcionarios
SET matricula = 4
WHERE id = 4;

DELETE FROM tb_funcionarios WHERE id = 3;



