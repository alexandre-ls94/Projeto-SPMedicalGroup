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

INSERT INTO Estado(NomeEstado)
VALUES ('SP');

INSERT INTO Cidade(NomeCidade,IdEstado)
VALUES ('São Paulo', 1),
		('Barueri', 1);

INSERT INTO Bairro(NomeBairro,IdCidade)
VALUES ('Campos Elíseos', 1),
		('Jardins', 1),
		('Bela Vista', 1),
		('Indianópolis', 1),
		('Vila São Jorge', 1),
		('Santa Luzia', 1),
		('Vila Universal', 2);

INSERT INTO Logradouro(NomeLogradouro,IdBairro)
VALUES ('Avenida Barão de Limeira', 1),
		('Rua Estado de Israel', 2),
		('Avenida Paulista', 3),
		('Avenida Ibirapuera', 4),
		('Rua Vitória', 5),
		('Rua Vereador Geraldo de Camargo', 6),
		('Alameda dos Arapanés', 4),
		('Rua São Antonio', 7);

INSERT INTO CEP(NumeroCep,IdLogradouro)
VALUES ('12345-000', 1),
		('04022-000', 2),
		('01310-200', 3),
		('04029-200', 4),
		('06402-030', 5),
		('09405-380', 6),
		('04524-001', 7),
		('06407-140', 8);

INSERT INTO Endereco (Numero, IdCep)
VALUES (532, 1),
		(240, 2),
		(1578, 3),
		(2927, 4),
		(120, 5),
		(66, 6),
		(945, 7),
		(232, 8);

INSERT INTO Clinica(NomeFantasia,RazaoSocial,CNPJ,HorarioFuncionamento,IdEndereco)
VALUES ('Clinica Possarle','SP Medical Group','86.400.902/0001-30','08:00 as 19:00',1);

INSERT INTO Usuario(Email,Senha,IdTipoUsuario,IdClinica)
VALUES ('adm@spmedicalgroup.com.br','adm123',1,1),
		('ricardo.lemos@spmedicalgroup.com.br','ricardo123',2,1),
		('roberto.possarle@spmedicalgroup.com.br','roberto123',2,1),
		('helena.souza@spmedicalgroup.com.br','helena123',2,1),
		('ligia@gmail.com','ligia123',3,1),
		('alexandre@gmail.com','alexandre123',3,1),
		('fernando@gmail.com','fernando123',3,1),
		('henrique@gmail.com','henrique123',3,1),
		('joao@hotmail.com','joao123',3,1),
		('bruno@gmail.com','bruno123',3,1),
		('mariana@outlook.com','mariana123',3,1);

INSERT INTO Paciente(Nome,CPF,RG,DataNascimento,Telefone,IdUsuario,IdEndereco)
VALUES ('Ligia','94839859000','43522543-5','13/10/1983','11 3456-7654',5,2),
		('Alexandre','73556944057','32654345-7','23/07/2001','11 98765-6543',6,3),
		('Fernando','16839338002','54636525-3','10/10/1978','11 97208-4453',7,4),
		('Henrique','14332654765','54366362-5','13/10/1985','11 3456-6543',8,5),
		('João','91305348010','32544444-1','27/08/1975','11 7656-6377',9,6),
		('Bruno','79799299004','54566266-7','21/03/1972','11 95436-8769',10,7),
		('Mariana','13771913039','54566266-8','05/03/2018','11 98875-1234',11,8);

INSERT INTO Medico(NomeMedico,CRM,IdClinica,IdEspecialidade,IdUsuario)
VALUES ('Ricardo Lemos','54356-SP',1,2,2),
		('Roberto Possarle','53452-SP',1,17,3),
		('Helena Strada','65463-SP',1,16,4);

INSERT INTO Consulta(DataConsulta,Descricao,IdPaciente,IdMedico,IdSituacao)
VALUES ('20/01/2020 15:00','OK',7,3,1),
		('06/01/2020 10:00','OK',2,2,3),
		('07/02/2020 11:00','OK',3,2,1),
		('06/02/2018 10:00','Pequena inflamação',2,2,1),
		('07/02/2019 11:00','OK',4,1,3),
		('08/03/2020 15:00','OK',7,3,2),
		('09/03/2020 11:00','Doença Grave Detectada',4,1,2);