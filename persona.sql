USE [db_test]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 04/04/2021 16:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [nchar](50) NOT NULL,
	[segundo_nombre] [nchar](50) NULL,
	[primer_apellido] [nchar](50) NOT NULL,
	[segundo_apellido] [nchar](50) NULL,
	[sexo] [nchar](1) NOT NULL,
	[fecha_nacimiento] [datetime2](7) NOT NULL,
	[id_padre] [int] NULL,
	[id_madre] [int] NULL,
 CONSTRAINT [PK_persona_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[persona] ON 

INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (1, N'Pedro                                             ', NULL, N'Vergara                                           ', N'Vergara                                           ', N'M', CAST(N'1994-03-30T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (2, N'Ana                                               ', N'Victoria                                          ', N'Andrade                                           ', NULL, N'F', CAST(N'1996-05-12T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (6, N'Elizabeth                                         ', NULL, N'Vergara                                           ', NULL, N'F', CAST(N'2016-05-12T00:00:00.0000000' AS DateTime2), 1, 2)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (9, N'Daniela                                           ', NULL, N'Vergara                                           ', NULL, N'F', CAST(N'2014-05-12T00:00:00.0000000' AS DateTime2), 1, 2)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (10, N'Gustavo                                           ', NULL, N'Vergara                                           ', N'Andrade                                           ', N'F', CAST(N'2013-05-12T00:00:00.0000000' AS DateTime2), 1, 2)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (11, N'Jorge                                             ', NULL, N'Vergara                                           ', NULL, N'F', CAST(N'2012-05-12T00:00:00.0000000' AS DateTime2), 1, 2)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (12, N'Matías                                            ', NULL, N'Vergara                                           ', N'Andrade                                           ', N'F', CAST(N'2011-05-12T00:00:00.0000000' AS DateTime2), 1, 2)
INSERT [dbo].[persona] ([id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [sexo], [fecha_nacimiento], [id_padre], [id_madre]) VALUES (13, N'Thiago                                            ', NULL, N'Vergara                                           ', NULL, N'F', CAST(N'2019-05-12T00:00:00.0000000' AS DateTime2), 1, 2)
SET IDENTITY_INSERT [dbo].[persona] OFF
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [Fk_madre] FOREIGN KEY([id_madre])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [Fk_madre]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_padre] FOREIGN KEY([id_padre])
REFERENCES [dbo].[persona] ([id])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_padre]
GO
