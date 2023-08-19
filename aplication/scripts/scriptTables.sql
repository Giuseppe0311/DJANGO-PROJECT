
/****** Object:  Table [dbo].[Accesos]    Script Date: 18/08/2023 15:31:01 ******/

CREATE TABLE [dbo].[Accesos](
	[idAcceso] [bigint] IDENTITY(1,1) NOT NULL,
	[idUsuario] [bigint] NOT NULL,
	[idSistema] [bigint] NOT NULL,
	[idNivel] [bigint] NOT NULL,
 CONSTRAINT [PK_Aceesos] PRIMARY KEY CLUSTERED 
(
	[idAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[actividad]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[actividad](
	[CLAVE] [int] NULL,
	[cod_uni] [char](14) NOT NULL,
	[unidade] [char](10) NOT NULL,
	[codacti] [char](10) NULL,
	[partidas] [char](20) NULL,
	[grupo] [char](2) NULL,
	[descrip] [char](50) NULL,
	[ctipopre] [char](2) NULL,
	[ctipoge] [char](2) NULL,
	[careas] [char](2) NULL,
	[anof] [char](4) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Actividad_CCTO]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Actividad_CCTO](
	[CLAVE] [int] NULL,
	[COD_CRP] [char](10) NULL,
	[UNIDADE] [char](10) NULL,
	[CODCCOSTO] [char](10) NULL,
	[DESCRIP] [varchar](50) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Banco]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Banco](
	[IdBanco] [int] IDENTITY(1,1) NOT NULL,
	[CtaContable] [char](12) NOT NULL,
	[Descripcion] [char](60) NOT NULL,
	[CtaBancaria] [char](30) NOT NULL,
	[CodMoneda] [char](2) NULL,
	[NroOperacion] [int] NULL,
	[NroCheque] [int] NULL,
	[Estado] [bit] NULL,
	[idEmpresa] [bigint] NULL,
 CONSTRAINT [PK_Banco_1] PRIMARY KEY CLUSTERED 
(
	[IdBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[CentroCosto]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[CentroCosto](
	[IdCentroCosto] [int] IDENTITY(1,1) NOT NULL,
	[CodCentroCosto] [nchar](15) NULL,
	[Descripcion] [varchar](60) NULL,
	[CctaDestino] [nchar](20) NULL,
	[ctaDebe] [nvarchar](10) NULL,
	[ctaHaber] [nvarchar](10) NULL,
	[Nivel] [varchar](10) NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [bigint] NULL,
	[Porcenta] [int] NULL,
	[CtaDebe2] [nchar](10) NULL,
	[Porcenta2] [int] NULL,
	[CtaDebe3] [nchar](10) NULL,
	[Porcenta3] [int] NULL,
	[CtaDebe4] [nchar](10) NULL,
	[Porcenta4] [int] NULL,
	[Tipo] [nchar](10) NULL,
 CONSTRAINT [PK_CentroCosto] PRIMARY KEY CLUSTERED 
(
	[IdCentroCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Cierre]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Cierre](
	[AnnioContable] [char](4) NULL,
	[MesContable] [char](2) NULL,
	[DesMesContable] [char](15) NULL,
	[Cierre] [bit] NULL,
	[zona] [char](6) NOT NULL,
	[unidad] [char](10) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[CronoGramaVctoSunat]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[CronoGramaVctoSunat](
	[Codigo_vencimiento] [int] IDENTITY(1,1) NOT NULL,
	[periodo] [nchar](10) NULL,
	[Digito0] [datetime] NULL,
	[Digito1] [datetime] NULL,
	[Digito2y3] [datetime] NULL,
	[Digito4y5] [datetime] NULL,
	[Digito6y7] [datetime] NULL,
	[Digito8y9] [datetime] NULL,
	[BuenosContri] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[CRP]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[CRP](
	[IdCRP] [int] IDENTITY(1,1) NOT NULL,
	[CRP] [char](10) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](50) NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[Relacion] [varchar](10) NULL,
	[CodZona] [char](6) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_CRP] PRIMARY KEY CLUSTERED 
(
	[IdCRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[DetalleNivelAcceso]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[DetalleNivelAcceso](
	[idDetalleNivelAcceso] [bigint] IDENTITY(1,1) NOT NULL,
	[idNivelAcceso] [bigint] NOT NULL,
	[idMenuSistema] [bigint] NOT NULL,
	[Permitir] [bit] NOT NULL,
	[idSistema] [bigint] NULL,
 CONSTRAINT [PK_DetalleNivelAcceso] PRIMARY KEY CLUSTERED 
(
	[idDetalleNivelAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Empresa]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [int] NULL,
	[RazonSocial] [varchar](100) NULL,
	[RUC] [varchar](11) NULL,
	[Rubro] [varchar](60) NULL,
	[Telefono] [char](12) NULL,
	[Direccion] [varchar](100) NULL,
	[Ciudad] [varchar](40) NULL,
	[e_corr] [int] NULL,
	[CantSucursal] [int] NULL,
	[CantUnidad] [int] NULL,
	[Regimen] [varchar](20) NULL,
	[AnioIniContable] [char](4) NULL,
	[PorRenta] [decimal](12, 6) NULL,
	[PorParticipaTrab] [int] NULL,
	[Codigo_Tipo_Empresa] [int] NULL,
	[DireccionPle] [varchar](50) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[EntidadFinanciera]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[EntidadFinanciera](
	[IdEFinanciera] [int] IDENTITY(1,1) NOT NULL,
	[CodEFinanciera] [nchar](3) NULL,
	[Descripcion] [varchar](50) NULL,
	[estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[exportaventasnew]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[exportaventasnew](
	[GRUPO] [nvarchar](255) NULL,
	[ZONA] [nvarchar](255) NULL,
	[UNIDAD_ECONOMICA] [nvarchar](255) NULL,
	[AÑO] [float] NULL,
	[MES] [nvarchar](255) NULL,
	[FECHA_REGISTRO] [datetime] NULL,
	[CUENTA_CONTABLE] [nvarchar](255) NULL,
	[CUENTA_ABONO] [nvarchar](255) NULL,
	[AUTOMATICO] [nvarchar](255) NULL,
	[PROVEEDOR] [nvarchar](255) NULL,
	[Razon_Social] [nvarchar](255) NULL,
	[Direccion] [nvarchar](255) NULL,
	[TIPO_DOCUMENTO] [nvarchar](255) NULL,
	[NRO_DOCUMENTO] [nvarchar](255) NULL,
	[NRO_DOCUMENTO2] [nvarchar](255) NULL,
	[FECHA_DOCUMENTO] [datetime] NULL,
	[DETALLE_VENTA] [nvarchar](255) NULL,
	[TIPO_MONEDA] [nvarchar](255) NULL,
	[TIPO_CAMBIO] [nvarchar](255) NULL,
	[TIPO_OPERACION] [float] NULL,
	[IMPORTE_DEBE] [float] NULL,
	[IMPORTE_HABER] [float] NULL,
	[AFECTO] [float] NULL,
	[MONTO_IGV] [float] NULL,
	[ISC] [float] NULL,
	[MONTO_ISC] [float] NULL,
	[CANCELADO] [float] NULL,
	[PERCEPCION] [float] NULL,
	[MONTO_PERCEPCION] [float] NULL,
	[fechanc] [nvarchar](255) NULL,
	[tipo_docnc] [nvarchar](255) NULL,
	[nro_docnc] [nvarchar](255) NULL,
	[voucher] [float] NULL,
	[glosa] [nvarchar](255) NULL,
	[ccosto] [nvarchar](255) NULL,
	[fefec] [nvarchar](255) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Financiera]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Financiera](
	[IdBanco] [int] IDENTITY(1,1) NOT NULL,
	[CodBanco] [nchar](2) NULL,
	[Descripcion] [varchar](90) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[IdBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Honomasticos]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Honomasticos](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Direccion] [varchar](60) NULL,
	[Telefono] [nchar](10) NULL,
	[Cel] [nchar](10) NULL,
	[FechaNac] [datetime] NULL,
	[Estado] [char](1) NULL,
	[Correo] [varchar](90) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[lecompras]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[lecompras](
	[mes] [char](2) NULL,
	[correlativo] [char](9) NULL,
	[FechaDocReferencia] [datetime] NULL,
	[FechaVencimiento] [varchar](10) NULL,
	[DesTipoDocumento] [char](2) NULL,
	[CodAduana] [nchar](3) NULL,
	[AnioDua] [int] NULL,
	[serie] [varchar](14) NULL,
	[NroDocReferencia] [varchar](14) NULL,
	[CodClienteProveedor] [nchar](10) NULL,
	[RUC] [char](14) NULL,
	[Proveedor] [nvarchar](100) NULL,
	[AGDOGE1] [numeric](38, 3) NULL,
	[IGV_1] [numeric](38, 3) NULL,
	[AGDOGE_NG] [numeric](38, 3) NULL,
	[IGV_2] [numeric](38, 3) NULL,
	[AGDO_NG] [numeric](38, 3) NULL,
	[IGV_3] [numeric](38, 3) NULL,
	[Valor_Adquisicion] [numeric](38, 3) NULL,
	[ISC] [numeric](38, 3) NULL,
	[MontoIcbper] [numeric](38, 3) NULL,
	[OtrosCptos] [numeric](38, 3) NULL,
	[TotalImporte] [numeric](38, 3) NULL,
	[PorcentajePercepcion] [decimal](38, 2) NULL,
	[NroDetrac] [varchar](50) NULL,
	[fechaDetrac] [datetime] NULL,
	[Tipocambio] [decimal](7, 3) NULL,
	[Fecha_RefComprobModi] [varchar](10) NULL,
	[Tipo_RefComprobModi] [char](2) NULL,
	[Serie_RefComprobModi] [char](4) NULL,
	[Nro_RefComprobModi] [nchar](10) NULL,
	[NombreDocumento] [varchar](60) NULL,
	[NroDocumento] [nchar](10) NULL,
	[ClasificaBS] [char](24) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[leDiario]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[leDiario](
	[Orden] [varchar](104) NULL,
	[NroDoc] [char](10) NULL,
	[idMovcontables_C] [int] NULL,
	[idMovcontable_d] [int] NULL,
	[Correlativo] [char](10) NULL,
	[FechContable] [datetime] NULL,
	[Glosa] [varchar](250) NULL,
	[Zona] [varchar](50) NULL,
	[codMgc] [nchar](3) NULL,
	[Doc] [varchar](44) NULL,
	[codCuenta] [char](12) NULL,
	[Descripcion] [varchar](200) NULL,
	[impDebe] [decimal](15, 2) NULL,
	[impHaber] [decimal](15, 2) NULL,
	[Fechco] [datetime] NULL,
	[CodDocRef] [char](2) NULL,
	[Serie] [varchar](20) NULL,
	[NroDocRef] [nvarchar](20) NULL,
	[centrocosto] [nchar](15) NULL,
	[CodClienteProveedor] [nchar](10) NULL,
	[Ruc] [char](14) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[leMayor]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[leMayor](
	[Cuenta] [nvarchar](100) NULL,
	[fechcontable] [datetime] NULL,
	[nrodoc] [nvarchar](50) NULL,
	[glosa] [varchar](250) NULL,
	[debe] [decimal](38, 2) NULL,
	[acreedor] [decimal](38, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[leVentas]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[leVentas](
	[zona] [char](10) NULL,
	[codunidadeconomica] [char](10) NULL,
	[mes] [char](2) NULL,
	[correlativo] [char](10) NULL,
	[FechaEmision] [varchar](10) NULL,
	[FechaVencimiento] [varchar](10) NULL,
	[CodigoDocumento] [char](2) NULL,
	[Serie] [varchar](4) NULL,
	[Numero] [varchar](19) NULL,
	[TipoDoc] [nchar](10) NULL,
	[ruc] [char](14) NULL,
	[Entidad] [nvarchar](100) NULL,
	[Exportacion] [decimal](38, 2) NULL,
	[BaseImponible] [decimal](38, 2) NULL,
	[Exonerado] [decimal](38, 2) NULL,
	[Inafecta] [decimal](38, 2) NULL,
	[ISC] [decimal](38, 2) NULL,
	[IGV] [decimal](38, 2) NULL,
	[OtrosTributos] [decimal](38, 2) NULL,
	[MontoIcbper] [decimal](38, 2) NULL,
	[OtrosCptos] [decimal](38, 2) NULL,
	[Total] [decimal](38, 2) NULL,
	[TipoCambio] [decimal](7, 3) NULL,
	[Fecha] [varchar](10) NULL,
	[Tipo] [char](2) NULL,
	[Serie2] [char](4) NULL,
	[Numero2] [nchar](10) NULL,
	[Voucher] [nchar](10) NULL,
	[BaseImponibleIva] [decimal](38, 2) NULL,
	[Impuestoiva] [decimal](38, 2) NULL,
	[NombreDocumento] [varchar](60) NULL,
	[nrodocumento] [nchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[MaestroGrupoContable]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[MaestroGrupoContable](
	[IdMGC] [int] IDENTITY(1,1) NOT NULL,
	[CodMGC] [varchar](50) NOT NULL,
	[MGC] [varchar](50) NOT NULL,
	[Sistema] [varchar](50) NOT NULL,
	[CodZona] [varchar](6) NOT NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[Anio] [int] NOT NULL,
	[Apertura] [int] NULL,
	[Ene] [int] NULL,
	[Feb] [int] NULL,
	[Mar] [int] NULL,
	[Abr] [int] NULL,
	[May] [int] NULL,
	[Jun] [int] NULL,
	[Jul] [int] NULL,
	[Ago] [int] NULL,
	[Sep] [int] NULL,
	[Oct] [int] NULL,
	[Nov] [int] NULL,
	[Dic] [int] NULL,
	[Anual] [int] NULL,
	[Estado] [bit] NULL,
	[CodForm] [int] NULL,
 CONSTRAINT [PK_MaestroGrupoContable] PRIMARY KEY CLUSTERED 
(
	[IdMGC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MenuSistemas]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[MenuSistemas](
	[idMenuSistema] [bigint] IDENTITY(1,1) NOT NULL,
	[idSistema] [bigint] NOT NULL,
	[GrupoMenus] [varchar](250) NOT NULL,
	[DescripcionMenu] [varchar](250) NOT NULL,
	[EstadoMenu] [bit] NOT NULL,
 CONSTRAINT [PK_MenuSistemas] PRIMARY KEY CLUSTERED 
(
	[idMenuSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Moneda]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Moneda](
	[IdMoneda] [bigint] IDENTITY(1,1) NOT NULL,
	[CodMoneda] [nchar](2) NULL,
	[Descripcion] [char](18) NULL,
	[Simbolo] [char](5) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MovContables_C]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[MovContables_C](
	[IdMovContables_C] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [char](4) NULL,
	[Mes] [char](2) NULL,
	[Zona] [char](10) NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[NroDoc] [nchar](10) NULL,
	[FechCo] [datetime] NULL,
	[CodMGC] [char](2) NULL,
	[Glosa] [varchar](200) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_MovContables_C] PRIMARY KEY CLUSTERED 
(
	[IdMovContables_C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MovContables_D]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[MovContables_D](
	[IDMovContable_D] [int] IDENTITY(1,1) NOT NULL,
	[IdMovContables_C] [int] NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[NroDocumento] [char](10) NULL,
	[CRP] [char](10) NULL,
	[CodActividad] [char](14) NULL,
	[CodPar] [char](14) NULL,
	[CodSubActividad] [char](5) NULL,
	[FechContable] [datetime] NULL,
	[CodMGC] [char](3) NULL,
	[ClaseMovimiento] [char](1) NULL,
	[CtaDestino] [char](10) NULL,
	[CodigoDocumentoReferencia] [char](2) NULL,
	[NroDocReferencia] [char](14) NULL,
	[FechaDocReferencia] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[CodigoDocumentoFuente] [char](2) NULL,
	[NroDocumentoFuente] [char](14) NULL,
	[FechaDocumentoFuente] [datetime] NULL,
	[CodigoCtaBancaria] [char](12) NULL,
	[NroOperacion] [char](40) NULL,
	[NroCheque] [char](40) NULL,
	[CuentaNaturaleza] [char](12) NULL,
	[CodCuenta] [char](12) NULL,
	[CentroCosto] [char](15) NULL,
	[TipoMov] [char](1) NULL,
	[Glosa] [varchar](250) NULL,
	[Orden] [varchar](250) NULL,
	[Afecto] [bit] NULL,
	[Moneda] [bigint] NULL,
	[TipoCambio] [decimal](7, 3) NULL,
	[impDebe] [decimal](15, 2) NULL,
	[impHaber] [decimal](15, 2) NULL,
	[impDebeDolar] [decimal](15, 2) NULL,
	[impHaberDolar] [decimal](15, 2) NULL,
	[TipoAnexo] [char](2) NULL,
	[CodAnexo] [char](14) NULL,
	[codPro] [char](14) NULL,
	[u_codi] [char](20) NULL,
	[datUsu] [datetime] NULL,
	[Correlativo] [char](10) NULL,
	[estado] [char](1) NULL,
	[Destino] [char](1) NULL,
	[Anexo] [char](11) NULL,
	[GastoIntPersonal] [bit] NULL,
	[cocach] [char](10) NULL,
	[nomanx] [varchar](250) NULL,
	[codIn] [char](24) NULL,
	[tipdca] [char](2) NULL,
	[nrodca] [char](10) NULL,
	[reten] [bit] NULL,
	[rigv] [bit] NULL,
	[corrigv] [char](10) NULL,
	[CodAduana] [nchar](3) NULL,
	[FechDUA] [datetime] NULL,
	[CodDUA] [nchar](30) NULL,
	[ISC] [bit] NULL,
	[tipoOper] [int] NULL,
	[NroDetrac] [varchar](50) NULL,
	[FechaDetrac] [datetime] NULL,
	[CodigoDetraccion] [varchar](3) NULL,
	[Fecha_RefComprobModi] [datetime] NULL,
	[Tipo_RefComprobModi] [char](2) NULL,
	[Serie_RefComprobModi] [char](4) NULL,
	[Nro_RefComprobModi] [nchar](10) NULL,
	[CodigoPercepcion] [varchar](24) NULL,
	[PorcentajePercepcion] [decimal](10, 2) NULL,
	[CuentaAbono] [varchar](50) NULL,
	[MontoIGV] [decimal](12, 3) NULL,
	[NumeroPercepcion] [varchar](11) NULL,
	[FechaPercepcion] [datetime] NULL,
	[MontoRetencion4] [decimal](10, 2) NULL,
	[TipoMedioPago] [nchar](3) NULL,
	[MontoISC] [decimal](10, 2) NULL,
	[MontoDetraccionIvap] [decimal](10, 2) NULL,
	[MontoCuentaAuxiliar] [decimal](10, 2) NULL,
	[MontoIcbPer] [decimal](10, 2) NULL,
	[MontoRetencionIGV] [decimal](18, 2) NULL,
	[CuentaCCosto] [varchar](50) NULL,
 CONSTRAINT [PK_MovContables_D] PRIMARY KEY CLUSTERED 
(
	[IDMovContable_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MovContablesDNoDomici]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[MovContablesDNoDomici](
	[idNoDomiciliado] [int] IDENTITY(1,1) NOT NULL,
	[Movcontable_d] [char](10) NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[TipoDocCredFiscal] [char](2) NULL,
	[NroDocDUA] [char](45) NULL,
	[AnioDuaCredFiscal] [char](4) NULL,
	[MontoRetIGV] [numeric](18, 2) NULL,
	[Pais] [char](7) NULL,
	[NombreNoDomiciliado] [varchar](100) NULL,
	[RentaBruta] [numeric](18, 2) NULL,
	[DeduccionCosto] [numeric](18, 2) NULL,
	[RentaNeta] [numeric](18, 2) NULL,
	[TasaRetencion] [numeric](10, 2) NULL,
	[ImpuestoRetenido] [numeric](18, 2) NULL,
	[Convenio2Imposicion] [char](7) NULL,
	[TipoRenta] [char](7) NULL,
	[AplicaArt76] [char](1) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_MovContablesDNoDomici] PRIMARY KEY CLUSTERED 
(
	[idNoDomiciliado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[NivelAccesos]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[NivelAccesos](
	[idNivelAcceso] [bigint] IDENTITY(1,1) NOT NULL,
	[NivelAcceso] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_NivelAccesos] PRIMARY KEY CLUSTERED 
(
	[idNivelAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Parametros]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Parametros](
	[idParametro] [bigint] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [bigint] NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Valor] [varchar](800) NOT NULL,
	[SubValor] [varchar](800) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Parametros] PRIMARY KEY CLUSTERED 
(
	[idParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[ParametrosMaestro]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[ParametrosMaestro](
	[idParametro] [bigint] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [bigint] NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Valor] [varchar](800) NOT NULL,
	[SubValor] [varchar](800) NOT NULL,
	[Estado] [bit] NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[PeriodoContable]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[PeriodoContable](
	[IdPeriodoContable] [char](18) NULL,
	[PeriodoContable] [char](18) NULL,
	[TipoPeriodoContable] [char](18) NULL,
	[Anio] [char](18) NULL,
	[Mes] [char](18) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[PlanCuentasContables]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[PlanCuentasContables](
	[IdPlanCuentasContables] [int] IDENTITY(1,1) NOT NULL,
	[CodCuentaContable] [nchar](10) NULL,
	[Descripcion] [varchar](150) NULL,
	[CtaDebe] [varchar](50) NULL,
	[CtaHaber] [varchar](50) NULL,
	[CtaCierre] [varchar](50) NULL,
	[TipoMovPCCDB] [varchar](50) NULL,
	[NivelCuenta] [varchar](50) NULL,
	[TipoCuenta] [varchar](50) NULL,
	[TipoAnalisis] [varchar](50) NULL,
	[ConverMoneda] [varchar](50) NULL,
	[ManejoDocumentPendientes] [varchar](50) NULL,
	[AjusteInflacion] [varchar](50) NULL,
	[ValidaAutomatico] [bit] NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL,
	[Porcenta] [int] NULL,
	[CtaDebe2] [nchar](10) NULL,
	[Porcenta2] [int] NULL,
	[CtaDebe3] [nchar](10) NULL,
	[Porcenta3] [int] NULL,
	[CtaDebe4] [nchar](10) NULL,
	[Porcenta4] [int] NULL,
	[CtaPDT] [nchar](10) NULL,
	[Anio] [nchar](6) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[PlanCuentasContablesnew]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[PlanCuentasContablesnew](
	[CodCuentaContable] [nchar](10) NULL,
	[Descripcion] [varchar](80) NULL,
	[CtaDebe] [varchar](50) NULL,
	[CtaHaber] [varchar](50) NULL,
	[CtaCierre] [varchar](50) NULL,
	[TipoMovPCCDB] [varchar](50) NULL,
	[NivelCuenta] [varchar](50) NULL,
	[TipoCuenta] [varchar](50) NULL,
	[TipoAnalisis] [varchar](50) NULL,
	[ConverMoneda] [varchar](50) NULL,
	[ManejoDocumentPendientes] [varchar](50) NULL,
	[AjusteInflacion] [varchar](50) NULL,
	[ValidaAutomatico] [bit] NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL,
	[Porcenta] [int] NULL,
	[CtaDebe2] [nchar](10) NULL,
	[Porcenta2] [int] NULL,
	[CtaDebe3] [nchar](10) NULL,
	[Porcenta3] [int] NULL,
	[CtaDebe4] [nchar](10) NULL,
	[Porcenta4] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[PlanCuentasMaestro]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[PlanCuentasMaestro](
	[IdPlanCuentasContables] [bigint] IDENTITY(1,1) NOT NULL,
	[CodCuentaContable] [nchar](10) NULL,
	[Descripcion] [varchar](150) NULL,
	[CtaDebe] [nchar](10) NULL,
	[CtaHaber] [nchar](10) NULL,
	[CtaCierre] [nchar](10) NULL,
	[TipoMovPCCDB] [nchar](10) NULL,
	[NivelCuenta] [nchar](1) NULL,
	[TipoCuenta] [nchar](2) NULL,
	[TipoAnalisis] [nchar](1) NULL,
	[ConverMoneda] [nchar](1) NULL,
	[ManejoDocumentPendientes] [nchar](3) NULL,
	[AjusteInflacion] [nchar](2) NULL,
	[ValidaAutomatico] [bit] NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL,
	[Porcenta] [int] NULL,
	[Ctadebe2] [nchar](10) NULL,
	[Porcenta2] [int] NULL,
	[CtaDebe3] [nchar](10) NULL,
	[Porcenta3] [int] NULL,
	[CtaDebe4] [nchar](10) NULL,
	[Porcenta4] [int] NULL,
	[CtaPDT] [nchar](10) NULL,
	[Anio] [nchar](6) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[plancuentasmaestroold]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[plancuentasmaestroold](
	[IdPlanCuentasContables] [bigint] IDENTITY(1,1) NOT NULL,
	[CodCuentaContable] [nchar](10) NULL,
	[Descripcion] [varchar](80) NULL,
	[CtaDebe] [nchar](10) NULL,
	[CtaHaber] [nchar](10) NULL,
	[CtaCierre] [nchar](10) NULL,
	[TipoMovPCCDB] [nchar](10) NULL,
	[NivelCuenta] [nchar](1) NULL,
	[TipoCuenta] [nchar](2) NULL,
	[TipoAnalisis] [nchar](1) NULL,
	[ConverMoneda] [nchar](1) NULL,
	[ManejoDocumentPendientes] [nchar](3) NULL,
	[AjusteInflacion] [nchar](2) NULL,
	[ValidaAutomatico] [bit] NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL,
	[Porcenta] [int] NULL,
	[Ctadebe2] [nchar](10) NULL,
	[Porcenta2] [int] NULL,
	[CtaDebe3] [nchar](10) NULL,
	[Porcenta3] [int] NULL,
	[CtaDebe4] [nchar](10) NULL,
	[Porcenta4] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[prueba]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[prueba](
	[id_prueba] [int] NOT NULL,
	[ip] [varchar](30) NULL,
	[mac] [varchar](20) NULL,
	[fecha] [varchar](10) NULL,
	[hora_inicio] [nvarchar](6) NULL,
	[hora_final] [nvarchar](6) NULL,
	[acumulado] [nvarchar](6) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK__prueba__1A14E395] PRIMARY KEY CLUSTERED 
(
	[id_prueba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Sistemas]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[Sistemas](
	[ID] [int] NOT NULL,
	[NameSystem] [varchar](50) NULL,
	[Estado] [tinyint] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[subactividad]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[subactividad](
	[clave] [int] NOT NULL,
	[cod_uni] [char](14) NULL,
	[unidade] [char](10) NULL,
	[codacti] [char](10) NULL,
	[cCod_suba] [char](12) NOT NULL,
	[grupo] [char](2) NULL,
	[codigo] [char](10) NULL,
	[codpartida] [char](20) NULL,
	[descriparti] [char](50) NULL,
	[area] [char](2) NULL,
	[ctipopre] [char](2) NULL,
	[ctipoge] [char](2) NULL,
	[careas] [char](2) NULL,
	[anof] [char](4) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_ActividadOper]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[tbl_ActividadOper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdArea] [int] NOT NULL,
	[Area] [varchar](16) NOT NULL,
	[TipoAct] [varchar](4) NOT NULL,
	[CodAct] [varchar](7) NOT NULL,
	[Descripcion] [varchar](248) NOT NULL,
	[CtaDebe] [char](12) NULL,
	[CtaHaber] [char](12) NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ActividadOper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Activo]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[tbl_Activo](
	[IdActivo] [bigint] IDENTITY(1,1) NOT NULL,
	[Caso1] [varchar](30) NULL,
	[Caso2] [varchar](30) NULL,
	[Caso3] [varchar](40) NULL,
	[Caso4] [varchar](25) NULL,
	[Caso5] [varchar](25) NULL,
	[Caso6] [varchar](30) NULL,
	[PC] [varchar](30) NULL,
	[Actividad] [bigint] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Aduanas]    Script Date: 18/08/2023 15:31:01 ******/



CREATE TABLE [dbo].[tbl_Aduanas](
	[CodAduanas] [nchar](3) NOT NULL,
	[Aduanas] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Aduanas] PRIMARY KEY CLUSTERED 
(
	[CodAduanas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFBaja]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFBaja](
	[IdBaja] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFBaja] PRIMARY KEY CLUSTERED 
(
	[IdBaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFCargo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFCargo](
	[IdCargo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[idEmpresa] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFCargo] PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AFCentroCosto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AFCentroCosto](
	[idCentroCosto] [int] IDENTITY(1,1) NOT NULL,
	[CodCentroCosto] [nchar](15) NULL,
	[Descripcion] [varchar](60) NULL,
	[CtaDestino] [nchar](10) NULL,
	[CtaDebe] [nchar](10) NULL,
	[CtaHaber] [nchar](10) NULL,
	[Nivel] [varchar](10) NULL,
	[Estado] [bit] NULL,
	[idEmpresa] [int] NULL,
 CONSTRAINT [PK_tbl_AFCentroCosto] PRIMARY KEY CLUSTERED 
(
	[idCentroCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFDetalleProceso]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFDetalleProceso](
	[IdProceso] [int] NULL,
	[IdDetalleProceso] [int] IDENTITY(1,1) NOT NULL,
	[DepreciacionHistorica] [numeric](18, 2) NULL,
	[DepreciacionAjustada] [numeric](18, 2) NULL,
	[ValorAjustado] [numeric](18, 2) NULL,
	[DepreciacionMensualCalculado] [numeric](18, 2) NULL,
	[IdEmpresa] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFDetalleProceso] PRIMARY KEY CLUSTERED 
(
	[IdDetalleProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AFDocumento_Compra]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AFDocumento_Compra](
	[Codigo_Documento_Compra] [bigint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](50) NULL,
	[Abreviatura] [char](10) NULL,
	[Serie] [char](10) NULL,
	[Correlativo] [char](10) NULL,
	[estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFEstado]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFEstado](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFEstado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFFamilia]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFFamilia](
	[Idfamilia] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupo] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Cuenta_Compra] [char](10) NULL,
	[Cuenta_Venta] [char](10) NULL,
	[Cuenta_Contable] [nchar](10) NULL,
	[Cuenta_Mercaderia] [char](10) NULL,
	[Cuenta_ProdManufac] [char](10) NULL,
	[orden] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_tbl_Familia] PRIMARY KEY CLUSTERED 
(
	[Idfamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFGrupo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFGrupo](
	[IdGrupo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Cuenta_Contable] [varchar](10) NULL,
	[IdEmpresa] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_tbl_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFHistoricoDepreciacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFHistoricoDepreciacion](
	[IdAFHistoricoDepreciacion] [int] IDENTITY(1,1) NOT NULL,
	[IdActivoFijo] [int] NULL,
	[IdEmpresa] [int] NULL,
	[FechaProceso] [varchar](10) NULL,
	[PorcentajeDeprecia] [decimal](18, 4) NULL,
	[Monto] [decimal](18, 2) NULL,
	[idTipoDocumento] [int] NULL,
	[TipoDepreciacion] [nchar](10) NULL,
	[Estado] [bit] NULL,
	[AcumuladoAnt] [numeric](18, 2) NULL,
	[Cerrado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFMaestroActivoFijo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFMaestroActivoFijo](
	[IdACtivoFijo] [int] IDENTITY(1,1) NOT NULL,
	[IdFamilia] [int] NULL,
	[idZona] [int] NULL,
	[Nombre_corto] [varchar](50) NULL,
	[Nombre_largo] [text] NULL,
	[Codigo_ActivoReal] [nchar](15) NULL,
	[Codigo_barrasActivo] [nchar](15) NULL,
	[IdEstado] [int] NULL,
	[Fecha_ingreso] [datetime] NULL,
	[IdTipoIngreso] [int] NULL,
	[IdCentroCosto] [int] NULL,
	[IdUbicacion] [int] NULL,
	[IdMarca] [int] NULL,
	[Modelo] [varchar](50) NULL,
	[Serie] [varchar](50) NULL,
	[revalorizacion] [int] NULL,
	[Depreciable] [int] NULL,
	[IdTipoDepreciacion] [int] NULL,
	[UnidadMedida] [varchar](30) NULL,
	[Fecha_Baja] [datetime] NULL,
	[IdBaja] [int] NULL,
	[Valor_residual] [numeric](18, 2) NULL,
	[IdTipoAdquisicion] [int] NULL,
	[Cuenta_compra] [nchar](10) NULL,
	[Cuenta_Revalorizacion] [nchar](10) NULL,
	[Cuenta_Depreciacion] [nchar](10) NULL,
	[Cuenta_Readecuaciones] [nchar](10) NULL,
	[tipo_situacion] [nchar](10) NULL,
	[fecha_compraTributaria] [datetime] NULL,
	[Tipo_documento] [int] NULL,
	[Numero_Documento] [nchar](15) NULL,
	[Ruc] [nchar](13) NULL,
	[Valor_CompraTributaria] [numeric](18, 2) NULL,
	[Valor_CompraFinanciera] [numeric](18, 2) NULL,
	[Vida_UtilTributaria] [int] NULL,
	[Vida_UtilFinaciera] [int] NULL,
	[MesAnio_revalorizacion] [datetime] NULL,
	[MesAnio_Depreciacion] [datetime] NULL,
	[Revalorizacion_Acumulada] [numeric](18, 2) NULL,
	[Depreciacion_Acumulada] [numeric](18, 2) NULL,
	[Ficha_tecnica] [text] NULL,
	[NroAutorizacion] [nchar](20) NULL,
	[PorcentaDeprecia] [numeric](6, 2) NULL,
	[IdEmpresa] [int] NULL,
	[estado] [bit] NULL,
	[idRevaluacion] [int] NULL,
	[MontoRevaluacion] [numeric](18, 2) NULL,
	[VidaRevaluacion] [int] NULL,
	[IdComponenteActivo] [int] NULL,
 CONSTRAINT [PK_Tbl_AFMaestroActivoFijo] PRIMARY KEY CLUSTERED 
(
	[IdACtivoFijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AFMarca]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AFMarca](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_tbl_AfMarca] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFModificacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFModificacion](
	[IdModificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdActivoFijo] [int] NULL,
	[Fecha] [datetime] NULL,
	[Monto_Invertido] [numeric](18, 2) NULL,
	[Monto_Agregado] [numeric](18, 2) NULL,
	[Vida_UTilTributaria] [int] NULL,
	[Vida_UtilFinanciera] [int] NULL,
	[Documento] [nchar](100) NULL,
	[Descripcion] [char](250) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFProceso]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFProceso](
	[IdProceso] [int] IDENTITY(1,1) NOT NULL,
	[IdActivoFijo] [int] NULL,
	[MesProceso] [nchar](10) NULL,
	[ValorAjustado] [numeric](18, 2) NULL,
	[ValorHistorico] [numeric](18, 2) NULL,
	[DepreciacionInicial] [numeric](18, 2) NULL,
	[DepreciacionHistorica] [numeric](18, 2) NULL,
	[DepreciacionAjustada] [numeric](18, 2) NULL,
	[DepreciacionMensual] [numeric](18, 2) NULL,
	[VidaUtilMesProceso] [int] NULL,
	[IdEmpresa] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFProceso] PRIMARY KEY CLUSTERED 
(
	[IdProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFResponsable]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFResponsable](
	[IdResponsable] [int] IDENTITY(1,1) NOT NULL,
	[NDocIdentidad] [nchar](12) NULL,
	[Nombres] [varchar](100) NULL,
	[IdCargo] [int] NULL,
	[Grado] [varchar](100) NULL,
	[IdEmpresa] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFResponsable] PRIMARY KEY CLUSTERED 
(
	[IdResponsable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AFReUbicacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AFReUbicacion](
	[IdReubicacion] [int] IDENTITY(1,1) NOT NULL,
	[IdActivoFijo] [int] NULL,
	[Fecha_Reubicacion] [datetime] NULL,
	[Descripcion] [nvarchar](250) NULL,
	[IdUbicacion] [int] NULL,
	[IdCentroCosto] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AFSede]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AFSede](
	[IdZona] [int] IDENTITY(1,1) NOT NULL,
	[CodZona] [char](6) NOT NULL,
	[Zona] [varchar](50) NOT NULL,
	[Descripcion] [varchar](15) NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFTipoAdquisicion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFTipoAdquisicion](
	[IdTipoAdquisicion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFTipoAdquisicion] PRIMARY KEY CLUSTERED 
(
	[IdTipoAdquisicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFTipoDepreciacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFTipoDepreciacion](
	[IdTipoDepreciacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFTipoDepreciacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoDepreciacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFTipoIngreso]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFTipoIngreso](
	[IdTipoIngreso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFTipoIngreso] PRIMARY KEY CLUSTERED 
(
	[IdTipoIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AFTipoReadecuacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AFTipoReadecuacion](
	[idTipoReadecuacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFUbicacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFUbicacion](
	[IdUbicacion] [int] IDENTITY(1,1) NOT NULL,
	[IdResponsable] [int] NULL,
	[Descripcion] [char](100) NULL,
	[IdEmpresa] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFUbicacion] PRIMARY KEY CLUSTERED 
(
	[IdUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_AFUnidadMedida]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_AFUnidadMedida](
	[IdUnidadMedida] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Abreviatura] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tbl_AFUnidadMedida] PRIMARY KEY CLUSTERED 
(
	[IdUnidadMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_AsignEmpresa_Empleado]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_AsignEmpresa_Empleado](
	[cCodEmpleado] [char](10) NOT NULL,
	[IdEmpresa] [int] NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_BC_Concepto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_BC_Concepto](
	[BC_CodigoConcepto] [nchar](10) NULL,
	[BC_Concepto] [varchar](100) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_BC_DetalleConcepto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_BC_DetalleConcepto](
	[BC_CodConcepto] [nchar](10) NULL,
	[Item] [varchar](50) NULL,
	[Debe] [nchar](10) NULL,
	[Haber] [nchar](10) NULL,
	[formula] [varchar](100) NULL,
	[Variable] [varchar](2) NOT NULL,
	[Estado] [char](1) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_BC_DetalleConcepto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_CAPComercial]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_CAPComercial](
	[cap] [varchar](3) NOT NULL,
	[RUC] [varchar](11) NOT NULL,
	[RazonSocial] [varchar](41) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_CAPCptoComercial]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_CAPCptoComercial](
	[Codigo_CapCpto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[RUC_Cpto] [varchar](11) NULL,
	[Descripcion] [varchar](41) NULL,
	[Tipo] [nchar](10) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_CeaConex]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_CeaConex](
	[SPID] [int] NOT NULL,
	[Status] [nchar](30) NULL,
	[Login] [nchar](128) NULL,
	[HostName] [nchar](128) NULL,
	[BlkBy] [char](5) NULL,
	[DBName] [nchar](128) NULL,
	[Command] [nchar](50) NULL,
	[CPUTime] [int] NULL,
	[DiskIO] [int] NULL,
	[LastBatch] [varchar](255) NULL,
	[ProgramaName] [varchar](255) NULL,
	[SPID2] [smallint] NULL,
	[REQUESTID] [int] NULL,
 CONSTRAINT [PK__Conexion__F43060C90519C6AF] PRIMARY KEY CLUSTERED 
(
	[SPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_ClienteDireccion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_ClienteDireccion](
	[Codigo_ClienteDireccion] [int] IDENTITY(1,1) NOT NULL,
	[idClienteproveedor] [int] NULL,
	[Direccion] [varchar](90) NULL,
	[estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ctrl_AñoProceso]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ctrl_AñoProceso](
	[iIdCabAñoProceso] [int] IDENTITY(1,1) NOT NULL,
	[cAñoProceso] [char](4) NOT NULL,
	[CodZona] [nchar](6) NOT NULL,
	[CodUnidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Ctrl_AñoProceso] PRIMARY KEY CLUSTERED 
(
	[iIdCabAñoProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_ctrl_Grupos]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_ctrl_Grupos](
	[cCodUsuario] [char](6) NULL,
	[cCodTipAux] [char](2) NULL,
	[bEstado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_detalleParametrosAux]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_detalleParametrosAux](
	[idDetalleParametrosAux] [bigint] IDENTITY(1,1) NOT NULL,
	[idParametrosAux] [bigint] NULL,
	[anomes] [nvarchar](10) NULL,
	[monto] [nvarchar](10) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_tbl_detalleParametrosAux] PRIMARY KEY CLUSTERED 
(
	[idDetalleParametrosAux] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Detraccion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Detraccion](
	[CodigoDetraccion] [nchar](7) NOT NULL,
	[Categoria] [varchar](500) NULL,
	[TipoBienServicio] [varchar](150) NULL,
	[OperacionesExceptuadas] [varchar](500) NULL,
	[Porcent] [decimal](10, 2) NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_tbl_Detraccion] PRIMARY KEY CLUSTERED 
(
	[CodigoDetraccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_empresa]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_empresa](
	[codigo_Empresa] [bigint] IDENTITY(1,1) NOT NULL,
	[Razon_Social] [char](100) NULL,
	[RUC] [char](11) NULL,
	[Direccion] [char](100) NULL,
	[Telefono1] [char](10) NULL,
	[Telefono2] [char](10) NULL,
	[Telefono3] [char](100) NULL,
	[Representante_Legal] [char](100) NULL,
	[estado] [bit] NULL,
	[Codigo_tipo_empresa] [int] NULL,
	[Ubigeo] [char](10) NULL,
	[Departamento] [varchar](50) NULL,
	[Provincia] [varchar](50) NULL,
	[Distrito] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Tipo] [varchar](20) NULL,
	[FAltaCert] [datetime] NULL,
	[FBajaCert] [datetime] NULL,
	[Licencia] [varchar](500) NULL,
	[FechaFin] [datetime] NULL,
	[NombBackUp] [varchar](50) NULL,
	[RutaBackUp] [varchar](100) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_FlujoEfectivo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_FlujoEfectivo](
	[idFlujoEfectivo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoFlujoEfectivo] [char](10) NULL,
	[Descripcion] [varchar](320) NULL,
	[abreviatura] [varchar](50) NULL,
	[formula] [varchar](50) NULL,
	[codigoSbs] [char](10) NULL,
	[CodigoOrden] [char](10) NULL,
	[Orden] [char](2) NULL,
	[Estado] [nchar](10) NULL,
	[Cuenta] [varchar](160) NULL,
	[Cuenta2] [varchar](80) NULL,
 CONSTRAINT [PK_tbl_FlujoEfectivo] PRIMARY KEY CLUSTERED 
(
	[idFlujoEfectivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_LibroElectronico]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_LibroElectronico](
	[libro] [varchar](10) NULL,
	[codlibro] [varchar](10) NULL,
	[tabla] [varchar](20) NULL,
	[DiaImprime] [varchar](2) NOT NULL,
	[detalle] [varchar](1500) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Libros]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Libros](
	[idCodigo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nchar](3) NOT NULL,
	[NameLibro] [varchar](150) NULL,
	[Estado] [bit] NULL,
	[codMGC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Libros] PRIMARY KEY CLUSTERED 
(
	[idCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_MaestroEstadosIntegrales]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_MaestroEstadosIntegrales](
	[idEstadosIntegrales] [int] IDENTITY(1,1) NOT NULL,
	[orden] [int] NOT NULL,
	[rpt] [varchar](11) NOT NULL,
	[tipo] [varchar](30) NOT NULL,
	[cpto] [varchar](50) NOT NULL,
	[cta] [varchar](2) NOT NULL,
	[formula] [varchar](60) NOT NULL,
	[ctagral] [varchar](2) NOT NULL,
	[multiplica] [int] NOT NULL,
	[estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_MovimientoCajaC]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_MovimientoCajaC](
	[idMovimientoCajaC] [int] IDENTITY(1,1) NOT NULL,
	[anio] [char](4) NULL,
	[mes] [char](2) NULL,
	[zona] [nchar](10) NULL,
	[codUnidadEconomica] [nchar](10) NULL,
	[NroDoc] [nchar](10) NULL,
	[FechaContable] [datetime] NULL,
	[codMGC] [char](2) NULL,
	[Glosa] [varchar](200) NULL,
	[RucEmitido] [nchar](11) NULL,
	[CodigoCtaBancaria] [char](12) NULL,
	[CodigoTipoDocPago] [char](4) NULL,
	[NroDocPago] [nchar](14) NULL,
	[Monto] [decimal](18, 2) NULL,
	[transferido] [nchar](20) NULL,
	[Correlativo] [nchar](10) NULL,
	[Estado] [char](1) NULL,
	[TransferidoAnt] [nchar](20) NULL,
 CONSTRAINT [PK_tbl_MovimientoCajaC] PRIMARY KEY CLUSTERED 
(
	[idMovimientoCajaC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_MovimientoCajaD]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_MovimientoCajaD](
	[idMovimientoCajaD] [int] IDENTITY(1,1) NOT NULL,
	[idMovimientoCajaC] [int] NULL,
	[CodunidadEconomica] [nchar](10) NULL,
	[NroDocumento] [char](10) NULL,
	[FechaContable] [datetime] NULL,
	[TipoMedioPago] [nchar](3) NULL,
	[codpro] [char](14) NULL,
	[Glosa] [varchar](250) NULL,
	[FlujoEfectivo] [nchar](10) NULL,
	[CodigoDocumentoFuente] [char](2) NULL,
	[NroDocumentoFuente] [char](14) NULL,
	[FechaDocFuente] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[CodigoCtaBancaria] [char](12) NULL,
	[CodCuenta] [char](12) NULL,
	[impDebe] [decimal](18, 2) NULL,
	[impHaber] [decimal](18, 2) NULL,
	[NroOperacion] [char](40) NULL,
	[NroCheque] [char](40) NULL,
	[estado] [char](1) NULL,
	[reparo] [char](1) NULL,
	[TipoDoc] [char](3) NULL,
	[TipoOper] [int] NULL,
	[MontoIGV] [decimal](12, 3) NULL,
	[MontoISC] [decimal](10, 2) NULL,
	[MontoRetencion4] [decimal](10, 2) NULL,
	[RIgv] [bit] NULL,
	[Afecto] [bit] NULL,
	[CostearIgv] [char](1) NULL,
	[Direccion] [varchar](90) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_mst_gasto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_mst_gasto](
	[Codigo_Documento_Gasto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](100) NULL,
	[Cuenta_contable] [char](10) NULL,
	[Cuenta_ContableH] [char](10) NULL,
	[ResumenAutomatico] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_tbl_mst_gasto] PRIMARY KEY CLUSTERED 
(
	[Codigo_Documento_Gasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_msto_accionistas]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_msto_accionistas](
	[IdAccionista] [int] IDENTITY(1,1) NOT NULL,
	[CodAccionista] [char](6) NOT NULL,
	[Accionista] [varchar](50) NOT NULL,
	[Descripcion] [varchar](15) NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL,
	[documento] [nchar](11) NULL,
	[valorAccion] [int] NULL,
	[nroAccion] [float] NULL,
	[PorcentajeParticipacion] [float] NULL,
	[anio] [nchar](4) NULL,
	[mes] [nchar](2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_msto_ClienteProveedor]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_msto_ClienteProveedor](
	[IdClienteProveedor] [int] IDENTITY(1,1) NOT NULL,
	[CodClienteProveedor] [nchar](10) NULL,
	[RazonSocial] [varchar](100) NULL,
	[RUC] [char](14) NULL,
	[Nombre] [nvarchar](30) NULL,
	[Apellido] [nvarchar](30) NULL,
	[Telefono] [char](11) NULL,
	[IdTipoClienteProveedor] [int] NULL,
	[Direccion] [varchar](100) NULL,
	[CodZona] [nchar](6) NULL,
	[Cobrador] [varchar](90) NULL,
	[Correo] [nvarchar](60) NULL,
	[PaginaWeb] [nvarchar](70) NULL,
	[RepreLegal] [nvarchar](60) NULL,
	[CodAval] [char](10) NULL,
	[Aval] [nvarchar](60) NULL,
	[DireccionAval] [nvarchar](60) NULL,
	[TelefonoAval] [char](11) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdClienteProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_msto_Crp]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_msto_Crp](
	[iIdCrp] [int] NOT NULL,
	[cCodCrp] [char](14) NOT NULL,
	[vDesCrp] [nvarchar](255) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_msto_Personal]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_msto_Personal](
	[iIdEmpleado] [int] NOT NULL,
	[cCodEmpleado] [char](10) NOT NULL,
	[vPriNombre] [nvarchar](100) NOT NULL,
	[vPriApellido] [nvarchar](100) NOT NULL,
	[vSegApellido] [nvarchar](100) NOT NULL,
	[cCodUnidadEconomica] [char](14) NOT NULL,
	[cCodDepartamento] [char](14) NOT NULL,
	[cCodCrp] [char](14) NOT NULL,
	[cLogUsuario] [varchar](20) NULL,
	[cPasUsuario] [varchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_ParametrosAux]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_ParametrosAux](
	[idParametrosAux] [bigint] IDENTITY(1,1) NOT NULL,
	[orden] [int] NULL,
	[descripcion] [nvarchar](50) NULL,
	[monto] [nvarchar](10) NULL,
	[ctadebe] [nvarchar](10) NULL,
	[ctahaber] [nvarchar](10) NULL,
	[idempresa] [bigint] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_tbl_ParametrosAux] PRIMARY KEY CLUSTERED 
(
	[idParametrosAux] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_ActOper]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_ActOper](
	[idCodActOper] [int] IDENTITY(1,1) NOT NULL,
	[CodigoActOper] [varchar](10) NULL,
	[DetalleActividad] [varchar](150) NULL,
	[CodObjetivo] [varchar](10) NULL,
	[idcodObjetivo] [int] NOT NULL,
	[Codunidad] [varchar](10) NULL,
	[Unidad] [nvarchar](25) NULL,
	[estado] [bit] NOT NULL,
	[anio] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_LogActOper] PRIMARY KEY CLUSTERED 
(
	[idCodActOper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_Cab_CN]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_Cab_CN](
	[idCabCN] [int] IDENTITY(1,1) NOT NULL,
	[idCodActOper] [int] NOT NULL,
	[anio] [char](4) NULL,
	[codigo_act_oper] [varchar](10) NULL,
	[actividad] [varchar](3) NULL,
	[orden] [varchar](3) NULL,
	[CodActOrden] [varchar](15) NULL,
	[Principal] [char](10) NULL,
	[codigo_actividad] [int] NULL,
	[detalleActividad] [nvarchar](255) NULL,
	[clasifica_gasto] [varchar](15) NOT NULL,
	[codunidad] [int] NOT NULL,
	[undprincipal] [char](2) NULL,
	[costo_uni] [numeric](18, 4) NULL,
	[can_ene] [numeric](18, 4) NULL,
	[can_feb] [numeric](18, 4) NULL,
	[can_mar] [numeric](18, 4) NULL,
	[can_abr] [numeric](18, 4) NULL,
	[can_may] [numeric](18, 4) NULL,
	[can_jun] [numeric](18, 4) NULL,
	[can_jul] [numeric](18, 4) NULL,
	[can_ago] [numeric](18, 4) NULL,
	[can_set] [numeric](18, 4) NULL,
	[can_oct] [numeric](18, 4) NULL,
	[can_nov] [numeric](18, 4) NULL,
	[can_dic] [numeric](18, 4) NULL,
	[can_tot] [numeric](18, 4) NULL,
	[cost_ene] [numeric](18, 4) NULL,
	[cost_feb] [numeric](18, 4) NULL,
	[cost_mar] [numeric](18, 4) NULL,
	[cost_abr] [numeric](18, 4) NULL,
	[cost_may] [numeric](18, 4) NULL,
	[cost_jun] [numeric](18, 4) NULL,
	[cost_jul] [numeric](18, 4) NULL,
	[cost_ago] [numeric](18, 4) NULL,
	[cost_set] [numeric](18, 4) NULL,
	[cost_oct] [numeric](18, 4) NULL,
	[cost_nov] [numeric](18, 4) NULL,
	[cost_dic] [numeric](18, 4) NULL,
	[cost_total] [numeric](18, 4) NULL,
	[IdEmpresa] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Ppto_Cab_CN] PRIMARY KEY CLUSTERED 
(
	[idCabCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_Certificado]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_Certificado](
	[idCertificado] [int] IDENTITY(1,1) NOT NULL,
	[NroCertificado] [nchar](20) NULL,
	[Codigo_Pedido] [nchar](10) NOT NULL,
	[NroOrden] [nchar](30) NULL,
	[NroFur] [nchar](30) NULL,
	[FFinancia] [nchar](100) NULL,
	[Programa] [nchar](100) NULL,
	[Actividad] [nchar](100) NULL,
	[monto] [numeric](18, 2) NULL,
	[fecha_certi] [datetime] NULL,
	[idTrabajadorSoli] [int] NULL,
	[estado] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_Ppto_Clasificador]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_Ppto_Clasificador](
	[idCodClasificador] [int] IDENTITY(1,1) NOT NULL,
	[Codclasificador] [varchar](15) NULL,
	[DescripcionClasif] [nvarchar](255) NULL,
	[Anio] [varchar](4) NULL,
	[estado] [bit] NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_Det_CN]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_Det_CN](
	[idDetCN] [int] IDENTITY(1,1) NOT NULL,
	[idCabCN] [int] NOT NULL,
	[anio] [char](4) NULL,
	[codigo_act_oper] [varchar](10) NULL,
	[actividad] [varchar](3) NULL,
	[orden] [varchar](3) NULL,
	[CodActOrden] [varchar](15) NULL,
	[Principal] [char](10) NULL,
	[codigo_actividad] [int] NULL,
	[detalleActividad] [nvarchar](255) NULL,
	[clasifica_gasto] [nvarchar](50) NULL,
	[codunidad] [int] NULL,
	[undprincipal] [char](2) NULL,
	[costo_uni] [numeric](18, 4) NULL,
	[can_ene] [numeric](18, 4) NULL,
	[can_feb] [numeric](18, 4) NULL,
	[can_mar] [numeric](18, 4) NULL,
	[can_abr] [numeric](18, 4) NULL,
	[can_may] [numeric](18, 4) NULL,
	[can_jun] [numeric](18, 4) NULL,
	[can_jul] [numeric](18, 4) NULL,
	[can_ago] [numeric](18, 4) NULL,
	[can_set] [numeric](18, 4) NULL,
	[can_oct] [numeric](18, 4) NULL,
	[can_nov] [numeric](18, 4) NULL,
	[can_dic] [numeric](18, 4) NULL,
	[can_tot] [numeric](18, 4) NULL,
	[cost_ene] [numeric](18, 4) NULL,
	[cost_feb] [numeric](18, 4) NULL,
	[cost_mar] [numeric](18, 4) NULL,
	[cost_abr] [numeric](18, 4) NULL,
	[cost_may] [numeric](18, 4) NULL,
	[cost_jun] [numeric](18, 4) NULL,
	[cost_jul] [numeric](18, 4) NULL,
	[cost_ago] [numeric](18, 4) NULL,
	[cost_set] [numeric](18, 4) NULL,
	[cost_oct] [numeric](18, 4) NULL,
	[cost_nov] [numeric](18, 4) NULL,
	[cost_dic] [numeric](18, 4) NULL,
	[cost_total] [numeric](18, 4) NULL,
	[IdEmpresa] [int] NOT NULL,
	[estado] [int] NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_GerenciaArea]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_GerenciaArea](
	[idCodGerencia] [int] IDENTITY(1,1) NOT NULL,
	[codigoGerencia] [nvarchar](50) NULL,
	[DetalleGerenciaUnidad] [varchar](70) NULL,
	[CodigoGerenciaxArea] [varchar](10) NULL,
	[ObjetivoEstrategico] [varchar](50) NULL,
	[DetalleObjetivoGral] [varchar](70) NULL,
	[Siglas] [nchar](10) NULL,
	[Correl] [int] NULL,
	[IdEmpresa] [int] NULL,
	[programa] [nchar](100) NULL,
	[actividad] [nchar](100) NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_LogGerenciaArea] PRIMARY KEY CLUSTERED 
(
	[idCodGerencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_Objetivo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_Objetivo](
	[idCodObjetivo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoObjetivo] [varchar](10) NULL,
	[DetalleObjetivo] [nvarchar](100) NULL,
	[idcodGerencia] [int] NOT NULL,
	[estado] [bit] NOT NULL,
	[anio] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_LogObjetivo] PRIMARY KEY CLUSTERED 
(
	[idCodObjetivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_Trabajador]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_Trabajador](
	[idCodTrabajador] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](10) NULL,
	[Nombre] [varchar](80) NULL,
	[condicion] [varchar](20) NULL,
	[cargo] [varchar](60) NULL,
	[Ccosto] [varchar](10) NULL,
	[clasif] [varchar](10) NULL,
	[Act] [varchar](10) NULL,
	[ActOper] [varchar](10) NULL,
	[Situacion] [nchar](1) NULL,
	[IdEmpresa] [int] NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_LogTrabajador] PRIMARY KEY CLUSTERED 
(
	[idCodTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Ppto_Unidad]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Ppto_Unidad](
	[Codigo_Unidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](40) NULL,
	[Abreviatura] [char](20) NULL,
	[valor] [float] NULL,
	[estado] [bit] NULL,
	[codigo_sunat] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_Ppto_Unidad] PRIMARY KEY CLUSTERED 
(
	[Codigo_Unidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_sunatClase]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_sunatClase](
	[codigoClase] [varchar](6) NOT NULL,
	[codigoFamilia] [varchar](4) NOT NULL,
	[descripcion] [varchar](133) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_sunatFamilia]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_sunatFamilia](
	[codigoFamilia] [varchar](4) NOT NULL,
	[codigoSegmento] [varchar](2) NOT NULL,
	[descripcion] [varchar](86) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_sunatProducto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_sunatProducto](
	[codigoProducto] [varchar](9) NOT NULL,
	[codigoClase] [varchar](6) NOT NULL,
	[descripcion] [varchar](156) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_SunatSegmento]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_SunatSegmento](
	[codigoSegmento] [varchar](2) NOT NULL,
	[descripcion] [varchar](119) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tbl_Tipo_Empresa]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Tbl_Tipo_Empresa](
	[Codigo_Tipo_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](30) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_Tipo_Medio_Pago]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_Tipo_Medio_Pago](
	[CodTipoMedioPago] [nchar](3) NOT NULL,
	[TipoMedioPago] [varchar](200) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tipo_Medio_Pago] PRIMARY KEY CLUSTERED 
(
	[CodTipoMedioPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_tipoActMtto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_tipoActMtto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](3) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Tipo] [varchar](10) NOT NULL,
	[estado] [int] NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_TipoDocumentoIdentidad]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_TipoDocumentoIdentidad](
	[CodTipoDocumentoIdentidad] [nchar](1) NOT NULL,
	[TipoDocumentoIdentidad] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_TipoDocumentoIdentidad] PRIMARY KEY CLUSTERED 
(
	[CodTipoDocumentoIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_TipoExistencia]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_TipoExistencia](
	[CodTipoExistencia] [nchar](2) NOT NULL,
	[TipoExistencia] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_TipoExistencia] PRIMARY KEY CLUSTERED 
(
	[CodTipoExistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_TipoIntangible]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_TipoIntangible](
	[CodTipoIntangible] [nchar](2) NOT NULL,
	[TipoIntangible] [varchar](50) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_tbl_TipoIntangible] PRIMARY KEY CLUSTERED 
(
	[CodTipoIntangible] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_TipoOperacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_TipoOperacion](
	[CodTipoOperacion] [nchar](2) NOT NULL,
	[TipoOperacion] [varchar](50) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_tbl_TipoOperacion] PRIMARY KEY CLUSTERED 
(
	[CodTipoOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_TipoUnidadMedida]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_TipoUnidadMedida](
	[CodUnidadMedidad] [nchar](2) NOT NULL,
	[UnidadMedida] [varchar](50) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_tbl_TipoUnidadMedida] PRIMARY KEY CLUSTERED 
(
	[CodUnidadMedidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tbl_UtilidadImpuesto]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tbl_UtilidadImpuesto](
	[idUtilidadImpuesto] [int] IDENTITY(1,1) NOT NULL,
	[codzona] [char](10) NULL,
	[codUnidad] [char](10) NULL,
	[Mes1] [char](2) NULL,
	[Mes2] [char](2) NULL,
	[Anio] [char](4) NULL,
	[UtilidadContable] [numeric](18, 2) NULL,
	[Reparo] [numeric](18, 2) NULL,
	[PorParticipa] [char](3) NULL,
	[MontoParticipa] [numeric](18, 2) NULL,
	[PorRenta] [char](3) NULL,
	[MontoRenta] [numeric](18, 2) NULL,
	[TotalRenta] [numeric](18, 2) NULL,
	[TotalUNeta] [numeric](18, 2) NULL,
	[TotalUtilidad] [numeric](18, 2) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblDetSeleccion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tblDetSeleccion](
	[ruc] [char](14) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tempo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tempo](
	[codcc] [varchar](10) NULL,
	[nomcc] [varchar](161) NULL,
	[m1_empl] [char](8) NOT NULL,
	[e_des1] [char](60) NOT NULL,
	[cpto] [char](6) NOT NULL,
	[c_des1] [char](50) NULL,
	[cantidad] [numeric](38, 2) NULL,
	[importe] [numeric](38, 2) NULL,
	[debe] [varchar](12) NULL,
	[haber] [varchar](12) NULL,
	[e_carg] [char](2) NOT NULL,
	[cargo] [char](60) NULL,
	[e_area] [char](4) NOT NULL,
	[area] [char](60) NULL,
	[afp] [char](60) NULL,
	[mes] [char](20) NULL,
	[tdoc] [char](2) NULL,
	[ndoc] [char](10) NULL,
	[ccta] [char](12) NULL,
	[e_ctaotr] [char](20) NULL,
	[e_codu] [char](10) NOT NULL,
	[fechdoc] [char](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[TipoCambio]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[TipoCambio](
	[IdTipoCambio] [bigint] IDENTITY(1,1) NOT NULL,
	[IdMoneda] [bigint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[TipoCambioCompra] [decimal](10, 3) NOT NULL,
	[TipoCambioVenta] [decimal](10, 3) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCambio] PRIMARY KEY CLUSTERED 
(
	[IdTipoCambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[TipoClienteProveedor]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[TipoClienteProveedor](
	[IdTipoClienteProveedor] [int] IDENTITY(1,1) NOT NULL,
	[TipoClienteProveedor] [nvarchar](20) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoClienteProveedor] PRIMARY KEY CLUSTERED 
(
	[IdTipoClienteProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[TipoDocSerieNro]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[TipoDocSerieNro](
	[CodigoDocumento] [char](2) NULL,
	[DesTipoDocumento] [varchar](60) NULL,
	[Descripcion] [varchar](20) NULL,
	[Serie] [char](3) NULL,
	[Numero] [char](3) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[CodigoDocumento] [char](2) NULL,
	[DesTipoDocumento] [varchar](60) NULL,
	[Descripcion] [varchar](20) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[TipoMovimientoContable]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[TipoMovimientoContable](
	[IdTipoMovContable] [char](18) NULL,
	[Descripcion] [char](18) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpAFRecopilacion]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpAFRecopilacion](
	[item] [float] NULL,
	[codfamilia] [float] NULL,
	[familia] [nvarchar](255) NULL,
	[codsede] [float] NULL,
	[sede] [nvarchar](255) NULL,
	[CODIGO] [nvarchar](255) NULL,
	[codArea] [float] NULL,
	[AREA] [nvarchar](255) NULL,
	[codrespomsable] [float] NULL,
	[RESPONSABLE] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[CodMarca] [float] NULL,
	[MARCA] [nvarchar](255) NULL,
	[MODELO] [nvarchar](255) NULL,
	[SERIE] [nvarchar](255) NULL,
	[ESTADO] [nvarchar](255) NULL,
	[TIPO_BIEN] [nvarchar](255) NULL,
	[codigo_ant] [nvarchar](255) NULL,
	[Cuenta_Contable] [nvarchar](255) NULL,
	[saldo_Inicial] [float] NULL,
	[Fecha_Adquisicion] [datetime] NULL,
	[fecha_Inicio_Actividades] [datetime] NULL,
	[TIPOdOC] [nvarchar](255) NULL,
	[Nro_Comprobante] [nvarchar](255) NULL,
	[Poncentaje_Depreciacion] [float] NULL,
	[Depreciacion_Acumulada] [float] NULL,
	[Depreciacion_Ejercicio] [float] NULL,
	[Depreciacion_Historica] [float] NULL,
	[porDepreAnual] [float] NULL,
	[mesesdepre] [float] NULL,
	[F31] [float] NULL,
	[F32] [nvarchar](255) NULL,
	[F33] [nvarchar](255) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpAFReportes]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpAFReportes](
	[responsable] [varchar](100) NULL,
	[ubicacion] [char](100) NULL,
	[codigo_barrasActivo] [nchar](15) NULL,
	[cuenta_compra] [char](10) NULL,
	[NombreAF] [text] NULL,
	[nombre_corto] [varchar](50) NULL,
	[marca] [nvarchar](50) NULL,
	[modelo] [varchar](50) NULL,
	[serie] [varchar](50) NULL,
	[valor_CompraTributaria] [numeric](18, 2) NULL,
	[adquisicion] [numeric](18, 2) NULL,
	[agregado] [numeric](38, 2) NOT NULL,
	[retiro] [int] NOT NULL,
	[otros] [int] NOT NULL,
	[ValHistorico] [numeric](38, 2) NULL,
	[inflacion] [int] NOT NULL,
	[AjusteInflacion] [numeric](38, 2) NULL,
	[fecha_CompraTributaria] [datetime] NULL,
	[fecha_ingreso] [datetime] NULL,
	[descripcion] [varchar](100) NULL,
	[docAutoriza] [varchar](1) NOT NULL,
	[PorcentaDeprecia] [numeric](6, 2) NULL,
	[depreAcumAnt] [decimal](38, 2) NOT NULL,
	[depreAcumAct] [decimal](38, 2) NULL,
	[DepreRelaRetiro] [int] NOT NULL,
	[DepreRelaOtros] [int] NOT NULL,
	[AcumHistorico] [decimal](38, 2) NOT NULL,
	[DepreAcumulAjus] [decimal](38, 2) NOT NULL,
	[valorNeto] [numeric](38, 2) NOT NULL,
	[familia] [varchar](105) NULL,
	[zona] [varchar](50) NULL,
	[CtaDeprecia] [char](10) NULL,
	[ctaRevaloriza] [nchar](10) NULL,
	[ctaReadecua] [char](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[tmpAFReportes1]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpAFReportes1](
	[codigo_barrasActivo] [nchar](15) NULL,
	[NombreAF] [text] NULL,
	[zona] [varchar](50) NULL,
	[familia] [varchar](105) NULL,
	[CtaDeprecia] [char](10) NULL,
	[ctaRevaloriza] [nchar](10) NULL,
	[ctaReadecua] [char](10) NULL,
	[depreAcumAct] [decimal](38, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[tmpApertura]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpApertura](
	[zona] [char](10) NULL,
	[codunidadeconomica] [char](10) NULL,
	[codigoDocumentoReferencia] [char](2) NULL,
	[NroDocReferencia] [char](14) NULL,
	[FechaDocReferencia] [datetime] NULL,
	[cuenta] [char](12) NULL,
	[codpro] [char](14) NULL,
	[saldo] [decimal](38, 2) NULL,
	[tipo_refcomprobmodi] [char](2) NULL,
	[serie_refcomprobmodi] [char](4) NULL,
	[nro_refcomprobmodi] [nchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpBC]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpBC](
	[codcuenta] [varchar](12) NULL,
	[indebe] [numeric](38, 2) NOT NULL,
	[inhaber] [numeric](38, 2) NOT NULL,
	[andebe] [decimal](38, 2) NOT NULL,
	[anhaber] [decimal](38, 2) NOT NULL,
	[DEBE] [decimal](38, 2) NOT NULL,
	[HABER] [decimal](38, 2) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpBCRes]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpBCRes](
	[Cuenta] [varchar](12) NULL,
	[DCuenta] [varchar](200) NULL,
	[inicialdebe] [numeric](38, 2) NULL,
	[inicialhaber] [numeric](38, 2) NULL,
	[anteriordebe] [numeric](38, 2) NULL,
	[anteriorhaber] [numeric](38, 2) NULL,
	[mesdebe] [numeric](38, 2) NULL,
	[meshaber] [numeric](38, 2) NULL,
	[saldodebe] [numeric](2, 2) NOT NULL,
	[saldohaber] [numeric](2, 2) NOT NULL,
	[inventariodebe] [numeric](38, 2) NULL,
	[inventariohaber] [numeric](38, 2) NULL,
	[naturalezadebe] [numeric](38, 2) NULL,
	[naturalezahaber] [numeric](38, 2) NULL,
	[funciondebe] [numeric](38, 2) NULL,
	[funcionhaber] [numeric](38, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpBCTC]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpBCTC](
	[codcuenta] [varchar](12) NULL,
	[indebe] [numeric](38, 2) NOT NULL,
	[inhaber] [numeric](38, 2) NOT NULL,
	[andebe] [decimal](38, 2) NOT NULL,
	[anhaber] [decimal](38, 2) NOT NULL,
	[DEBE] [decimal](38, 2) NOT NULL,
	[HABER] [decimal](38, 2) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpCliTC]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpCliTC](
	[codzona] [char](10) NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[nroDocumento] [char](10) NULL,
	[codpro] [char](14) NULL,
	[CodDoc] [varchar](20) NULL,
	[codigoDocumentoReferencia] [char](2) NULL,
	[NroDocReferencia] [char](14) NULL,
	[fechadocreferencia] [datetime] NULL,
	[codcuenta] [char](12) NULL,
	[impdebe] [decimal](38, 2) NULL,
	[imphaber] [decimal](38, 2) NULL,
	[impdebeDolar] [decimal](38, 2) NULL,
	[imphaberdolar] [decimal](38, 2) NULL,
	[moneda] [bigint] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpDaot]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpDaot](
	[Correlativo] [int] NULL,
	[TipoDoc] [varchar](1) NULL,
	[NumeroDoc] [varchar](15) NULL,
	[periodo] [varchar](4) NULL,
	[tipoPersona] [varchar](2) NULL,
	[TipoDocumento] [varchar](1) NULL,
	[NroDocumento] [varchar](15) NULL,
	[Importe] [decimal](18, 2) NULL,
	[Nombre1] [varchar](30) NULL,
	[Nombre2] [varchar](30) NULL,
	[ApePAterno] [varchar](20) NULL,
	[ApeMaterno] [varchar](30) NULL,
	[RazSocial] [varchar](100) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpDifTC]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpDifTC](
	[fechadocreferencia] [datetime] NULL,
	[tcCompraPro] [decimal](10, 3) NOT NULL,
	[tcVentaPro] [decimal](10, 3) NULL,
	[codpro] [char](14) NULL,
	[codigoDocumentoReferencia] [char](2) NULL,
	[NroDocReferencia] [char](14) NULL,
	[impdebe] [decimal](38, 2) NULL,
	[impdebeDolar] [decimal](38, 2) NULL,
	[imphaber] [decimal](38, 2) NULL,
	[imphaberDolar] [decimal](38, 2) NULL,
	[codcuenta] [char](12) NULL,
	[fecha] [datetime] NOT NULL,
	[TipoCambioCompra] [decimal](10, 3) NOT NULL,
	[TipoCambioVenta] [decimal](10, 3) NULL,
	[dif] [decimal](11, 3) NULL,
	[diftcD] [decimal](38, 5) NULL,
	[diftcH] [decimal](38, 5) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpDocpendientes]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpDocpendientes](
	[grupo] [varchar](2) NOT NULL,
	[codzona] [char](6) NULL,
	[unidad_economica] [char](10) NULL,
	[codpro] [char](11) NULL,
	[codigoDocumentoReferencia] [char](2) NULL,
	[NrodocReferencia] [char](14) NULL,
	[fechadocreferencia] [datetime] NULL,
	[codcuenta] [char](12) NULL,
	[moneda] [bigint] NULL,
	[impdebe] [decimal](38, 2) NULL,
	[imphaber] [decimal](38, 2) NULL,
	[impdebedolar] [decimal](38, 2) NULL,
	[imphaberdolar] [decimal](38, 2) NULL,
	[dif] [decimal](38, 2) NULL,
	[tcCompra] [decimal](10, 3) NULL,
	[tcVenta] [decimal](10, 3) NULL,
	[diftc] [decimal](38, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpexportaVentas]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpexportaVentas](
	[GRUPO] [nvarchar](255) NULL,
	[ZONA] [nvarchar](255) NULL,
	[UNIDAD_ECONOMICA] [nvarchar](255) NULL,
	[AÑO] [float] NULL,
	[MES] [nvarchar](255) NULL,
	[FECHA_REGISTRO] [datetime] NULL,
	[CUENTA_CONTABLE] [nvarchar](255) NULL,
	[CUENTA_ABONO] [nvarchar](255) NULL,
	[AUTOMATICO] [nvarchar](255) NULL,
	[PROVEEDOR] [nvarchar](255) NULL,
	[Razon_Social] [nvarchar](255) NULL,
	[Direccion] [nvarchar](255) NULL,
	[TIPO_DOCUMENTO] [nvarchar](255) NULL,
	[NRO_DOCUMENTO] [nvarchar](255) NULL,
	[NRO_DOCUMENTO2] [nvarchar](255) NULL,
	[FECHA_DOCUMENTO] [datetime] NULL,
	[DETALLE_VENTA] [nvarchar](280) NULL,
	[TIPO_MONEDA] [nvarchar](255) NULL,
	[TIPO_CAMBIO] [float] NULL,
	[TIPO_OPERACION] [float] NULL,
	[IMPORTE_DEBE] [float] NULL,
	[IMPORTE_HABER] [float] NULL,
	[AFECTO] [float] NULL,
	[MONTO_IGV] [float] NULL,
	[ISC] [float] NULL,
	[MONTO_ISC] [float] NULL,
	[CANCELADO] [float] NULL,
	[PERCEPCION] [float] NULL,
	[MONTO_PERCEPCION] [float] NULL,
	[fechanc] [datetime] NULL,
	[tipo_docnc] [nvarchar](255) NULL,
	[nro_docnc] [nvarchar](255) NULL,
	[voucher] [float] NULL,
	[glosa] [nvarchar](255) NULL,
	[ccosto] [nvarchar](255) NULL,
	[fefec] [nvarchar](255) NULL,
	[Adicional1] [float] NULL,
	[Adicional2] [float] NULL,
	[Adicional3] [float] NULL,
	[OtrosMontos] [float] NULL,
	[CtaCancelado] [varchar](15) NULL,
	[CtaPercepcion] [varchar](10) NULL,
	[CtaIGV] [varchar](10) NULL,
	[CtaISC] [varchar](15) NULL,
	[CtaAUX] [varchar](15) NULL,
	[correlA] [varchar](10) NULL,
	[Nrodocumento] [nvarchar](105) NULL,
	[ctaefec] [varchar](7) NOT NULL,
	[TotDebe] [float] NULL,
	[TotHaber] [float] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpffee]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpffee](
	[codigo] [varchar](10) NULL,
	[total] [numeric](38, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpgrupoconta]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpgrupoconta](
	[IdMGC] [int] IDENTITY(1,1) NOT NULL,
	[CodMGC] [varchar](50) NOT NULL,
	[MGC] [varchar](50) NOT NULL,
	[Sistema] [varchar](50) NOT NULL,
	[CodZona] [varchar](6) NOT NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[Anio] [int] NOT NULL,
	[Apertura] [int] NULL,
	[Ene] [int] NULL,
	[Feb] [int] NULL,
	[Mar] [int] NULL,
	[Abr] [int] NULL,
	[May] [int] NULL,
	[Jun] [int] NULL,
	[Jul] [int] NULL,
	[Ago] [int] NULL,
	[Sep] [int] NULL,
	[Oct] [int] NULL,
	[Nov] [int] NULL,
	[Dic] [int] NULL,
	[Estado] [bit] NULL,
	[CodForm] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLeCompras]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLeCompras](
	[periodo] [varchar](8) NULL,
	[cuo] [nchar](10) NULL,
	[correlativo] [varchar](101) NULL,
	[fEmision] [varchar](10) NULL,
	[fvcto] [varchar](10) NULL,
	[desTipoDocumento] [char](2) NULL,
	[serie] [nvarchar](4) NULL,
	[anioDua] [varchar](4) NULL,
	[nrodocreferencia] [varchar](8) NULL,
	[impcampo9] [varchar](1) NOT NULL,
	[tipdoc] [varchar](1) NULL,
	[ruc] [varchar](14) NULL,
	[proveedor] [varchar](60) NULL,
	[agdoge1] [varchar](15) NULL,
	[igv_1] [varchar](15) NULL,
	[agdoge_ng] [varchar](15) NULL,
	[igv_2] [varchar](15) NULL,
	[agdo_ng] [varchar](15) NULL,
	[igv_3] [varchar](15) NULL,
	[valor_adquisicion] [varchar](15) NULL,
	[isc] [varchar](15) NULL,
	[otroimp] [varchar](15) NULL,
	[otroCpto] [varchar](15) NULL,
	[totalimporte] [varchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipocambio] [varchar](15) NULL,
	[fecha_refcomprobmodi] [varchar](10) NULL,
	[tipo_refcomprobmodi] [varchar](2) NULL,
	[serie_refcomprobmodi] [varchar](4) NULL,
	[codDua] [nvarchar](3) NULL,
	[nro_refcomprobmodi] [varchar](8) NULL,
	[fechadetrac] [varchar](10) NULL,
	[nrodetrac] [varchar](24) NULL,
	[marcasujReten] [varchar](1) NOT NULL,
	[clasbien] [char](24) NULL,
	[identiContrato] [varchar](1) NOT NULL,
	[tipo1] [varchar](1) NOT NULL,
	[tipo2] [varchar](1) NOT NULL,
	[tipo3] [varchar](1) NOT NULL,
	[tipo4] [varchar](1) NOT NULL,
	[mediopago] [varchar](1) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[Cierre] [varchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLeCompras2]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLeCompras2](
	[periodo] [varchar](8) NULL,
	[cuo] [nchar](10) NULL,
	[correlativo] [varchar](101) NULL,
	[fEmision] [varchar](10) NULL,
	[fvcto] [varchar](10) NULL,
	[desTipoDocumento] [char](2) NULL,
	[serie] [nvarchar](4) NULL,
	[anioDua] [varchar](4) NULL,
	[nrodocreferencia] [varchar](8) NULL,
	[impcampo9] [varchar](1) NOT NULL,
	[tipdoc] [varchar](1) NULL,
	[ruc] [varchar](14) NULL,
	[proveedor] [varchar](60) NULL,
	[agdoge1] [varchar](15) NULL,
	[igv_1] [varchar](15) NULL,
	[agdoge_ng] [varchar](15) NULL,
	[igv_2] [varchar](15) NULL,
	[agdo_ng] [varchar](15) NULL,
	[igv_3] [varchar](15) NULL,
	[valor_adquisicion] [varchar](15) NULL,
	[isc] [varchar](15) NULL,
	[otroimp] [varchar](15) NULL,
	[otroCpto] [varchar](15) NULL,
	[totalimporte] [varchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipocambio] [varchar](15) NULL,
	[fecha_refcomprobmodi] [varchar](10) NULL,
	[tipo_refcomprobmodi] [varchar](2) NULL,
	[serie_refcomprobmodi] [varchar](4) NULL,
	[codDua] [nvarchar](3) NULL,
	[nro_refcomprobmodi] [varchar](8) NULL,
	[fechadetrac] [varchar](10) NULL,
	[nrodetrac] [varchar](24) NULL,
	[marcasujReten] [varchar](1) NOT NULL,
	[clasbien] [char](24) NULL,
	[identiContrato] [varchar](1) NOT NULL,
	[tipo1] [varchar](1) NOT NULL,
	[tipo2] [varchar](1) NOT NULL,
	[tipo3] [varchar](1) NOT NULL,
	[tipo4] [varchar](1) NOT NULL,
	[mediopago] [varchar](1) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[Cierre] [varchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLeDiario]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLeDiario](
	[periodo] [varchar](8) NULL,
	[cuo] [char](10) NULL,
	[correlativo] [varchar](101) NULL,
	[codcuenta] [varchar](24) NULL,
	[UniEcon] [varchar](1) NOT NULL,
	[CenCosto] [nchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipodocEmisor] [nvarchar](10) NULL,
	[DocEmisor] [varchar](14) NULL,
	[CodDocRef] [varchar](2) NULL,
	[Serie] [varchar](20) NULL,
	[NroDocRef] [nvarchar](20) NULL,
	[FechContable] [varchar](10) NULL,
	[fvcto] [varchar](10) NOT NULL,
	[foperacion] [varchar](10) NULL,
	[descripcion] [varchar](100) NULL,
	[GlosaReferencia] [varchar](1) NOT NULL,
	[debe] [varchar](15) NULL,
	[haber] [varchar](15) NULL,
	[CodigoLibro] [varchar](1) NOT NULL,
	[estado] [int] NOT NULL,
	[Cierre] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLePle]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLePle](
	[periodo] [varchar](8) NULL,
	[cuo] [varchar](15) NULL,
	[correlativo] [varchar](101) NULL,
	[tipodoc] [varchar](1) NULL,
	[Nrodoc] [varchar](15) NULL,
	[RazSoc] [varchar](100) NULL,
	[tipoDocumento] [varchar](2) NULL,
	[serie] [varchar](42) NULL,
	[nrodocumento] [varchar](42) NULL,
	[FecEmi] [varchar](10) NULL,
	[monto] [varchar](15) NULL,
	[estado] [int] NOT NULL,
	[Cierre] [int] NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLePle2]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLePle2](
	[Campo1] [varchar](12) NULL,
	[Campo2] [varchar](200) NULL,
	[campo3] [numeric](38, 2) NULL,
	[Campo4] [numeric](38, 2) NULL,
	[Campo5] [numeric](38, 2) NULL,
	[Campo6] [numeric](38, 2) NULL,
	[Campo7] [numeric](38, 2) NULL,
	[Campo8] [numeric](38, 2) NULL,
	[Campo9] [numeric](38, 2) NULL,
	[Campo10] [numeric](38, 2) NULL,
	[Campo11] [numeric](38, 2) NULL,
	[Campo12] [numeric](38, 2) NULL,
	[Campo13] [numeric](38, 2) NULL,
	[Campo14] [numeric](38, 2) NULL,
	[Campo15] [numeric](38, 2) NULL,
	[Campo16] [numeric](38, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLePle2CE]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLePle2CE](
	[Campo1] [varchar](12) NULL,
	[Campo2] [varchar](100) NULL,
	[campo3] [varchar](50) NULL,
	[Campo4] [char](10) NULL,
	[campo5] [varchar](10) NULL,
	[Campo6] [varchar](3) NULL,
	[Campo7] [varchar](250) NULL,
	[Campo8] [varchar](13) NULL,
	[Campo9] [varchar](100) NULL,
	[campo10] [varchar](250) NULL,
	[Campo11] [varchar](12) NULL,
	[Campo12] [varchar](100) NULL,
	[Campo13] [varchar](30) NULL,
	[Campo14] [numeric](38, 5) NULL,
	[Campo15] [numeric](38, 5) NULL,
	[campo16] [varchar](10) NULL,
	[campo17] [char](3) NULL,
	[campo18] [varchar](3) NULL,
	[campo19] [varchar](30) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLePle49]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLePle49](
	[Campo1] [varchar](12) NULL,
	[Campo2] [varchar](300) NULL,
	[campo3] [varchar](20) NULL,
	[Campo4] [varchar](100) NULL,
	[Campo5] [numeric](38, 2) NULL,
	[Campo6] [datetime] NULL,
	[campo7] [varchar](40) NULL,
	[campo8] [varchar](12) NULL,
	[campo9] [varchar](15) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLePleCC]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLePleCC](
	[Campo1] [varchar](12) NULL,
	[Campo2] [varchar](100) NULL,
	[campo3] [varchar](50) NULL,
	[Campo4] [char](10) NULL,
	[campo5] [varchar](10) NULL,
	[Campo6] [varchar](3) NULL,
	[Campo7] [varchar](250) NULL,
	[Campo8] [varchar](13) NULL,
	[Campo9] [varchar](100) NULL,
	[campo10] [varchar](250) NULL,
	[Campo11] [varchar](12) NULL,
	[Campo12] [varchar](100) NULL,
	[Campo13] [varchar](30) NULL,
	[Campo14] [numeric](38, 5) NULL,
	[Campo15] [numeric](38, 5) NULL,
	[campo16] [varchar](10) NULL,
	[campo17] [char](3) NULL,
	[campo18] [varchar](3) NULL,
	[campo19] [varchar](30) NULL,
	[campo20] [char](3) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpLeVentas]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpLeVentas](
	[periodo] [varchar](8) NULL,
	[cuo] [nchar](10) NULL,
	[correlativo] [varchar](101) NULL,
	[fEmision] [varchar](10) NULL,
	[fvcto] [varchar](10) NULL,
	[CodigoDocumento] [varchar](2) NULL,
	[serie] [varchar](4) NULL,
	[nrodocumento] [varchar](14) NULL,
	[impcampo8] [varchar](7) NULL,
	[tipdoc] [varchar](1) NULL,
	[ruc] [varchar](14) NULL,
	[proveedor] [varchar](61) NULL,
	[exportacion] [varchar](15) NULL,
	[baseimponible] [varchar](15) NULL,
	[DsctoBI] [varchar](15) NULL,
	[igv] [varchar](15) NULL,
	[DsctoIgv] [varchar](15) NULL,
	[exonerado] [varchar](15) NULL,
	[inafecta] [varchar](15) NULL,
	[isc] [varchar](15) NULL,
	[baseimponibleIva] [varchar](15) NULL,
	[ImpuestoIva] [varchar](15) NULL,
	[otrosTributos] [varchar](15) NULL,
	[otrosCptos] [varchar](15) NULL,
	[Total] [varchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipocambio] [varchar](15) NULL,
	[fecha_refcomprobmodi] [varchar](10) NULL,
	[tipo_refcomprobmodi] [varchar](2) NULL,
	[serie_refcomprobmodi] [varchar](4) NULL,
	[nro_refcomprobmodi] [varchar](9) NULL,
	[identiContrato] [varchar](1) NOT NULL,
	[tipo1] [varchar](1) NOT NULL,
	[medioPago] [varchar](1) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[Cierre] [varchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpMov]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpMov](
	[sit] [varchar](1) NOT NULL,
	[idmoneda] [bigint] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[TipoCambioCompra] [decimal](10, 3) NOT NULL,
	[TipoCambioVenta] [decimal](10, 3) NULL,
	[IncMov] [numeric](6, 3) NULL,
	[codmgc] [char](3) NULL,
	[impdebedolar] [decimal](38, 2) NULL,
	[imphaberdolar] [decimal](38, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpmovd]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpmovd](
	[IDMovContable_D] [int] NOT NULL,
	[IdMovContables_C] [int] NULL,
	[CodUnidadEconomica] [char](10) NULL,
	[NroDocumento] [char](10) NULL,
	[CRP] [char](10) NULL,
	[CodActividad] [char](6) NULL,
	[CodPar] [char](5) NULL,
	[CodSubActividad] [char](5) NULL,
	[FechContable] [datetime] NULL,
	[CodMGC] [char](3) NULL,
	[ClaseMovimiento] [char](1) NULL,
	[CtaDestino] [char](10) NULL,
	[CodigoDocumentoReferencia] [char](2) NULL,
	[NroDocReferencia] [char](14) NULL,
	[FechaDocReferencia] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[CodigoDocumentoFuente] [char](2) NULL,
	[NroDocumentoFuente] [char](14) NULL,
	[FechaDocumentoFuente] [datetime] NULL,
	[CodigoCtaBancaria] [char](12) NULL,
	[NroOperacion] [char](12) NULL,
	[NroCheque] [char](12) NULL,
	[CuentaNaturaleza] [char](12) NULL,
	[CodCuenta] [char](12) NULL,
	[CentroCosto] [char](15) NULL,
	[TipoMov] [char](1) NULL,
	[Glosa] [varchar](250) NULL,
	[Orden] [varchar](250) NULL,
	[Afecto] [bit] NULL,
	[Moneda] [bigint] NULL,
	[TipoCambio] [decimal](7, 3) NULL,
	[impDebe] [decimal](15, 2) NULL,
	[impHaber] [decimal](15, 2) NULL,
	[impDebeDolar] [decimal](15, 2) NULL,
	[impHaberDolar] [decimal](15, 2) NULL,
	[TipoAnexo] [char](2) NULL,
	[CodAnexo] [char](11) NULL,
	[codPro] [char](11) NULL,
	[u_codi] [char](20) NULL,
	[datUsu] [datetime] NULL,
	[Correlativo] [char](10) NULL,
	[estado] [char](1) NULL,
	[Destino] [char](1) NULL,
	[Anexo] [char](11) NULL,
	[GastoIntPersonal] [bit] NULL,
	[cocach] [char](10) NULL,
	[nomanx] [varchar](250) NULL,
	[codIn] [char](11) NULL,
	[tipdca] [char](2) NULL,
	[nrodca] [char](10) NULL,
	[reten] [bit] NULL,
	[rigv] [bit] NULL,
	[corrigv] [char](10) NULL,
	[CodAduana] [nchar](3) NULL,
	[FechDUA] [datetime] NULL,
	[CodDUA] [nchar](30) NULL,
	[ISC] [bit] NULL,
	[tipoOper] [int] NULL,
	[NroDetrac] [varchar](50) NULL,
	[FechaDetrac] [datetime] NULL,
	[CodigoDetraccion] [varchar](3) NULL,
	[Fecha_RefComprobModi] [datetime] NULL,
	[Tipo_RefComprobModi] [char](2) NULL,
	[Serie_RefComprobModi] [char](4) NULL,
	[Nro_RefComprobModi] [nchar](10) NULL,
	[CodigoPercepcion] [varchar](5) NULL,
	[PorcentajePercepcion] [decimal](10, 2) NULL,
	[CuentaAbono] [varchar](50) NULL,
	[MontoIGV] [decimal](12, 3) NULL,
	[NumeroPercepcion] [varchar](11) NULL,
	[FechaPercepcion] [datetime] NULL,
	[MontoRetencion4] [decimal](10, 2) NULL,
	[TipoMedioPago] [nchar](3) NULL,
	[MontoISC] [decimal](10, 2) NULL,
	[MontoDetraccionIvap] [decimal](10, 2) NULL,
	[MontoCuentaAuxiliar] [decimal](10, 2) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpReparo]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpReparo](
	[mgc] [varchar](50) NOT NULL,
	[nrodocumento] [char](10) NULL,
	[mes] [char](15) NULL,
	[fechCo] [datetime] NULL,
	[fechadocreferencia] [datetime] NULL,
	[codpro] [char](14) NULL,
	[proveedor] [nvarchar](100) NULL,
	[codigodocumentoreferencia] [char](2) NULL,
	[destipodocumento] [varchar](60) NULL,
	[nrodocreferencia] [char](14) NULL,
	[glosa] [varchar](250) NULL,
	[impdebe] [decimal](15, 2) NULL,
	[impdebeDolar] [decimal](15, 2) NULL,
	[codcuenta] [char](12) NULL,
	[descripcion] [varchar](150) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpSireCom11]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpSireCom11](
	[rucEmp] [varchar](11) NULL,
	[RazonsocialEmp] [varchar](150) NULL,
	[Periodo] [varchar](8) NULL,
	[fEmision] [varchar](10) NULL,
	[fvcto] [varchar](10) NULL,
	[desTipoDocumento] [char](2) NULL,
	[serie] [nvarchar](4) NULL,
	[anioDua] [varchar](4) NULL,
	[nrodocreferencia] [varchar](8) NULL,
	[impcampo9] [varchar](1) NOT NULL,
	[tipdoc] [varchar](1) NULL,
	[ruc] [varchar](14) NULL,
	[proveedor] [varchar](60) NULL,
	[agdoge1] [varchar](15) NULL,
	[igv_1] [varchar](15) NULL,
	[agdoge_ng] [varchar](15) NULL,
	[igv_2] [varchar](15) NULL,
	[agdo_ng] [varchar](15) NULL,
	[igv_3] [varchar](15) NULL,
	[valor_adquisicion] [varchar](15) NULL,
	[isc] [varchar](15) NULL,
	[otroimp] [varchar](15) NULL,
	[otroCpto] [varchar](15) NULL,
	[totalimporte] [varchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipocambio] [varchar](15) NULL,
	[fecha_refcomprobmodi] [varchar](10) NULL,
	[tipo_refcomprobmodi] [varchar](2) NULL,
	[serie_refcomprobmodi] [varchar](4) NULL,
	[codDua] [nvarchar](3) NULL,
	[nro_refcomprobmodi] [varchar](8) NULL,
	[fechadetrac] [varchar](10) NULL,
	[nrodetrac] [varchar](24) NULL,
	[marcasujReten] [varchar](1) NOT NULL,
	[clasbien] [char](24) NULL,
	[identiContrato] [varchar](1) NOT NULL,
	[tipo1] [varchar](1) NOT NULL,
	[tipo2] [varchar](1) NOT NULL,
	[tipo3] [varchar](1) NOT NULL,
	[tipo4] [varchar](1) NOT NULL,
	[mediopago] [varchar](1) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpSireVen02]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpSireVen02](
	[rucEmp] [varchar](11) NULL,
	[RazonsocialEmp] [varchar](150) NULL,
	[Periodo] [varchar](8) NULL,
	[fEmision] [varchar](10) NULL,
	[fvcto] [varchar](10) NULL,
	[CodigoDocumento] [varchar](2) NULL,
	[serie] [varchar](4) NULL,
	[nrodocumento] [varchar](14) NULL,
	[impcampo8] [varchar](7) NULL,
	[tipdoc] [varchar](1) NULL,
	[ruc] [varchar](14) NULL,
	[proveedor] [varchar](61) NULL,
	[exportacion] [varchar](15) NULL,
	[baseimponible] [varchar](15) NULL,
	[DsctoBI] [varchar](15) NULL,
	[igv] [varchar](15) NULL,
	[DsctoIgv] [varchar](15) NULL,
	[exonerado] [varchar](15) NULL,
	[inafecta] [varchar](15) NULL,
	[isc] [varchar](15) NULL,
	[baseimponibleIva] [varchar](15) NULL,
	[ImpuestoIva] [varchar](15) NULL,
	[otrosTributos] [varchar](15) NULL,
	[otrosCptos] [varchar](15) NULL,
	[Total] [varchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipocambio] [varchar](15) NULL,
	[fecha_refcomprobmodi] [varchar](10) NULL,
	[tipo_refcomprobmodi] [varchar](2) NULL,
	[serie_refcomprobmodi] [varchar](4) NULL,
	[nro_refcomprobmodi] [varchar](9) NULL,
	[identiContrato] [varchar](1) NOT NULL,
	[tipo1] [varchar](1) NOT NULL,
	[medioPago] [varchar](1) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpSireVen03]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpSireVen03](
	[rucEmp] [varchar](11) NULL,
	[RazonsocialEmp] [varchar](150) NULL,
	[Periodo] [varchar](8) NULL,
	[fEmision] [varchar](10) NULL,
	[fvcto] [varchar](10) NULL,
	[CodigoDocumento] [varchar](2) NULL,
	[serie] [varchar](4) NULL,
	[nrodocumento] [varchar](14) NULL,
	[impcampo8] [varchar](7) NULL,
	[tipdoc] [varchar](1) NULL,
	[ruc] [varchar](14) NULL,
	[proveedor] [varchar](61) NULL,
	[exportacion] [varchar](15) NULL,
	[baseimponible] [varchar](15) NULL,
	[DsctoBI] [varchar](15) NULL,
	[igv] [varchar](15) NULL,
	[DsctoIgv] [varchar](15) NULL,
	[exonerado] [varchar](15) NULL,
	[inafecta] [varchar](15) NULL,
	[isc] [varchar](15) NULL,
	[baseimponibleIva] [varchar](15) NULL,
	[ImpuestoIva] [varchar](15) NULL,
	[otrosTributos] [varchar](15) NULL,
	[otrosCptos] [varchar](15) NULL,
	[Total] [varchar](15) NULL,
	[moneda] [varchar](3) NOT NULL,
	[tipocambio] [varchar](15) NULL,
	[fecha_refcomprobmodi] [varchar](10) NULL,
	[tipo_refcomprobmodi] [varchar](2) NULL,
	[serie_refcomprobmodi] [varchar](4) NULL,
	[nro_refcomprobmodi] [varchar](9) NULL,
	[identiContrato] [varchar](1) NOT NULL,
	[tipo1] [varchar](1) NOT NULL,
	[medioPago] [varchar](1) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmptesoreria]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmptesoreria](
	[anio] [char](4) NULL,
	[mes] [char](9) NULL,
	[nrodoc] [nchar](10) NULL,
	[fechacontable] [datetime] NULL,
	[glosa] [varchar](200) NULL,
	[emitido] [nvarchar](112) NULL,
	[codigoctabancaria] [char](12) NULL,
	[descripcion] [varchar](80) NULL,
	[codigotipodocpago] [char](4) NULL,
	[desDocPago] [varchar](20) NULL,
	[nrodocpago] [nchar](14) NULL,
	[monto] [decimal](18, 2) NULL,
	[correlativo] [nchar](10) NULL,
	[tipomediopago] [nchar](3) NOT NULL,
	[proveedor] [nvarchar](112) NOT NULL,
	[glosaDet] [varchar](250) NOT NULL,
	[flujoefectivo] [nchar](10) NOT NULL,
	[codigodocumentofuente] [char](2) NOT NULL,
	[desDocfuente] [varchar](20) NOT NULL,
	[nrodocumentofuente] [char](14) NOT NULL,
	[fechadocfuente] [datetime] NOT NULL,
	[fechavencimiento] [datetime] NOT NULL,
	[codigoctabancariaDet] [char](12) NOT NULL,
	[codcuenta] [char](12) NOT NULL,
	[cuentadet] [varchar](80) NOT NULL,
	[impdebe] [decimal](18, 2) NOT NULL,
	[imphaber] [decimal](18, 2) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[TmpTodos]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[TmpTodos](
	[orden] [int] NULL,
	[total] [varchar](30) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[codcuenta] [varchar](2) NOT NULL,
	[importe] [decimal](38, 2) NULL,
	[porrenta] [decimal](12, 6) NOT NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tmpUltDia]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[tmpUltDia](
	[sit] [varchar](1) NOT NULL,
	[idmoneda] [bigint] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[TipoCambioCompra] [decimal](10, 3) NOT NULL,
	[TipoCambioVenta] [decimal](10, 3) NULL,
	[IncMov] [numeric](6, 3) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Unidad_Economica]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Unidad_Economica](
	[IdUnidadEconomica] [int] IDENTITY(1,1) NOT NULL,
	[CodUnidadEconomica] [char](10) NOT NULL,
	[UnidadEconomica] [varchar](100) NOT NULL,
	[Descripcion] [varchar](10) NULL,
	[CodZona] [char](6) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Unidad_Economica] PRIMARY KEY CLUSTERED 
(
	[IdUnidadEconomica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Usuarios]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Imagen] [image] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[vtemp]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[vtemp](
	[zona] [char](10) NULL,
	[codUnidadEconomica] [char](10) NULL,
	[mes] [char](2) NULL,
	[correlativo] [char](10) NULL,
	[FechaEmision] [varchar](10) NULL,
	[FechaVencimiento] [varchar](10) NULL,
	[CodigoDocumento] [char](2) NULL,
	[Serie] [varchar](4) NULL,
	[Numero] [varchar](19) NULL,
	[TipoDoc] [nchar](10) NULL,
	[ruc] [char](14) NULL,
	[Entidad] [nvarchar](100) NULL,
	[Exportacion] [decimal](38, 2) NULL,
	[BaseImponible] [decimal](38, 2) NULL,
	[Exonerado] [decimal](38, 2) NULL,
	[Inafecta] [decimal](38, 2) NOT NULL,
	[ISC] [decimal](38, 2) NULL,
	[IGV] [decimal](38, 2) NULL,
	[OtrosTributos] [decimal](38, 2) NULL,
	[MontoIcbper] [decimal](38, 2) NULL,
	[OtrosCptos] [decimal](38, 2) NULL,
	[Total] [decimal](38, 2) NULL,
	[TipoCambio] [decimal](7, 3) NULL,
	[Fecha] [varchar](10) NULL,
	[Tipo] [char](2) NULL,
	[Serie2] [char](4) NULL,
	[Numero2] [nchar](10) NULL,
	[Voucher] [nchar](10) NULL,
	[BaseImponibleIva] [decimal](38, 2) NULL,
	[Impuestoiva] [decimal](38, 2) NULL,
	[NombreDocumento] [varchar](60) NULL,
	[NroDocumento] [nchar](10) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[Zona]    Script Date: 18/08/2023 15:31:02 ******/



CREATE TABLE [dbo].[Zona](
	[IdZona] [int] IDENTITY(1,1) NOT NULL,
	[CodZona] [char](6) NOT NULL,
	[Zona] [varchar](100) NOT NULL,
	[Descripcion] [varchar](15) NULL,
	[Estado] [bit] NULL,
	[IdEmpresa] [int] NULL,
 CONSTRAINT [PK_Zona] PRIMARY KEY CLUSTERED 
(
	[IdZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Banco] ADD  CONSTRAINT [DF_Banco_NroOperacion]  DEFAULT ((0)) FOR [NroOperacion]

ALTER TABLE [dbo].[Banco] ADD  CONSTRAINT [DF_Banco_NroCheque]  DEFAULT ((0)) FOR [NroCheque]

ALTER TABLE [dbo].[Banco] ADD  CONSTRAINT [DF_Banco_Estado]  DEFAULT ((1)) FOR [Estado]

ALTER TABLE [dbo].[CentroCosto] ADD  CONSTRAINT [DF_CentroCosto_Tipo]  DEFAULT (N'No') FOR [Tipo]

ALTER TABLE [dbo].[Cierre] ADD  CONSTRAINT [DF_Cierre_Cierre]  DEFAULT ((0)) FOR [Cierre]

ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_Regimen]  DEFAULT ('-') FOR [Regimen]

ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_PorRenta]  DEFAULT ((0)) FOR [PorRenta]

ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_DireccionPle]  DEFAULT ('') FOR [DireccionPle]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Apertura]  DEFAULT ((0)) FOR [Apertura]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Ene]  DEFAULT ((0)) FOR [Ene]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Feb]  DEFAULT ((0)) FOR [Feb]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Mar]  DEFAULT ((0)) FOR [Mar]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Abril]  DEFAULT ((0)) FOR [Abr]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_May]  DEFAULT ((0)) FOR [May]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Jun]  DEFAULT ((0)) FOR [Jun]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Jul]  DEFAULT ((0)) FOR [Jul]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Ago]  DEFAULT ((0)) FOR [Ago]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Sep]  DEFAULT ((0)) FOR [Sep]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Oct]  DEFAULT ((0)) FOR [Oct]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Nov]  DEFAULT ((0)) FOR [Nov]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_Dic]  DEFAULT ((0)) FOR [Dic]

ALTER TABLE [dbo].[MaestroGrupoContable] ADD  CONSTRAINT [DF_MaestroGrupoContable_CodForm]  DEFAULT ((1)) FOR [CodForm]

ALTER TABLE [dbo].[MovContables_D] ADD  CONSTRAINT [DF_MovContables_D_CuentaNaturaleza]  DEFAULT ('-') FOR [CuentaNaturaleza]

ALTER TABLE [dbo].[MovContables_D] ADD  CONSTRAINT [DF_MovContables_D_CodCuenta]  DEFAULT ('-') FOR [CodCuenta]

ALTER TABLE [dbo].[MovContables_D] ADD  CONSTRAINT [DF_MovContables_D_codPro]  DEFAULT ('-') FOR [codPro]

ALTER TABLE [dbo].[MovContables_D] ADD  CONSTRAINT [DF_MovContables_D_reten]  DEFAULT ((0)) FOR [reten]

ALTER TABLE [dbo].[MovContables_D] ADD  CONSTRAINT [DF_MovContables_D_rigv]  DEFAULT ((0)) FOR [rigv]

ALTER TABLE [dbo].[MovContables_D] ADD  CONSTRAINT [DF_MovContables_D_corrigv]  DEFAULT ('-') FOR [corrigv]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_Porcenta]  DEFAULT ((0)) FOR [Porcenta]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_CtaDebe2]  DEFAULT ('') FOR [CtaDebe2]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_Porcenta2]  DEFAULT ((0)) FOR [Porcenta2]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_CtaDebe3]  DEFAULT ('') FOR [CtaDebe3]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_porcenta3]  DEFAULT ((0)) FOR [Porcenta3]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_CtaDebe4]  DEFAULT ('') FOR [CtaDebe4]

ALTER TABLE [dbo].[PlanCuentasContables] ADD  CONSTRAINT [DF_PlanCuentasContables_Porcenta4]  DEFAULT ((0)) FOR [Porcenta4]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_Porcenta]  DEFAULT ((0)) FOR [Porcenta]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_Ctadebe2]  DEFAULT ('') FOR [Ctadebe2]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_Porcenta2]  DEFAULT ((0)) FOR [Porcenta2]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_CtaDebe3]  DEFAULT ('') FOR [CtaDebe3]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_Porcenta3]  DEFAULT ((0)) FOR [Porcenta3]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_CtaDebe4]  DEFAULT ('') FOR [CtaDebe4]

ALTER TABLE [dbo].[PlanCuentasMaestro] ADD  CONSTRAINT [DF_PlanCuentasMaestro_Porcenta4]  DEFAULT ((0)) FOR [Porcenta4]

ALTER TABLE [dbo].[prueba] ADD  CONSTRAINT [DF__prueba__estado__1B0907CE]  DEFAULT ((1)) FOR [estado]

ALTER TABLE [dbo].[Tbl_AFFamilia] ADD  CONSTRAINT [DF_tbl_Familia_Cuenta_contable]  DEFAULT ('') FOR [Cuenta_Contable]

ALTER TABLE [dbo].[tbl_Libros] ADD  CONSTRAINT [DF_Libros_Estado]  DEFAULT ((1)) FOR [Estado]

ALTER TABLE [dbo].[tbl_Libros] ADD  CONSTRAINT [DF_tbl_Libros_codMGC]  DEFAULT ('') FOR [codMGC]

ALTER TABLE [dbo].[tbl_msto_accionistas] ADD  CONSTRAINT [DF_tbl_msto_accionistas_valorAccion]  DEFAULT ((0)) FOR [valorAccion]

ALTER TABLE [dbo].[tbl_msto_accionistas] ADD  CONSTRAINT [DF_tbl_msto_accionistas_nroAccion]  DEFAULT ((0)) FOR [nroAccion]

ALTER TABLE [dbo].[tbl_msto_accionistas] ADD  CONSTRAINT [DF_tbl_msto_accionistas_PorcentajeParticipacion]  DEFAULT ((0)) FOR [PorcentajeParticipacion]

ALTER TABLE [dbo].[tbl_Tipo_Medio_Pago] ADD  CONSTRAINT [DF_Tipo_Medio_Pago_Estado]  DEFAULT ((1)) FOR [Estado]

ALTER TABLE [dbo].[tbl_TipoIntangible] ADD  CONSTRAINT [DF_tbl_TipoIntangible_Estado]  DEFAULT ((1)) FOR [Estado]

ALTER TABLE [dbo].[tbl_TipoOperacion] ADD  CONSTRAINT [DF_tbl_TipoOperacion_Estado]  DEFAULT ((1)) FOR [Estado]

ALTER TABLE [dbo].[tbl_TipoUnidadMedida] ADD  CONSTRAINT [DF_tbl_TipoUnidadMedida_Estado]  DEFAULT ((1)) FOR [Estado]

ALTER TABLE [dbo].[Zona] ADD  CONSTRAINT [DF_Zona_IdEmpresa]  DEFAULT ((1)) FOR [IdEmpresa]

ALTER TABLE [dbo].[Tbl_AFDetalleProceso]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFDetalleProceso_Tbl_AFProceso] FOREIGN KEY([IdProceso])
REFERENCES [dbo].[Tbl_AFProceso] ([IdProceso])

ALTER TABLE [dbo].[Tbl_AFDetalleProceso] CHECK CONSTRAINT [FK_Tbl_AFDetalleProceso_Tbl_AFProceso]

ALTER TABLE [dbo].[Tbl_AFFamilia]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Familia_tbl_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Tbl_AFGrupo] ([IdGrupo])

ALTER TABLE [dbo].[Tbl_AFFamilia] CHECK CONSTRAINT [FK_tbl_Familia_tbl_Grupo]

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Tbl_AFEstado] ([IdEstado])

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo] CHECK CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFEstado]

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFFamilia] FOREIGN KEY([IdFamilia])
REFERENCES [dbo].[Tbl_AFFamilia] ([Idfamilia])

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo] CHECK CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFFamilia]

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFTipoDepreciacion] FOREIGN KEY([IdTipoDepreciacion])
REFERENCES [dbo].[Tbl_AFTipoDepreciacion] ([IdTipoDepreciacion])

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo] CHECK CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFTipoDepreciacion]

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFTipoIngreso] FOREIGN KEY([IdTipoIngreso])
REFERENCES [dbo].[Tbl_AFTipoIngreso] ([IdTipoIngreso])

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo] CHECK CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFTipoIngreso]

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFUbicacion] FOREIGN KEY([IdUbicacion])
REFERENCES [dbo].[Tbl_AFUbicacion] ([IdUbicacion])

ALTER TABLE [dbo].[Tbl_AFMaestroActivoFijo] CHECK CONSTRAINT [FK_Tbl_AFMaestroActivoFijo_Tbl_AFUbicacion]

ALTER TABLE [dbo].[Tbl_AFModificacion]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFModificacion_Tbl_AFMaestroActivoFijo] FOREIGN KEY([IdActivoFijo])
REFERENCES [dbo].[Tbl_AFMaestroActivoFijo] ([IdACtivoFijo])

ALTER TABLE [dbo].[Tbl_AFModificacion] CHECK CONSTRAINT [FK_Tbl_AFModificacion_Tbl_AFMaestroActivoFijo]

ALTER TABLE [dbo].[Tbl_AFProceso]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFProceso_Tbl_AFMaestroActivoFijo] FOREIGN KEY([IdActivoFijo])
REFERENCES [dbo].[Tbl_AFMaestroActivoFijo] ([IdACtivoFijo])

ALTER TABLE [dbo].[Tbl_AFProceso] CHECK CONSTRAINT [FK_Tbl_AFProceso_Tbl_AFMaestroActivoFijo]

ALTER TABLE [dbo].[Tbl_AFResponsable]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFResponsable_Tbl_AFCargo] FOREIGN KEY([IdCargo])
REFERENCES [dbo].[Tbl_AFCargo] ([IdCargo])

ALTER TABLE [dbo].[Tbl_AFResponsable] CHECK CONSTRAINT [FK_Tbl_AFResponsable_Tbl_AFCargo]

ALTER TABLE [dbo].[tbl_AFReUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AFReUbicacion_Tbl_AFMaestroActivoFijo] FOREIGN KEY([IdActivoFijo])
REFERENCES [dbo].[Tbl_AFMaestroActivoFijo] ([IdACtivoFijo])

ALTER TABLE [dbo].[tbl_AFReUbicacion] CHECK CONSTRAINT [FK_tbl_AFReUbicacion_Tbl_AFMaestroActivoFijo]

ALTER TABLE [dbo].[Tbl_AFUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_AFUbicacion_Tbl_AFResponsable] FOREIGN KEY([IdResponsable])
REFERENCES [dbo].[Tbl_AFResponsable] ([IdResponsable])

ALTER TABLE [dbo].[Tbl_AFUbicacion] CHECK CONSTRAINT [FK_Tbl_AFUbicacion_Tbl_AFResponsable]

ALTER TABLE [dbo].[tbl_ClienteDireccion]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ClienteDireccion_tbl_Msto_ClienteProveedor] FOREIGN KEY([idClienteproveedor])
REFERENCES [dbo].[tbl_msto_ClienteProveedor] ([IdClienteProveedor])

ALTER TABLE [dbo].[tbl_ClienteDireccion] CHECK CONSTRAINT [FK_tbl_ClienteDireccion_tbl_Msto_ClienteProveedor]

ALTER TABLE [dbo].[tbl_MovimientoCajaD]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MovimientoCajaD_tbl_MovimientoCajaC] FOREIGN KEY([idMovimientoCajaC])
REFERENCES [dbo].[tbl_MovimientoCajaC] ([idMovimientoCajaC])

ALTER TABLE [dbo].[tbl_MovimientoCajaD] CHECK CONSTRAINT [FK_tbl_MovimientoCajaD_tbl_MovimientoCajaC]

ALTER TABLE [dbo].[tbl_Ppto_ActOper]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ppto_ActOper_tbl_Ppto_Objetivo] FOREIGN KEY([idcodObjetivo])
REFERENCES [dbo].[tbl_Ppto_Objetivo] ([idCodObjetivo])

ALTER TABLE [dbo].[tbl_Ppto_ActOper] CHECK CONSTRAINT [FK_tbl_Ppto_ActOper_tbl_Ppto_Objetivo]

ALTER TABLE [dbo].[tbl_Ppto_Cab_CN]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ppto_Cab_CN_tbl_Ppto_ActOper] FOREIGN KEY([idCodActOper])
REFERENCES [dbo].[tbl_Ppto_ActOper] ([idCodActOper])

ALTER TABLE [dbo].[tbl_Ppto_Cab_CN] CHECK CONSTRAINT [FK_tbl_Ppto_Cab_CN_tbl_Ppto_ActOper]

ALTER TABLE [dbo].[tbl_Ppto_Det_CN]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ppto_Det_CN_tbl_Ppto_Cab_CN] FOREIGN KEY([idCabCN])
REFERENCES [dbo].[tbl_Ppto_Cab_CN] ([idCabCN])

ALTER TABLE [dbo].[tbl_Ppto_Det_CN] CHECK CONSTRAINT [FK_tbl_Ppto_Det_CN_tbl_Ppto_Cab_CN]

ALTER TABLE [dbo].[tbl_Ppto_Det_CN]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ppto_Det_CN_tbl_Ppto_Unidad] FOREIGN KEY([codunidad])
REFERENCES [dbo].[tbl_Ppto_Unidad] ([Codigo_Unidad])

ALTER TABLE [dbo].[tbl_Ppto_Det_CN] CHECK CONSTRAINT [FK_tbl_Ppto_Det_CN_tbl_Ppto_Unidad]

ALTER TABLE [dbo].[tbl_Ppto_Objetivo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ppto_Objetivo_tbl_Ppto_GerenciaArea] FOREIGN KEY([idcodGerencia])
REFERENCES [dbo].[tbl_Ppto_GerenciaArea] ([idCodGerencia])

ALTER TABLE [dbo].[tbl_Ppto_Objetivo] CHECK CONSTRAINT [FK_tbl_Ppto_Objetivo_tbl_Ppto_GerenciaArea]

