/*
   segunda-feira, 20 de novembro de 201720:32:30
   User: 
   Server: ADRIEL-PC
   Database: Agenda
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Evento
	(
	id_evento int NOT NULL IDENTITY (1, 1),
	nome_evt varchar(90) NOT NULL,
	data_evt datetime NOT NULL,
	contato_evt varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Evento ADD CONSTRAINT
	PK_Evento PRIMARY KEY CLUSTERED 
	(
	id_evento
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Evento SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
