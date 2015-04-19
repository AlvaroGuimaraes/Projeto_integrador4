-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Funcion�rio (
Nome nvarchar(50),
Endere�o nvarchar(50),
Email nvarchar(50),
CPF_Funcion�rio int PRIMARY KEY,
Telefone int
)

CREATE TABLE Ordem_Servi�o (
N�mero_OS int PRIMARY KEY,
Data_In�co date,
Data_Conclus�o date,
Modelo_equipamento nvarchar(50),
Marca_equipamento nvarchar(50),
Descri��o_Servi�o nvarchar(1000),
Valor Numeric(8,2),
CPF_Cliente int,
CPF_Funcion�rio int,
Armazenamento_Fotos image,
FOREIGN KEY(CPF_Funcion�rio) REFERENCES Funcion�rio (CPF_Funcion�rio)
)

CREATE TABLE Cliente (
Email nvarchar(50),
Nome nvarchar(50),
Endere�o nvarchar(50),
CPF_Cliente int PRIMARY KEY,
Telefone int
)

CREATE TABLE Administrador (
Login nvarchar(50),
Senha int PRIMARY KEY
)

ALTER TABLE Ordem_Servi�o ADD FOREIGN KEY(CPF_Cliente) REFERENCES Cliente (CPF_Cliente)
