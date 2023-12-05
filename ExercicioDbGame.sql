CREATE DATABASE db_generation_game_online; --

-- Selecionar o Banco de Dados db_quitanda --
USE db_generation_game_online;

-- Criar a tabela classes
CREATE TABLE tb_classes (
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe, descricao) 
VALUES 
  ("Piromante", "Vantagem sobre Aeromante"),
  ("Aquomante", "Vantagem sobre piromante"),
  ("Aeromante", "Vantagem sobre Aquomante"),
  ("Lumomante", "Vantagem sobre Necromante"),
  ("Necromante", "Vantagem sobre Lumomante");

-- Lista todos os dados da tabela independente
SELECT * FROM tb_classes;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
ataque BIGINT NOT NULL,
defesa BIGINT NOT NULL,
classes_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

-- Insere dados na tabela tb_personagem
INSERT INTO tb_personagem (nome, ataque, defesa, classes_id)
VALUES
  ("Gandalf", 1200, 8000, 4),
  ("Luna", 9000, 6000, 1),
  ("Drakon", 1100, 7000, 2),
  ("Sylvia", 1000, 7500, 3),
  ("Thorn", 9500, 8500, 5),
  ("Aria", 8500, 6500, 1),
  ("Helios", 1050, 7500, 3),
  ("Zephyr", 1150, 9000, 2);

-- Visualiza todos os dados da tabela dependente
SELECT * FROM tb_personagem;

-- Seleciona personagens com ataque maior/menor que 2000
SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE ataque < 2000;

-- Seleciona personagens com defesa entre 1000 e 2000
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

-- Seleciona personagens que possuem C no nome
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

-- Unindo as duas tabelas com INNER JOIN 
SELECT nome, ataque,defesa, tb_classes.classe 
FROM tb_personagem 
INNER JOIN tb_classes ON tb_personagem.classes_id = tb_classes.id;

-- Unindo as tabelas com INNER JOIN e exibindo somente uma classe
SELECT nome, ataque,defesa, tb_classes.classe 
FROM tb_personagem 
INNER JOIN tb_classes ON tb_personagem.classes_id = tb_classes.id
WHERE tb_classes.classe = "Piromante";