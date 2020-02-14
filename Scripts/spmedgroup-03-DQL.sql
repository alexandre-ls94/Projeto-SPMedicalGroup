USE SPMedicalGroup;

SELECT * FROM TipoUsuario;
SELECT * FROM Especialidade;
SELECT * FROM Situacao;
SELECT * FROM Endereco;
SELECT * FROM Clinica;
SELECT * FROM Usuario;
SELECT * FROM Paciente;
SELECT * FROM Medico;
SELECT * FROM Consulta;

SELECT DataConsulta, Descricao, Nome, RG, DataNascimento, Telefone FROM Consulta
INNER JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
INNER JOIN Usuario ON Usuario.IdUsuario = Paciente.IdUsuario

SELECT DataConsulta, Descricao, Nome, RG, DataNascimento, Telefone, CRM FROM Consulta
INNER JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
INNER JOIN Usuario ON Usuario.IdUsuario = Paciente.IdUsuario
INNER JOIN Medico ON Medico.IdMedico = Consulta.IdMedico

SELECT CRM, Nome ,TituloEsp FROM Medico
INNER JOIN Especialidade ON Especialidade.IdEspecialidade = Medico.IdEspecialidade
INNER JOIN Usuario ON Medico.IdUsuario = Usuario.IdUsuario

SELECT CRM, Nome ,NomeFantasia FROM Medico
INNER JOIN Clinica ON Clinica.IdClinica = Medico.IdClinica
INNER JOIN Usuario ON Medico.IdUsuario = Usuario.IdUsuario

SELECT COUNT(*) As TotalUsuarios FROM Usuario;

SELECT CONVERT (VARCHAR(10),DataNascimento,110) AS [MM,DD,YYYY]
FROM Paciente;

CREATE FUNCTION MedicoPorEspecialidade (@IdEspecialidade INT)
RETURNS REAL
AS
BEGIN
DECLARE @MedicoPorEspecialidade REAL
SELECT @MedicoPorEspecialidade = IdMedico FROM Medico WHERE IdEspecialidade = @IdEspecialidade
RETURN @MedicoPorEspecialidade
END;

SELECT dbo.MedicoPorEspecialidade(17);

--CREATE PROC Idade (@IdPaciente INT)
--SELECT DataNascimento FROM Paciente WHERE Paciente.IdPaciente = @IdPaciente
--GETDATE() - DataNascimento
