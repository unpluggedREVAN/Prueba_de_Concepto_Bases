USE [master]
GO
/****** Object:  Database [Prueba1]    Script Date: 1/3/2023 05:34:18 p. m. ******/
CREATE DATABASE [Prueba1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prueba1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prueba1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prueba1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Prueba1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prueba1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba1] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba1] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prueba1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba1', N'ON'
GO
ALTER DATABASE [Prueba1] SET QUERY_STORE = ON
GO
ALTER DATABASE [Prueba1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Prueba1]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 1/3/2023 05:34:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](128) NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBErrors]    Script Date: 1/3/2023 05:34:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBErrors](
	[ErrorID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[ErrorNumber] [int] NULL,
	[ErrorState] [int] NULL,
	[ErrorSeverity] [int] NULL,
	[ErrorLine] [int] NULL,
	[ErrorProcedure] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[ErrorDateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON 

INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (1, N'Desatornillador', 1500.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (2, N'Martillo', 3000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (3, N'Taladro', 15000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (4, N'Bombillo', 1500.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (5, N'Tubo', 2000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (6, N'Serrucho', 5000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (7, N'Brocha', 2000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (8, N'Candado', 3000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (9, N'Ladrillo', 1500.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (10, N'Soplete', 12000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (11, N'Cemento', 7000.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (12, N'Cinta', 1500.0000)
INSERT [dbo].[Articulo] ([Id], [Nombre], [Precio]) VALUES (13, N'Puerta', 20000.0000)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
GO
/****** Object:  StoredProcedure [dbo].[ShowData1]    Script Date: 1/3/2023 05:34:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowData1]
AS
SELECT * FROM Articulo ORDER BY Nombre
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert1]    Script Date: 1/3/2023 05:34:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insert1]
	@ParNombre as varchar(128)
	, @ParPrecio as money
AS
INSERT INTO dbo.Articulo VALUES (@ParNombre,@ParPrecio)
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertArticulo]    Script Date: 1/3/2023 05:34:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_InsertArticulo]
	@inNombre VARCHAR(128)		-- Nuevo Nombre de articulo
	, @inPrecio MONEY				-- Nuevo Precion
	, @outResultCode INT OUTPUT			-- Codigo de resultado del SP
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- Se validan los datos de entrada, pues no estamos seguros que se validaron en capa logica.
	-- Validar que articulo exista.

	BEGIN TRY
		-- Inicia codigo en el cual se captura errores

		DECLARE @LogDescription VARCHAR(2000)='Insertando en tabla Articulo: {Nombre="'
		
		SET @outResultCode=0;  -- Por default codigo error 0 es que no hubo error

		-- IF NOT EXISTS (SELECT 1 FROM dbo.Articulo A WHERE A.id=@inIdArticulo)
		-- BEGIN
			-- procesar error
			-- SET @outResultCode=50001;		-- Articulo no exist
			-- RETURN;
		-- END; 
		-- Se hacen otras validaciones ....

		-- se preprocesa lo que luego se actualiza, si es necesario se guarda informacion en variables o en tablas variable

		Set @LogDescription = 
					@LogDescription+@inNombre
					+'", Precio="'
					+CONVERT(VARCHAR, @inPrecio)
					+'IdClaseArticulo="';
					-- +CONVERT(VARCHAR, @inIdClaseArticulo)+'}';


		-- siempre que vamos a actualizar tablas (y son 2 o mas tablas se inicia transaccion de BD)_
		BEGIN TRANSACTION tInsertArticulo
			
			INSERT [dbo].[Articulo] (
				[Nombre]
				, [Precio])
			VALUES (
				@inNombre
				, @inPrecio
			);

			-- salvamos en evento log el evento de actualizar el articulo
		COMMIT TRANSACTION tInsertArticulo

	END TRY
	BEGIN CATCH

		IF @@TRANCOUNT>0  -- error sucedio dentro de la transaccion
		BEGIN
			ROLLBACK TRANSACTION tInsertArticulo; -- se deshacen los cambios realizados
		END;
		INSERT INTO dbo.DBErrors	VALUES (
			SUSER_SNAME()
			, ERROR_NUMBER()
			, ERROR_STATE()
			, ERROR_SEVERITY()
			, ERROR_LINE()
			, ERROR_PROCEDURE()
			, ERROR_MESSAGE()
			, GETDATE()
		);

		Set @outResultCode=50005;
	
	END CATCH

	SET NOCOUNT OFF;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Mostrar]    Script Date: 1/3/2023 05:34:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Mostrar]
	@inPatron VARCHAR(32)
	, @outResultCode INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		SET @outResultCode = 0;  -- no error code

		-- SE HACEN VALIDACIONES

		IF (@inPatron IS NULL)
		BEGIN
			SET @outResultCode = 50002;  -- parametro de entrada es nulo
			RETURN;
		END;

		SELECT A.[Nombre]
			, A.[Precio]
		FROM dbo.Articulo A
		WHERE A.Nombre like '%'+@inPatron+'%'
		ORDER BY A.Nombre;

	END TRY
	BEGIN CATCH

		INSERT INTO dbo.DBErrors	VALUES (
			SUSER_SNAME()
			, ERROR_NUMBER()
			, ERROR_STATE()
			, ERROR_SEVERITY()
			, ERROR_LINE()
			, ERROR_PROCEDURE()
			, ERROR_MESSAGE()
			, GETDATE()
		);

		Set @outResultCode=50005;
	
	END CATCH


	SET NOCOUNT OFF;
END;
GO
USE [master]
GO
ALTER DATABASE [Prueba1] SET  READ_WRITE 
GO
