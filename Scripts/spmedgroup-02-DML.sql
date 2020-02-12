USE SPMedicalGroup;

INSERT INTO TipoUsuario(TituloTipo)
VALUES ('Administrador'),
		('Médico'),
		('Paciente');

INSERT INTO Especialidade(TituloEsp)
VALUES ('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO Situacao(TituloSituacao)
VALUES ('Realizada'),
		('Agendada'),
		('Cancelada');

INSERT INTO Endereco(Logradouro,Numero,Bairro,Cidade,Estado,CEP)
VALUES ('Avenida Barão de Limeira',532,'Campos Eliseos','São Paulo','SP','12345-000'),
		('Rua Estado de Israel',240,'Jardins','São Paulo','SP','04022-000'),
		('Avenida Paulista',1578,'Bela Vista','São Paulo','SP','01310-200'),
		('Avenida Ibirapuera',2927,'Indianópolis','São Paulo','SP','04029-200'),
		('Rua Vitória',120,'Vila São Jorge','São Paulo','SP','06402-030'),
		('Rua Vereador Geraldo de Camargo',66,'Santa Luzia','São Paulo','SP','09405-380'),
		('Alameda dos Arapanés',945,'Indianópolis','São Paulo','SP','04524-001'),
		('Rua São Antonio',232,'Vila Universal','Barueri','SP','06407-140');

INSERT INTO Clinica(NomeFantasia,RazaoSocial,CNPJ,HorarioFuncionamento,IdEndereco)
VALUES ('Clinica Possarle','SP Medical Group','86.400.902/0001-30','08:00 as 19:00',1);

INSERT INTO Usuario(Nome,CPF,Email,Senha,IdTipoUsuario,IdClinica)
VALUES ('Administrador','000000000-00','adm@spmedicalgroup.com.br','adm123',1,1),
		('Ricardo Lemos','234512345-04','ricardo.lemos@spmedicalgroup.com.br','ricardo123',2,1),
		('Roberto Possarle','345624351-44','roberto.possarle@spmedicalgroup.com.br','roberto123',2,1),
		('Helena Strada','456745678-89','helena.souza@spmedicalgroup.com.br','helena123',2,1),
		('Ligia','94839859000','ligia@gmail.com','ligia123',3,1),
		('Alexandre','73556944057','alexandre@gmail.com','alexandre123',3,1),
		('Fernando','16839338002','fernando@gmail.com','fernando123',3,1),
		('Henrique','14332654765','henrique@gmail.com','henrique123',3,1),
		('João','91305348010','joao@hotmail.com','joao123',3,1),
		('Bruno','79799299004','bruno@gmail.com','bruno123',3,1),
		('Mariana','13771913039','mariana@outlook.com','mariana123',3,1);

INSERT INTO Paciente(RG,DataNascimento,Telefone,IdUsuario,IdEndereco)
VALUES ('43522543-5','13/10/1983','11 3456-7654',5,2),
		('32654345-7','23/07/2001','11 98765-6543',6,3),
		('54636525-3','10/10/1978','11 97208-4453',7,4),
		('54366362-5','13/10/1985','11 3456-6543',8,5),
		('t32544444-1','27/08/1975','11 7656-6377',9,6),
		('54566266-7','21/03/1972','11 95436-8769',10,7),
		('54566266-8','05/03/2018','11 98875-1234',11,8);

INSERT INTO Medico(CRM,IdClinica,IdEspecialidade,IdUsuario)
VALUES ('54356-SP',1,2,2),
		('53452-SP',1,17,3),
		('65463-SP',1,16,4);

INSERT INTO Consulta(DataConsulta,Descricao,IdPaciente,IdMedico,IdSituacao)
VALUES ('20/01/2020 15:00','OK',7,3,1),
		('06/01/2020 10:00','OK',2,2,3),
		('07/02/2020 11:00','OK',3,2,1),
		('06/02/2018 10:00','Pequena inflamação',2,2,1),
		('07/02/2019 11:00','OK',4,1,3),
		('08/03/2020 15:00','OK',7,3,2),
		('09/03/2020 11:00','Doença Grave Detectada',4,1,2);