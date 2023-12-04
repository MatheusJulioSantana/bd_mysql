CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
admicao DATE,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, admicao) 
VALUES ("Luis Augusto ", "Dev jr", 3000.00, "2020-12-15"),
("Marcelo Brito ", "Dev pleno ", 6000.00, "2018-09-12"),
("Laura Mathias ", "Dev senior ", 9000.00, "2019-08-06"),
("Mauro Dias ", "trainee ", 1500.00, "2023-08-10"),
("Roberta Camargo ", " Estagiario ", 1700.00, "2022-07-06");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

ALTER TABLE tb_colaboradores CHANGE admicao admissao DATE;

SELECT * FROM tb_colaboradores;

