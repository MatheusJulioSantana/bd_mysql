CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
serie VARCHAR(3) NOT NULL,
idade INTEGER NOT NULL,
nota DECIMAL NOT NULL,
dataProva DATE,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, serie, idade, nota, dataProva) 
VALUES 
  ("Rodrigo Rodrigues", "8B", 16, 7, "2020-12-15"),
  ("Marcos Souza", "7A", 14, 6, "2020-11-15"),
  ("Camila Lima", "9B", 15, 8, "2021-01-08"),
  ("Lucas Pereira", "8C", 16, 7, "2020-12-05"),
  ("Fernanda Santos", "10A", 17, 9, "2021-02-10"),
  ("Carlos Oliveira", "7C", 14, 6, "2020-11-28"),
  ("Ana Silva", "9A", 15, 8, "2021-01-20"),
  ("Claudia Claudires", "8C", 16, "2019-10-12");

--filtros 
SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE valor < 500;

-- atualizações
UPDATE tb_alunos SET nota = 7 WHERE Id = 2;
ALTER TABLE tb_alunos MODIFY nota DECIMAL(6,2);