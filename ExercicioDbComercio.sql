CREATE DATABASE db_comercio;

USE db_comercio;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
tipo VARCHAR(50) NOT NULL,
descricao VARCHAR(255) NOT NULL,
valor DECIMAL NOT NULL,
dataPostagem DATE,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, tipo, descricao, valor, dataPostagem) 
VALUES 
  ("Tenis", "vestuario", "Tenis confortável para todas as ocasiões", 700, "2020-12-15"),
  ("Bola de futebol", "esporte", "Bola oficial para partidas de futebol", 250, "2019-10-13"),
  ("Barraca", "Utensilios", "Barraca resistente para camping", 1200, "2019-09-07"),
  ("Blusa corta vento", "vestuario", "Blusa corta vento ideal para dias frios", 650, "2019-12-02"),
  ("Chuteira", "vestuario", "Chuteira de alta qualidade para prática esportiva", 300, "2019-09-05"),
  ("Mochila", "vestuario", "Mochila espaçosa para suas aventuras", 100, "2019-10-04"),
  ("Lanterna", "utensilio", "Lanterna portátil para iluminação em ambientes escuros", 70, "2019-04-03"),
  ("Oculos de sol", "vestuario", "Óculos de sol estilosos para proteção contra raios UV", 650, "2019-10-12");


SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

SELECT * FROM tb_produtos;
