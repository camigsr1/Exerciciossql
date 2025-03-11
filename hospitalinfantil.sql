-- Criando banco de dados 
CREATE DATABASE hospitalinfantil;

--criando tabela criança
CREATE TABLE crianca(
ID INT PRIMARY KEY,
 nome VARCHAR(50) NOT NULL,
 peso DECIMAL(5,2),
 altura FLOAT,
 datanascimento DATE NOT NULL
);

--Criando tabela Mãe
CREATE TABLE mae(
ID INT PRIMARY KEY,
datanascimento DATE NOT NULL,
nome VARCHAR(50) NOT NULL,
endereco VARCHAR(100) NOT NULL,
telefone VARCHAR(15) NOT NULL
);

--Criando tabela Nascimento
CREATE TABLE nascimento(
ID  INT PRIMARY KEY,
medico VARCHAR(50) NOT NULL,
IDcrianca INT,
IDmae INT
);

--Criando tabela Médico
CREATE TABLE medico(
ID INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
especialidade VARCHAR(50) NOT NULL,
CRM INT
);

--Inserindo comentarios na tabela Médico
INSERT INTO medico(ID, nome, especialidade, CRM)
VALUES ("11245", "Juliana Alves Albuquerque", "Obstretícia", "123584"),
("11246", "Pedro da Silvs Santos", "Nutrologia Pediátrica", "658985"),
("11546", "Vinicius Lima de Oliveira", "Neonatologista", "458755"),
( "11468", "Bruna Paes Chavez", "Obstretícia" "246585" );

--Deletando especialidade Neonatologia
DELETE FROM medico WHERE especialidade = "Neonatologia";

--Deletando todos os dados 
DELETE FROM  medico; 

--Deletando todas as tabelas 
DROP TABLE medico;
DROP TABLE nascimento;
DROP TABLE mae;
DROP TABLE crianca;

--Apagando Banco de Dados 
DROP DATABASE hospitalinfantil;
