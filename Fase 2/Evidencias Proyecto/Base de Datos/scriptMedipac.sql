USE [Medipac]
GO
/****** Object:  Table [dbo].[ADM_Carrusel_Noticias]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_Carrusel_Noticias](
	[Id_Carrusel_Noticias] [int] IDENTITY(1,1) NOT NULL,
	[Id_Noticia] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Subtitulo] [nvarchar](100) NOT NULL,
	[Url_Imagen] [nvarchar](500) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_ADM_Carrusel_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id_Carrusel_Noticias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_Noticias]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_Noticias](
	[Id_Noticia] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Subtitulo] [nvarchar](100) NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[Fecha_Publicacion] [datetime] NOT NULL,
	[Url_Imagen] [nvarchar](500) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_ADM_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id_Noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Estado] [int] NOT NULL,
	[Fecha_Creacion] [datetime] NOT NULL,
	[Is_Admin] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLI_Historial_Paciente]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLI_Historial_Paciente](
	[Id_Historial_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[Id_Paciente] [int] NOT NULL,
	[Id_Medico] [int] NOT NULL,
	[Historial] [text] NOT NULL,
	[Fecha_Creacion] [datetime] NOT NULL,
	[Fecha_Historial] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_CLI_Historial_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id_Historial_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLI_Medico]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLI_Medico](
	[Id_Medico] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Rut] [int] NOT NULL,
	[Dv] [char](1) NOT NULL,
	[Nombres] [nvarchar](100) NOT NULL,
	[Ap_Paterno] [nvarchar](50) NOT NULL,
	[Ap_Materno] [nvarchar](50) NULL,
	[Fono] [nvarchar](20) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_CLI_Medico] PRIMARY KEY CLUSTERED 
(
	[Id_Medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLI_Pacientes]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLI_Pacientes](
	[Id_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Nombres] [nvarchar](100) NOT NULL,
	[Ap_Paterno] [nvarchar](50) NOT NULL,
	[Ap_Materno] [nvarchar](50) NULL,
	[Rut] [varchar](10) NOT NULL,
	[Fono] [nvarchar](20) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_CLI_Pacientes] PRIMARY KEY CLUSTERED 
(
	[Id_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLI_Receta_Paciente]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLI_Receta_Paciente](
	[Id_Receta_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[Id_Historial_Paciente] [int] NOT NULL,
	[Receta] [text] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_CLI_Receta_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id_Receta_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COM_Estados_Usuario]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COM_Estados_Usuario](
	[Id_Estado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_COM_Estados_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RES_Agenda]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RES_Agenda](
	[Id_Agenda] [int] IDENTITY(1,1) NOT NULL,
	[Id_Medico] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Inicio] [int] NOT NULL,
	[Hora_FIn] [int] NOT NULL,
	[Disponible] [bit] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_RES_Agenda] PRIMARY KEY CLUSTERED 
(
	[Id_Agenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RES_Especialidades]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RES_Especialidades](
	[Id_Especialidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_RES_Especialidades] PRIMARY KEY CLUSTERED 
(
	[Id_Especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Res_HorarioMedico]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Res_HorarioMedico](
	[Id_Horario] [int] IDENTITY(1,1) NOT NULL,
	[Id_Medico] [int] NOT NULL,
	[DiaSemana] [int] NOT NULL,
	[HoraInicio] [int] NOT NULL,
	[HoraFIn] [int] NOT NULL,
 CONSTRAINT [PK_Res_HorarioMedico] PRIMARY KEY CLUSTERED 
(
	[Id_Horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RES_Medico_Especialidad]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RES_Medico_Especialidad](
	[Id_Medico_Especialidad] [int] IDENTITY(1,1) NOT NULL,
	[Id_Medico] [int] NOT NULL,
	[Id_Especialidad] [int] NOT NULL,
 CONSTRAINT [PK_RES_Medico_Especialidad] PRIMARY KEY CLUSTERED 
(
	[Id_Medico_Especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RES_Reserva]    Script Date: 06-12-2024 23:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RES_Reserva](
	[Id_Reserva] [int] IDENTITY(1,1) NOT NULL,
	[Id_Paciente] [int] NOT NULL,
	[Id_Medico] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Fecha_Creacion] [datetime] NOT NULL,
 CONSTRAINT [PK_RES_Reserva] PRIMARY KEY CLUSTERED 
(
	[Id_Reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADM_Carrusel_Noticias]  WITH CHECK ADD  CONSTRAINT [FK_ADM_Carrusel_Noticias_ADM_Noticias] FOREIGN KEY([Id_Noticia])
REFERENCES [dbo].[ADM_Noticias] ([Id_Noticia])
GO
ALTER TABLE [dbo].[ADM_Carrusel_Noticias] CHECK CONSTRAINT [FK_ADM_Carrusel_Noticias_ADM_Noticias]
GO
ALTER TABLE [dbo].[ADM_Noticias]  WITH CHECK ADD  CONSTRAINT [FK_ADM_Noticias_COM_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ADM_Noticias] CHECK CONSTRAINT [FK_ADM_Noticias_COM_Usuario]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_COM_Usuario_COM_Estados_Usuario] FOREIGN KEY([Id_Estado])
REFERENCES [dbo].[COM_Estados_Usuario] ([Id_Estado])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_COM_Usuario_COM_Estados_Usuario]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CLI_Historial_Paciente]  WITH CHECK ADD  CONSTRAINT [FK_CLI_Historial_Paciente_CLI_Medico] FOREIGN KEY([Id_Medico])
REFERENCES [dbo].[CLI_Medico] ([Id_Medico])
GO
ALTER TABLE [dbo].[CLI_Historial_Paciente] CHECK CONSTRAINT [FK_CLI_Historial_Paciente_CLI_Medico]
GO
ALTER TABLE [dbo].[CLI_Historial_Paciente]  WITH CHECK ADD  CONSTRAINT [FK_CLI_Historial_Paciente_CLI_Pacientes] FOREIGN KEY([Id_Paciente])
REFERENCES [dbo].[CLI_Pacientes] ([Id_Paciente])
GO
ALTER TABLE [dbo].[CLI_Historial_Paciente] CHECK CONSTRAINT [FK_CLI_Historial_Paciente_CLI_Pacientes]
GO
ALTER TABLE [dbo].[CLI_Medico]  WITH CHECK ADD  CONSTRAINT [FK_CLI_Medico_COM_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CLI_Medico] CHECK CONSTRAINT [FK_CLI_Medico_COM_Usuario]
GO
ALTER TABLE [dbo].[CLI_Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_CLI_Pacientes_COM_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CLI_Pacientes] CHECK CONSTRAINT [FK_CLI_Pacientes_COM_Usuario]
GO
ALTER TABLE [dbo].[CLI_Receta_Paciente]  WITH CHECK ADD  CONSTRAINT [FK_CLI_Receta_Paciente_CLI_Historial_Paciente] FOREIGN KEY([Id_Historial_Paciente])
REFERENCES [dbo].[CLI_Historial_Paciente] ([Id_Historial_Paciente])
GO
ALTER TABLE [dbo].[CLI_Receta_Paciente] CHECK CONSTRAINT [FK_CLI_Receta_Paciente_CLI_Historial_Paciente]
GO
ALTER TABLE [dbo].[RES_Agenda]  WITH CHECK ADD  CONSTRAINT [FK_RES_Agenda_CLI_Medico] FOREIGN KEY([Id_Medico])
REFERENCES [dbo].[CLI_Medico] ([Id_Medico])
GO
ALTER TABLE [dbo].[RES_Agenda] CHECK CONSTRAINT [FK_RES_Agenda_CLI_Medico]
GO
ALTER TABLE [dbo].[Res_HorarioMedico]  WITH CHECK ADD  CONSTRAINT [FK_Res_HorarioMedico_CLI_Medico] FOREIGN KEY([Id_Medico])
REFERENCES [dbo].[CLI_Medico] ([Id_Medico])
GO
ALTER TABLE [dbo].[Res_HorarioMedico] CHECK CONSTRAINT [FK_Res_HorarioMedico_CLI_Medico]
GO
ALTER TABLE [dbo].[RES_Medico_Especialidad]  WITH CHECK ADD  CONSTRAINT [FK_RES_Medico_Especialidad_CLI_Medico] FOREIGN KEY([Id_Medico])
REFERENCES [dbo].[CLI_Medico] ([Id_Medico])
GO
ALTER TABLE [dbo].[RES_Medico_Especialidad] CHECK CONSTRAINT [FK_RES_Medico_Especialidad_CLI_Medico]
GO
ALTER TABLE [dbo].[RES_Medico_Especialidad]  WITH CHECK ADD  CONSTRAINT [FK_RES_Medico_Especialidad_RES_Especialidades] FOREIGN KEY([Id_Especialidad])
REFERENCES [dbo].[RES_Especialidades] ([Id_Especialidad])
GO
ALTER TABLE [dbo].[RES_Medico_Especialidad] CHECK CONSTRAINT [FK_RES_Medico_Especialidad_RES_Especialidades]
GO
ALTER TABLE [dbo].[RES_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_RES_Reserva_CLI_Medico] FOREIGN KEY([Id_Medico])
REFERENCES [dbo].[CLI_Medico] ([Id_Medico])
GO
ALTER TABLE [dbo].[RES_Reserva] CHECK CONSTRAINT [FK_RES_Reserva_CLI_Medico]
GO
ALTER TABLE [dbo].[RES_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_RES_Reserva_CLI_Pacientes] FOREIGN KEY([Id_Paciente])
REFERENCES [dbo].[CLI_Pacientes] ([Id_Paciente])
GO
ALTER TABLE [dbo].[RES_Reserva] CHECK CONSTRAINT [FK_RES_Reserva_CLI_Pacientes]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLI_Historial_Paciente', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLI_Medico', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLI_Pacientes', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLI_Receta_Paciente', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COM_Estados_Usuario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RES_Especialidades', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Columna que representa el borrado lógico del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RES_Reserva', @level2type=N'COLUMN',@level2name=N'Estado'
GO
