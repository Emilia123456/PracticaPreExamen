USE [GestionAlumnos]
GO
/****** Object:  User [alumno]    Script Date: 20/9/2023 09:39:39 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 20/9/2023 09:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Legajo] [varchar](50) NOT NULL,
	[Curso] [varchar](50) NULL,
	[IdNota] [int] NULL,
	[Promedio] [int] NULL,
	[Especialidad] [varchar](50) NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[Legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 20/9/2023 09:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[IdNota] [int] NOT NULL,
	[Nota] [int] NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[IdNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso], [IdNota], [Promedio], [Especialidad]) VALUES (N'Emilia', N'Armeno', N's7123', N'4IC', 4, NULL, NULL)
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso], [IdNota], [Promedio], [Especialidad]) VALUES (N'Mayeo', N'Sberlof', N's7124', N'4IB', 3, NULL, NULL)
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso], [IdNota], [Promedio], [Especialidad]) VALUES (N'Chair', N'Esteinver', N's7125', N'4IZ', 4, NULL, NULL)
INSERT [dbo].[Alumnos] ([Nombre], [Apellido], [Legajo], [Curso], [IdNota], [Promedio], [Especialidad]) VALUES (N'Pipa', N'Higuamilena', N's7126', N'4IC', 1, NULL, NULL)
GO
INSERT [dbo].[Notas] ([IdNota], [Nota]) VALUES (1, 0)
INSERT [dbo].[Notas] ([IdNota], [Nota]) VALUES (2, 5)
INSERT [dbo].[Notas] ([IdNota], [Nota]) VALUES (3, 7)
INSERT [dbo].[Notas] ([IdNota], [Nota]) VALUES (4, NULL)
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Notas] FOREIGN KEY([IdNota])
REFERENCES [dbo].[Notas] ([IdNota])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_Alumnos_Notas]
GO
