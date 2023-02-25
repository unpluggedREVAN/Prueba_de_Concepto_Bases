USE [Prueba1]
GO

/****** Object:  Table [dbo].[Articulo]    Script Date: 25/2/2023 12:30:37 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Articulo](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[Precio] [money] NOT NULL
) ON [PRIMARY]
GO


