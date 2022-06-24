CREATE DATABASE db_generation_game_online;

-- indica o banco de dados a ser utilizado/manipulado
USE db_generation_game_online;

-- a criação da tabela de setor precisa vir primeiro do que a tabela de funcionarios
CREATE TABLE tb_classes(
	id BIGINT auto_increment,
    classe VARCHAR(255),
    mundo VARCHAR(255),
    PRIMARY KEY(id)
);

-- criação da tabela de funcionarios
CREATE TABLE tb_personagens(
	
	id BIGINT auto_increment,
    nome VARCHAR(255),
    cor VARCHAR(255),
    casa INT,
    idade INT,
    
    fk_classes_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY (fk_classes_id) REFERENCES tb_classes(id)
);

-- tras todos os dados da tabela de funcionarios
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(classe, mundo)VALUES("Protecao","morangos");
INSERT INTO tb_classes(classe, mundo)VALUES("Plantar","morangos");
INSERT INTO tb_classes(classe, mundo)VALUES("Protecao","uvas");
INSERT INTO tb_classes(classe, mundo)VALUES("Plantar","uvas");
INSERT INTO tb_classes(classe, mundo)VALUES("Protecao","mangas");
INSERT INTO tb_classes(classe, mundo)VALUES("Plantar","mangas");

INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Alice","roxa",1,20,1);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Pati","laranja",1,17,2);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Laura","rosa",2,6,3);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Sophie","laranja",3,5,5);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Florzinha","roxa",1,15,5);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Lindinha","amarela",1,32,2);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Docinho","rosa",1,55,4);
INSERT INTO tb_personagens(nome, cor, casa, idade, fk_classes_id)VALUES("Rosinha","vermelha",2,18,3);

DELETE FROM tb_personagens WHERE id = 8;

SELECT * FROM tb_personagens WHERE casa = 2;
SELECT * FROM tb_personagens WHERE cor = "roxa";
SELECT * FROM tb_personagens WHERE idade > 10 && idade < 30;

-- nomes que contem a letra a
SELECT * FROM tb_personagens WHERE nome LIKE '%a%';

-- nomes que começam com a letra L
SELECT * FROM tb_personagens WHERE nome LIKE 'L%';

-- terminam com a letra a
SELECT * FROM tb_personagens WHERE nome LIKE '%a';

-- trazer os nomes dos personagens que vivem no mundo das uvas
SELECT tb_personagens.nome, tb_classes.mundo 
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.fk_classes_id 
WHERE mundo = "uvas";

