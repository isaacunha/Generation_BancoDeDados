CREATE DATABASE db_escolageneration;

-- indica o banco de dados a ser utilizado/manipulado
USE db_escolageneration;

CREATE TABLE tb_estudantes(
	
    
    id BIGINT auto_increment, -- maneira de referenciar primary key 
    nome VARCHAR(255),
    curso VARCHAR(255),
    disciplina VARCHAR(255),
	nota DECIMAL(9,2),
    
    
    -- segunda forma de referenciar primary key
    PRIMARY KEY (id)
);

-- traz todos os dados da tabela de funcionarios;
SELECT * FROM tb_estudantes;


INSERT INTO tb_estudantes(nome, curso, disciplina, nota) VALUES("Cintia", "Engenharia" , "Calculo 1", 6);
INSERT INTO tb_estudantes(nome, curso, disciplina, nota) VALUES("Roberto", "Engenharia" , "Calculo 1", 5);
INSERT INTO tb_estudantes(nome, curso, disciplina, nota) VALUES("Felipe", "Administracao" , "Economia", 9);
INSERT INTO tb_estudantes(nome, curso, disciplina, nota) VALUES("Isabella", "Engenharia" , "Fisica 2", 3);
INSERT INTO tb_estudantes(nome, curso, disciplina, nota) VALUES("Sara", "direito" , "direito penal", 8);
INSERT INTO tb_estudantes(nome, curso, disciplina, nota) VALUES("Marcia", "Geografia" , "Ecologia", 9.6);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes
SET nota = 4.9
WHERE id = 4;


