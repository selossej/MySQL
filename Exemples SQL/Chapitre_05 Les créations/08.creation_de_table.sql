USE [Ventes]
GO

/*
CREATE
ALTER
DROP TABLE [dbo].[Transporteur];
*/

CREATE TABLE [dbo].[Transporteur](
	[TransporteurId] [int] IDENTITY(1,1) NOT NULL,
	[NomSociete] [varchar](40) NOT NULL,
	[Telephone] [varchar](24) NULL,
 CONSTRAINT [PK_Transporteurs] PRIMARY KEY CLUSTERED ([TransporteurId] ASC)
);


CREATE TABLE MaTable (MaTableId int);
DROP TABLE MaTable;
