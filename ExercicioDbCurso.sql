CREATE DATABASE db_curso_da_minha_vida; 
USE db_curso_da_minha_vida;

-- Criar a tabela independente categorias e inserir elementos
CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (categoria, descricao) 
VALUES 
  ("Ciencias humanas", "Cursos que abrangem as ciencias humanas"),
  ("Ciencias exatas", "Cursos que abrangem as ciencias exatas"),
  ("Tecnologia", "Cursos dentro da area de Tecnologia"),
  ("Linguas", "Cursos de idiomas");

-- Lista todos os dados da tabela independente
SELECT * FROM tb_categorias;

-- Criar a Tabela dependente tb_cursos e inserir elementos
CREATE TABLE tb_cursos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
descricao Varchar(255) NOT NULL,
inicio DATE NOT NULL,
valor DECIMAL(6,2) NOT NULL,
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, descricao, inicio, valor, categorias_id)
VALUES
  ("História Antiga", "Exploração das civilizações antigas", "2023-03-01", 500.00, 1),
  ("Álgebra Avançada", "Aprofundamento em conceitos algébricos", "2023-02-15", 800.00, 2),
  ("Desenvolvimento Web", "Construção de aplicações web modernas", "2023-04-10", 1000.00, 3),
  ("Inglês Intermediário", "Curso de inglês para nível intermediário", "2023-01-20", 600.00, 4),
  ("Filosofia Contemporânea", "Abordagem de temas filosóficos atuais", "2023-03-05", 700.00, 1),
  ("Estatística Aplicada", "Aplicações práticas de estatística", "2023-02-01", 900.00, 2),
  ("Desenvolvimento Mobile", "Criação de aplicativos para dispositivos móveis", "2023-04-15", 1100.00, 3),
  ("Espanhol Básico", "Curso introdutório de espanhol", "2023-01-10", 400.00, 4);


-- Visualiza todos os dados da tabela dependente
SELECT * FROM tb_cursos;

-- Seleciona cursos com valor maior/menor que 500
SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor < 500;

-- Seleciona cursos com valores entre 600 e 1000
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

-- Seleciona cursos que possuem j no nome
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

-- Unindo as duas tabelas com INNER JOIN 
SELECT tb_cursos.nome, tb_cursos.descricao, tb_cursos.inicio, tb_cursos.valor, tb_categorias.categoria 
FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id;

-- Selecionar cursos da categoria "Tecnologia"
SELECT tb_cursos.nome, tb_cursos.descricao, tb_cursos.inicio, tb_cursos.valor, tb_categorias.categoria 
FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id
WHERE tb_categorias.categoria = "Tecnologia";