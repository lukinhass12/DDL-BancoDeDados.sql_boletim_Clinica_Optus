/*
		DDL - Data Definition Language
*/

-- Criar o banco
Create DATABASE boletim;
GO
--Usar efetivamente o banco
USE boletim;
GO
--Apagamos uma base de dados
-- DROP DATABASE boletim;

/* Criamos a tabela aluno */
CREATE TABLE Aluno (
	IdAluno INT PRIMARY KEY IDENTItY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);
GO
--Apagamos uma tabela caso necess�rio
--DROP TABLE Aluno;

/*Criamos uma tabela a mat�ria */
CREATE TABLE Materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR(50),
);
GO 

CREATE TABLE Trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	-- Colocamos as chaves estrangeiras (FK)
	IdMateria INT FOREIGN KEY REFERENCES Materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES Aluno(IdAluno)
);
GO

--Apagamos uma tabela caso necess�rio
--DROP TABLE Aluno;
--DROP TABLE Materia;
--DROP TABLE Trabalho;

--Alterar a estrutura da tabela Trabalho, incluindo uma nova coluna
ALTER TABLE Trabalho ADD DataEntrega DATETIME;

--Alteramos e exclu�mos uma coluna de teste
--ALTER TABLE Trabalho ADD Teste INT;
--ALTER TABLE Trabalho DROP COLUMN Teste;