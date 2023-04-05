-- Cria estrutura Livraria

-- Deleta as tabelas
DROP TABLE livro;
DROP TABLE assunto;
DROP TABLE editora;

-- Cria tabelas

CREATE TABLE editora (
  codigo  NUMBER,
  nome    VARCHAR2(80) NOT NULL,
  CONSTRAINT pk_editora PRIMARY KEY(codigo)
);

CREATE TABLE assunto (
  codigo  NUMBER,
  nome    VARCHAR2(100) NOT NULL,
  CONSTRAINT pk_assunto PRIMARY KEY(codigo)
);

CREATE TABLE livro (
  codigo          NUMBER,
  nome            VARCHAR2(100) NOT NULL,
  preco           NUMBER,
  data_lancamento DATE,
  cod_editora     NUMBER,
  cod_assunto     NUMBER,
  CONSTRAINT pk_livro   PRIMARY KEY(codigo),
  CONSTRAINT fk_editora FOREIGN KEY (cod_editora) REFERENCES editora(codigo),
  CONSTRAINT fk_assunto FOREIGN KEY (cod_assunto) REFERENCES assunto(codigo)
);

DESCRIBE assunto;
DESCRIBE editora;
DESCRIBE livro;

-- Insere registros

-- Editora
INSERT INTO editora(codigo, nome) VALUES (1, 'MIRANDELA EDITORA');
INSERT INTO editora(codigo, nome) VALUES (2, 'EDITORA NORTE');
INSERT INTO editora(codigo, nome) VALUES (3, 'ABC EDITORA');
INSERT INTO editora(codigo, nome) VALUES (4, 'EDITORA PORTO ALEGRE');

SELECT * FROM editora;

-- Assunto
INSERT INTO assunto(codigo, nome) VALUES (1, 'BANCO DE DADOS');
INSERT INTO assunto(codigo, nome) VALUES (2, 'PROGRAMACAO');
INSERT INTO assunto(codigo, nome) VALUES (3, 'REDES');
INSERT INTO assunto(codigo, nome) VALUES (4, 'SISTEMAS OPERACIONAIS');

SELECT * FROM assunto;

-- Livro
SELECT * FROM livro;

INSERT INTO livro(codigo, nome, preco, data_lancamento, cod_editora, cod_assunto) 
VALUES (1, 'BANCO DE DADOS PARA WEB', TO_NUMBER(29.90),TO_DATE('01/12/2009','DD/MM/YYYY'), 1, 1);
INSERT INTO livro(codigo, nome, preco, data_lancamento, cod_editora, cod_assunto) 
VALUES (2, 'PROGRAMANDO EM LINGUAGEM JAVA', TO_NUMBER(45.50),TO_DATE('27/12/2010','DD/MM/YYYY'), 3, 2);
INSERT INTO livro(codigo, nome, preco, data_lancamento, cod_editora, cod_assunto) 
VALUES (3, 'PROGRAMANDO EM C++', TO_NUMBER(70.22),TO_DATE(NULL), 4, 2);
INSERT INTO livro(codigo, nome, preco, data_lancamento, cod_editora, cod_assunto) 
VALUES (4, 'BANCO DE DADOS PARA BIOINFORMATICA', TO_NUMBER(140.00),TO_DATE('12/12/2012','DD/MM/YYYY'), 3, 1);
INSERT INTO livro(codigo, nome, preco, data_lancamento, cod_editora, cod_assunto) 
VALUES (5, 'REDES DE COMPUTADORES', TO_NUMBER(89.90),TO_DATE('27/05/2008','DD/MM/YYYY'), 2, 2);

