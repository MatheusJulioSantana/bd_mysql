CREATE DATABASE db_quitanda;
-- ^ Criar base de dados

USE db_quitanda;
-- ^ Navegar na db

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);
-- ^ Criar uma tabela  (caracteristicas do objeto)
 
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Tomate", 100, "2023-12-15", 8.00),
("Maçã", 20, "2023-12-15", 5.00),
("Laranja", 50, "2023-12-15", 10.00),
("Banana", 200, "2023-12-15", 12.00),
("Uva", 1200, "2023-12-15", 30.00),
("Pêra", 500, "2023-12-15", 2.99);
-- ^ Inserção dos dados na tabela 

SELECT * FROM tb_produtos;
-- ^ Exibir tabela 

SELECT nome FROM tb_produtos;
-- ^ Trocando o * por nome ele exibe o conteudo da de nome.

SELECT nome, preco FROM tb_produtos;
-- ^ Agora exibe nome e preço

SELECT * FROM tb_produtos WHERE id = 1;
-- ^ Exibe * (tudo) da tabela onde o id é 1

SELECT * FROM tb_produtos WHERE preco > 5.00;
-- ^ Where agora com valores relacionais, pra exibir produtos com valores maior que 5

SELECT * FROM tb_produtos WHERE Id = 6;
-- ^ preço é exibido como 3, onde deveria ser 99! por conta da estrutura da tabela

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);
-- ^ Alter table altera a estrutura da tabela
-- - reorganizou o decimal para 6 numeros antes da virgula e 2 depois, pra nao permitir o arredondamento que aconteceu a cima 

SELECT * FROM tb_produtos;
-- ^ Exibindo a tabela pra confirmar alterações, o valor aparece 3,00 ao inves de 2,99.

UPDATE tb_produtos SET preco = 2.99 WHERE Id = 6;
-- ^ atualizar tabela, setar o preço pra 2,99 onde o id é 6; Assim atualizamos o preço para o correto

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);
-- ^ alterar tabela, adicionar  caracretistica descrição que cabe 255 caracteres; criando a caracteristica descrição

UPDATE tb_produtos SET descricao = 'Tomate Italiano' WHERE Id = 1;
UPDATE tb_produtos SET descricao = 'Maçã Verde' WHERE Id = 2;
UPDATE tb_produtos SET descricao = 'Laranja Lima' WHERE Id = 3;
UPDATE tb_produtos SET descricao = 'Banana Prata' WHERE Id = 4;
UPDATE tb_produtos SET descricao = 'Uva Italiana' WHERE Id = 5;
UPDATE tb_produtos SET descricao = 'Pêra Williams' WHERE Id = 6;
-- ^ atualizações manuais adicioando a descrição 

UPDATE tb_produtos SET preco = 5.00;
-- ^ O mySQL protege esse tipo de alteração que afetaria toda a coluna preço da tabela
-- - Não é recomendavel fazer esse tipo de alteração 

SET SQL_SAFE_UPDATES = 0;
-- ^ Comando que autoriza esse tipo de modificação

SET SQL_SAFE_UPDATES = 1;
-- ^ Comando que reativa a proteção de alteração 

ALTER TABLE tb_produtos DROP descricao;
-- ^  Altera tabela e dropa a aba descricao

DELETE FROM tb_produtos WHERE Id = 2;
-- ^ Na tabela deleta as informações onde o id é 2
-- - Não podera adicionar um novo item ao id removido, cada id é unico mesmo se excluido

ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 
-- ^ Altera a tabela mudando o nome para nomeproduto;