CREATE DATABASE SPMedicalGroup;

USE SPMedicalGroup;

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	TituloTipo VARCHAR (255)
	);

CREATE TABLE Especialidade (
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	TituloEsp VARCHAR (255)
	);

CREATE TABLE Situacao (
	IdSituacao INT PRIMARY KEY IDENTITY,
	TituloSituacao VARCHAR (255)
	);

CREATE TABLE Endereco (
	IdEndereco INT PRIMARY KEY IDENTITY,
	Logradouro VARCHAR(255),
	Numero INT,
	Bairro VARCHAR(255),
	Cidade VARCHAR(255),
	Estado VARCHAR(255),
	CEP VARCHAR(255)
	);

CREATE TABLE Clinica (
	IdClinica INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR(255),
	RazaoSocial VARCHAR(255),
	CNPJ VARCHAR(255),
	HorarioFuncionamento VARCHAR(255),
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
	);

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(255),
	CPF VARCHAR(255),
	Email VARCHAR(255),
	Senha VARCHAR(255),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica)
	);

CREATE TABLE Paciente (
	IdPaciente INT PRIMARY KEY IDENTITY,
	RG VARCHAR(255),
	DataNascimento DATE,
	Telefone VARCHAR(255),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdEndereco INT FOREIGN KEY REFERENCES Endereco(IdEndereco)
	);

CREATE TABLE Medico (
	IdMedico INT PRIMARY KEY IDENTITY,
	CRM VARCHAR(255),
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
	);

CREATE TABLE Consulta (
	IdConsulta INT PRIMARY KEY IDENTITY,
	DataConsulta DATETIME,
	Descricao VARCHAR(255),
	IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
	IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico),
	IdSituacao INT FOREIGN KEY REFERENCES Situacao(IdSituacao)
	);