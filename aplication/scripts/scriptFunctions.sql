/****** Object:  UserDefinedFunction [dbo].[CorrelativoMes]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE FUNCTION [dbo].[CorrelativoMes](@Zona varchar(6),@UnidadEconomica char(10),@Group varchar(2),@Year char(4),@mes char(2))
	RETURNS char(10) AS  
BEGIN 
	Declare @Correlativo int,@Nrodoc char(10)
	if @Mes ='00' 
	begin
	   set @Correlativo=(select Apertura from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end

	if @Mes ='01' 
	begin
	   set @Correlativo=(select ene from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='02' 
	begin
	   set @Correlativo=(select feb from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='03' 
	begin
	   set @Correlativo=(select mar from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='04' 
	begin
	   set @Correlativo=(select abr from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='05' 
	begin
	   set @Correlativo=(select may from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='06' 
	begin
	   set @Correlativo=(select jun from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='07' 
	begin
	   set @Correlativo=(select jul from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='08' 
	begin
	   set @Correlativo=(select ago from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='09' 
	begin
	   set @Correlativo=(select sep from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='10' 
	begin
	   set @Correlativo=(select oct from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='11' 
	begin
	   set @Correlativo=(select nov from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='12' 
	begin
	   set @Correlativo=(select dic from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end
	if @Mes ='AN' 
	begin
	   set @Correlativo=(select anual from MAESTROGRUPOCONTABLE WHERE CODZONA=@Zona AND CODUNIDADECONOMICA=@UnidadEconomica and CODMGC=@Group and anio =@Year)
	   set @Correlativo =(case when @Correlativo is null then 1 else @Correlativo+1 end)
	end		

	SET @Nrodoc=@Group+RIGHT(@Year, 1)+@mes +dbo.PADL(@Correlativo,5,'0')
	RETURN   (@Nrodoc)

END
/****** Object:  UserDefinedFunction [dbo].[PADL]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE FUNCTION [dbo].[PADL]( @Texto NVARCHAR( 100 ), @Longitud INT, @Caracter CHAR( 1 ) )
RETURNS CHAR( 100 )
AS
BEGIN
       DECLARE 	  @Result       	CHAR( 100 ),
              	  @Relleno       NVARCHAR( 100 )

       SET @Relleno = REPLICATE( @Caracter, @Longitud - LEN( RTRIM( @Texto ) ) )


       SET @Result  =  @Relleno + @Texto

       RETURN (@Result)
END
/****** Object:  UserDefinedFunction [dbo].[strZERO]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE FUNCTION [dbo].[strZERO]( @lnNumero INT, @lnCeros INT )
RETURNS CHAR( 50 )
AS
BEGIN
       DECLARE @lcResult        CHAR( 50 ),
               @lcCadena        CHAR( 50 )

       SET @lcCadena = CONVERT( CHAR( 50 ), @lnNumero )
        
       IF LEN( RTRIM( @lcCadena ) ) > @lnCeros
          SET @lcResult = RTRIM( @lcCadena )
       ELSE
          SET @lcResult = REPLICATE( '0', @lnCeros - LEN( RTRIM( @lcCadena ) ) ) + 
                          RTRIM( @lcCadena )

       RETURN ( RTRIM( @lcResult ) )
     
END
/****** Object:  UserDefinedFunction [dbo].[traeNombreMes]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE FUNCTION [dbo].[traeNombreMes]( @tMonth CHAR(2) )
RETURNS CHAR( 09 )
AS
BEGIN
       DECLARE @lcResult CHAR( 09 )
       DECLARE @lcMeses CHAR( 200 )		
       DECLARE @lnMes INT

       SET @lnMes = CONVERT( INT, @tMonth )
       
       SET @lcMeses    = 'ENERO    FEBRERO  MARZO    ABRIL    ' + 
                         '0MAYO    JUNIO    JULIO    AGOSTO   ' + 
                         'SETIEMBREOCTUBRE  NOVIEMBREDICIEMBRE'

       SET @lcResult = SUBSTRING( @lcMeses, ( 9 * ( @lnMes - 1 ) ) + 1, 9 ) 

       RETURN (@lcResult)
END
/****** Object:  UserDefinedFunction [dbo].[vAgrupaCtas]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vAgrupaCtas]
(@CodigoDocumento char(18), @nrodocumento char(10),@ncodpro char(11), @CodigoDocumentoReferencia char(2),@nrodocreferencia char(12),@tipo char(2))

Returns @Tablita table
(   veces int, 
	CUENTA char(12), 
	correlativo char(10), 
	nImpdebe decimal(38,2), 
	nImphaber decimal(38,2), 
	nImpdebeD decimal(38,2), 
	nImphaberD decimal(38,2), 
	nMontoIgv decimal(38,2)
)
AS

Begin

If @tipo='12' -- Ventaas
Begin
	insert @Tablita
	select count(codcuenta) veces, codcuenta,max(correlativo) corre, 
			sum(impdebe) nimpdebe, sum(imphaber) nimphaber,
			sum(impdebedolar) nimpdebedolar, sum(imphaberdolar) nimphaberdolar, sum(MontoIgv) nMontoIgv 
	from movcontables_d 
	where codunidadeconomica = @CodigoDocumento and estado in ('D','-') 
	and nrodocumento=@nrodocumento and codpro=@ncodpro and codigoDocumentoReferencia=@codigoDocumentoReferencia and nrodocreferencia=@nrodocreferencia 
	and left(codcuenta,3) in ('121','701','702','703','704','709') --and estado <>'D' 
	group by codcuenta
End
If @tipo='42' --Compras
Begin
	insert @Tablita
	select count(codcuenta) veces, codcuenta,max(correlativo) corre, 
			sum(impdebe) nimpdebe, sum(imphaber) nimphaber,
			sum(impdebedolar) nimpdebedolar, sum(imphaberdolar) nimphaberdolar, sum(MontoIgv) nMontoIgv 
	from movcontables_d 
	where codunidadeconomica = @CodigoDocumento	and estado ='D' --and estado <>'4' 
	and nrodocumento=@nrodocumento and codpro=@ncodpro  
	and codigoDocumentoReferencia=@codigoDocumentoReferencia and nrodocreferencia=@nrodocreferencia 
	and (left(codcuenta,3) in ('421','422','423','424') ) 
	group by codcuenta
End

Return
End
/****** Object:  UserDefinedFunction [dbo].[vCabDetPpto]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vCabDetPpto]
(@anio as varchar(4),@idempresa as int, @tipo as varchar(20))

Returns @TablitaPpto table
(   GestionActividad varchar(22),
	anio nchar(10),
	CodigoGerenciaxArea varchar(10),
	DetalleGerenciaUnidad varchar(70),
	CodigoObjetivo varchar(10),
	DetalleObjetivo nvarchar(100),
	CodigoActOper varchar(10),
	DetalleActividad varchar(150),
	idcodObjetivo int,
	CodObjetivo varchar(10),
	Unidad nvarchar(25),
	CodActOrden varchar(15),
	Principal char(10),
	codigo_actividad int,
	DetalleArticulo nvarchar(255),
	clasifica_gasto nvarchar(50),
	undprincipal char(2),
	costo_uni numeric(18, 4),
	can_ene numeric(18, 4),
	can_feb numeric(18, 4),
	can_mar numeric(18, 4),
	can_ITri numeric(18, 4),
	can_abr numeric(18, 4),
	can_may numeric(18, 4),
	can_jun numeric(18, 4),
	can_IITri numeric(18, 4),
	can_jul numeric(18, 4),
	can_ago numeric(18, 4),
	can_set numeric(18, 4),
	can_IIITri numeric(18, 4),
	can_oct numeric(18, 4),
	can_nov numeric(18, 4),
	can_dic numeric(18, 4),
	can_IVTri numeric(18, 4),
	can_tot numeric(18, 4),
	cost_ene numeric(18, 4),
	cost_feb numeric(18, 4),
	cost_mar numeric(18, 4),
	cost_ITri numeric(18, 4),
	cost_abr numeric(18, 4),
	cost_may numeric(18, 4),
	cost_jun numeric(18, 4),
	cost_IITri numeric(18, 4),
	cost_jul numeric(18, 4),
	cost_ago numeric(18, 4),
	cost_set numeric(18, 4),
	cost_IIITri numeric(18, 4),
	cost_oct numeric(18, 4),
	cost_nov numeric(18, 4),
	cost_dic numeric(18, 4),
	cost_IVTri numeric(18, 4),
	cost_total numeric(18, 4)
)
AS

Begin

If @tipo='CabCN' -- Cebecera
Begin
	insert @TablitaPpto
	-- Cabecera CN ActOper por Objetivo POR GerenciaArea
	--cabecera ppto
	select (Case When left(g.actividad,7)='5000003' then 'GESTION ADMINISTRACION' else 
			(Case When left(g.actividad,7)='5000552' then 'GESTION COMERCIAL' else 
			(Case When left(g.actividad,7)='5000724' then 'GESTION DISTRIBUCION' else '' end)end)end) GestionActividad,
	o.anio,g.CodigoGerenciaxArea,rtrim(g.CodigoGerenciaxArea) +' '+g.DetalleGerenciaUnidad DetalleGerenciaUnidad,o.CodigoObjetivo,rtrim(o.CodigoObjetivo)+' '+o.DetalleObjetivo DetalleObjetivo,
	ao.CodigoActOper,rtrim(ao.CodigoActOper)+' '+ao.DetalleActividad DetalleArticulo,ao.idcodObjetivo,ao.CodObjetivo,ao.Unidad,
	cab.CodActOrden, cab.Principal, cab.codigo_actividad, cab.detalleActividad, cab.clasifica_gasto, cab.undprincipal, cab.costo_uni, 
	  cab.can_ene, cab.can_feb, cab.can_mar, cab.can_ene+cab.can_feb+cab.can_mar Can_ITri,cab.can_abr, cab.can_may, cab.can_jun, cab.can_abr+cab.can_may+cab.can_jun can_IITri, 
	  cab.can_abr, cab.can_may, cab.can_jun, cab.can_abr+cab.can_may+cab.can_jun can_IIITri, cab.can_oct, cab.can_nov, cab.can_dic,cab.can_oct+cab.can_nov+cab.can_dic can_IVTri, cab.can_tot, 
	  cab.cost_ene, cab.cost_feb, cab.cost_mar, cab.cost_ene+cab.cost_feb+cab.cost_mar cost_ITri, cab.cost_abr, cab.cost_may, cab.cost_jun, cab.cost_abr+cab.cost_may+cab.cost_jun cost_IITri, 
	  cab.cost_jul, cab.cost_ago, cab.cost_set, cab.cost_jul+cab.cost_ago+cab.cost_set cost_IIITri, cab.cost_oct, cab.cost_nov, cab.cost_dic, cab.cost_oct+cab.cost_nov+cab.cost_dic cost_IVTri,cab.cost_total
	from tbl_Ppto_GerenciaArea g inner join tbl_Ppto_Objetivo o
	on g.idCodGerencia=o.idcodGerencia
	inner join tbl_Ppto_ActOper ao
	on o.idCodObjetivo=ao.idcodObjetivo
	inner join tbl_Ppto_Cab_CN cab 
	on cab.codigo_act_oper = ao.CodigoActOper
	where o.anio=@anio and ao.anio=@anio and g.Estado=1 and o.estado=1 and ao.estado=1 and g.idempresa=@idempresa and 
		cab.estado=1 and cab.idempresa=@idempresa and cab.anio=@anio
	order by g.CodigoGerenciaxArea,O.idCodObjetivo,O.CodigoObjetivo,ao.idcodObjetivo,ao.CodigoActOper
End
If @tipo='DetCN' --Detalle
Begin
	insert @TablitaPpto
	-- Detalle CN ActOper por Objetivo POR GerenciaArea
	--detalle ppto
	select (Case When left(g.actividad,7)='5000003' then 'GESTION ADMINISTRACION' else 
			(Case When left(g.actividad,7)='5000552' then 'GESTION COMERCIAL' else 
			(Case When left(g.actividad,7)='5000724' then 'GESTION DISTRIBUCION' else '' end)end)end) GestionActividad,
	o.anio,g.CodigoGerenciaxArea,rtrim(g.CodigoGerenciaxArea) +' '+g.DetalleGerenciaUnidad DetalleGerenciaUnidad,o.CodigoObjetivo,rtrim(o.CodigoObjetivo)+' '+o.DetalleObjetivo DetalleObjetivo,
	ao.CodigoActOper,rtrim(ao.CodigoActOper)+' '+ao.DetalleActividad DetalleArticulo,ao.idcodObjetivo,ao.CodObjetivo,ao.Unidad,
	det.CodActOrden, det.Principal, det.codigo_actividad, det.detalleActividad, det.clasifica_gasto, det.undprincipal, det.costo_uni, 
	  det.can_ene, det.can_feb, det.can_mar, det.can_ene+det.can_feb+det.can_mar Can_ITri,det.can_abr, det.can_may, det.can_jun, det.can_abr+det.can_may+det.can_jun can_IITri, 
	  det.can_abr, det.can_may, det.can_jun, det.can_abr+det.can_may+det.can_jun can_IIITri, det.can_oct, det.can_nov, det.can_dic,det.can_oct+det.can_nov+det.can_dic can_IVTri, det.can_tot, 
	  det.cost_ene, det.cost_feb, det.cost_mar, det.cost_ene+det.cost_feb+det.cost_mar cost_ITri, det.cost_abr, det.cost_may, det.cost_jun, det.cost_abr+det.cost_may+det.cost_jun cost_IITri, 
	  det.cost_jul, det.cost_ago, det.cost_set, det.cost_jul+det.cost_ago+det.cost_set cost_IIITri, det.cost_oct, det.cost_nov, det.cost_dic, det.cost_oct+det.cost_nov+det.cost_dic cost_IVTri,det.cost_total
	from tbl_Ppto_GerenciaArea g inner join tbl_Ppto_Objetivo o
	on g.idCodGerencia=o.idcodGerencia
	inner join tbl_Ppto_ActOper ao
	on o.idCodObjetivo=ao.idcodObjetivo
	inner join tbl_Ppto_Det_CN det 
	on det.codigo_act_oper = ao.CodigoActOper
	where o.anio=@anio and ao.anio=@anio and g.Estado=1 and o.estado=1 and ao.estado=1 and g.idempresa=@idempresa and  
		det.estado=1 and det.idempresa=@idempresa and det.anio=@anio
	order by g.CodigoGerenciaxArea,O.idCodObjetivo,O.CodigoObjetivo,ao.idcodObjetivo,ao.CodigoActOper
End

Return
End
/****** Object:  UserDefinedFunction [dbo].[vCuentasXCobrarPagar]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vCuentasXCobrarPagar]
(   @lcZonaA varchar(6),
	@lcZonaB varchar(6),
	@lcUnidadA char(10),
	@lcUnidadB char(10),
	@lcANIO char(4),
	@lcMesA char(2),
	@lcMesB char(2),
	@lcCuentaA Char(10)
)
Returns @Tablita table
(   CUENTA char(12), 
	NRODOC nchar(10), 
	zona char(10), 
	ruc char(14), 
	PROVEEDOR nvarchar(100), 
	FECHADOCREFERENCIA datetime, 
	FECHAVENCIMIENTO datetime, 
	dr varchar(35), 
	identif varchar(1), 
	newdr nvarchar(36), 
	debe decimal(38,2), 
	haber decimal(38,2), 
	Saldo decimal(38,2), 
	codpro char(14), 
	codigodocumentoreferencia char(2)
)
--WITH SCHEMABINDING 
-- select * from vCuentasXCobrarPagar('000012','000012','000012','000012','2013','01','01','20') order by proveedor,fechadocreferencia,dr
AS
--Return

Begin
if @lcCuentaA='02' -- para caja ingresos
Begin 
insert @Tablita
SELECT CUENTA=max(d.codcuenta),NRODOC=max(C.NRODOC),c.zona,ruc=d.codpro,
	PROVEEDOR =isnull((SELECT DISTINCT case when IdTipoClienteProveedor IN (1,2,4,5,6) and razonsocial!='' then razonsocial 
						   when IdTipoClienteProveedor IN (1,2,5,4,6) and (nombre+' '+apellido)!='' then (nombre+' '+apellido)
						   end
				FROM TBL_MSTO_CLIENTEPROVEEDOR WHERE RUC=D.CODPRO AND Estado=1),''),
	FECHADOCREFERENCIA=(Case When left(d.codcuenta,2)= '42' Then min(D.FECHADOCREFERENCIA) Else max(D.FECHADOCREFERENCIA) End),FECHAVENCIMIENTO=max(D.FECHAVENCIMIENTO),
	dr=(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.codigodocumentoreferencia )+' '+d.NRODOCReFERENCIA,
	identif= (case when rtrim(d.codigodocumentoreferencia)='07' then '*' else '' end),
	newdr=(case when rtrim(d.codigodocumentoreferencia)='07' then 
			(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.tipo_refcomprobmodi ) +' '+rtrim(d.serie_refcomprobmodi)+'-'+ d.nro_refcomprobmodi 
		   else 
			(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.codigodocumentoreferencia )+' '+d.NRODOCReFERENCIA 
		   end), 
	debe= sum(d.impdebe), 
	haber= sum(d.imphaber), 
	Saldo= sum(d.impdebe) - sum(d.imphaber), d.codpro,d.codigodocumentoreferencia
FROM MOVCONTABLES_D D
	inner JOIN MOVCONTABLES_C C ON C.IDMOVCONTABLES_C=D.IDMOVCONTABLES_C
	inner JOIN TBL_MSTO_CLIENTEPROVEEDOR TBL ON TBL.RUC=D.CODPRO
--WHERE C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND C.ANIO=@lcANIO
WHERE C.ZONA BETWEEN '000012' and '000012' --@lcZonaA AND @lcZonaB 
	AND C.MES <=@lcMesA AND C.ANIO=@lcANIO
	and left(d.codcuenta,2) in ('12','14','16','18','42','37')--= @lcCuentaA --between @lcCuentaA and @lcCuentaB 
	AND C.CODUNIDADECONOMICA BETWEEN '000012' and '000012' --@lcUnidadA AND @lcUnidadB 
	and D.ESTADO!='4' and C.ESTADO!='4' and d.codpro!='000001' AND TBL.Estado=1
	AND TBL.IDTIPOCLIENTEPROVEEDOR BETWEEN 1 AND 6 
	and D.CODPRO IN (SELECT distinct DD.CODPRO
					FROM MOVCONTABLES_D DD
						INNER JOIN MOVCONTABLES_C CC ON CC.IDMOVCONTABLES_C=DD.IDMOVCONTABLES_C
					--WHERE CC.ZONA BETWEEN @lcZonaA AND @lcZonaB AND CC.MES BETWEEN @lcMesA AND @lcMesB AND CC.ANIO=@lcANIO
					WHERE CC.ZONA BETWEEN '000012' and '000012' --@lcZonaA AND @lcZonaB 
						AND CC.MES <=@lcMesA AND CC.ANIO=@lcANIO
						and left(dd.codcuenta,2) in ('12','14','16','18','42','37')--= @lcCuentaA --between @lcCuentaA and @lcCuentaB
						AND CC.CODUNIDADECONOMICA BETWEEN '000012' and '000012' --@lcUnidadA AND @lcUnidadB
						and DD.ESTADO!='4' AND CC.ESTADO!='4' 
					group by DD.codpro,dd.codigoDocumentoReferencia,dd.nrodocreferencia
					having sum(DD.impdebe)!=sum(DD.imphaber) 
					) 
GROUP by d.nrodocreferencia,c.zona,d.codpro,tbl.idtipoclienteproveedor,
	D.CodigoDocumentoReferencia,d.codcuenta, d.tipo_refcomprobmodi,d.serie_refcomprobmodi,d.nro_refcomprobmodi
--having (left(d.codcuenta,2)= left(@lcCuentaA,2)) and (sum(D.impdebe)-sum(D.imphaber))!=0 
having (sum(D.impdebe)-sum(D.imphaber))!=0 

end
--Return
--end
----
---- para caja Egresos
--Begin
if @lcCuentaA='20'
Begin 
insert @Tablita
SELECT CUENTA=max(d.codcuenta),NRODOC=max(C.NRODOC),c.zona,ruc=d.codpro,
	PROVEEDOR =isnull((SELECT DISTINCT case when IdTipoClienteProveedor IN (1,2,4,5,6) and razonsocial!='' then razonsocial 
						   when IdTipoClienteProveedor IN (1,2,5,4,6) and (nombre+' '+apellido)!='' then (nombre+' '+apellido)
						   end
				FROM TBL_MSTO_CLIENTEPROVEEDOR WHERE RUC=D.CODPRO AND Estado=1),''),
	FECHADOCREFERENCIA=(Case When left(d.codcuenta,2)= '42' Then min(D.FECHADOCREFERENCIA) Else max(D.FECHADOCREFERENCIA) End),FECHAVENCIMIENTO=max(D.FECHAVENCIMIENTO),
	dr=(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.codigodocumentoreferencia )+' '+d.NRODOCReFERENCIA,
	identif= (case when rtrim(d.codigodocumentoreferencia)='07' then '*' else '' end),
	newdr=(case when rtrim(d.codigodocumentoreferencia)='07' then 
			(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.tipo_refcomprobmodi ) +' '+rtrim(d.serie_refcomprobmodi)+'-'+ d.nro_refcomprobmodi 
		   else 
			(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.codigodocumentoreferencia )+' '+d.NRODOCReFERENCIA 
		   end), 
	debe= sum(d.impdebe), 
	haber= sum(d.imphaber), 
	Saldo= sum(d.impdebe) - sum(d.imphaber), d.codpro,d.codigodocumentoreferencia
FROM MOVCONTABLES_D D
	inner JOIN MOVCONTABLES_C C ON C.IDMOVCONTABLES_C=D.IDMOVCONTABLES_C
	inner JOIN TBL_MSTO_CLIENTEPROVEEDOR TBL ON TBL.RUC=D.CODPRO
--WHERE C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND C.ANIO=@lcANIO
WHERE C.ZONA BETWEEN '000012' and '000012' --@lcZonaA AND @lcZonaB 
	AND C.MES <=@lcMesA AND C.ANIO=@lcANIO
	and left(d.codcuenta,2) in ('12','14','16','18','40','41','42','44','45','46','48','37')-- 18,40 = @lcCuentaA --between @lcCuentaA and @lcCuentaB 
	AND C.CODUNIDADECONOMICA BETWEEN '000012' and '000012' --@lcUnidadA AND @lcUnidadB 
	and D.ESTADO!='4' and C.ESTADO!='4' and d.codpro!='000001' AND TBL.Estado=1
	AND TBL.IDTIPOCLIENTEPROVEEDOR BETWEEN 1 AND 6 --este bloque se esta bloqueando por lentitud
	--and D.CODPRO IN (SELECT distinct DD.CODPRO
	--				FROM MOVCONTABLES_D DD
	--					INNER JOIN MOVCONTABLES_C CC ON CC.IDMOVCONTABLES_C=DD.IDMOVCONTABLES_C
	--				--WHERE CC.ZONA BETWEEN @lcZonaA AND @lcZonaB AND CC.MES BETWEEN @lcMesA AND @lcMesB AND CC.ANIO=@lcANIO
	--				WHERE CC.ZONA BETWEEN '000012' and '000012' --@lcZonaA AND @lcZonaB 
	--					AND CC.MES <=@lcMesA AND CC.ANIO=@lcANIO
	--					and left(dd.codcuenta,2) in ('12','14','16','18','40','41','42','44','45','46','48') --18,40 = @lcCuentaA --between @lcCuentaA and @lcCuentaB
	--					AND CC.CODUNIDADECONOMICA BETWEEN '000012' and '000012' --@lcUnidadA AND @lcUnidadB
	--					and DD.ESTADO not in ('','4') AND CC.ESTADO!='4' --and dd.tipomov='H'
	--				group by DD.codpro,dd.codigoDocumentoReferencia,dd.nrodocreferencia
	--				having sum(DD.impdebe)!=sum(DD.imphaber) 
	--				) 
--and d.codigodocumentoreferencia<>'CH'
GROUP by d.nrodocreferencia,c.zona,d.codpro,tbl.idtipoclienteproveedor,
	D.CodigoDocumentoReferencia,d.codcuenta, d.tipo_refcomprobmodi,d.serie_refcomprobmodi,d.nro_refcomprobmodi
--having (left(d.codcuenta,2)= left(@lcCuentaA,2)) and (sum(D.impdebe)-sum(D.imphaber))!=0 
having (sum(D.impdebe)-sum(D.imphaber))!=0 
end

---'''''''''''''''' solo para 08
---- para para caja chica y fondo
--Begin
if @lcCuentaA='08'
Begin 
insert @Tablita
SELECT CUENTA=max(d.codcuenta),NRODOC=max(C.NRODOC),c.zona,ruc=d.codpro,
	PROVEEDOR =isnull((SELECT DISTINCT case when IdTipoClienteProveedor IN (1,2,5,4,6) and razonsocial!='' then razonsocial 
						   when IdTipoClienteProveedor IN (1,2,5,4,6) and (nombre+' '+apellido)!='' then (nombre+' '+apellido)
						   end
				FROM TBL_MSTO_CLIENTEPROVEEDOR WHERE RUC=D.CODPRO AND Estado=1),''),
	FECHADOCREFERENCIA=max(D.FECHADOCREFERENCIA),FECHAVENCIMIENTO=max(D.FECHAVENCIMIENTO),
	dr=(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.codigodocumentoreferencia )+' '+d.NRODOCReFERENCIA,
	identif= (case when rtrim(d.codigodocumentoreferencia)='07' then '*' else '' end),
	newdr=(case when rtrim(d.codigodocumentoreferencia)='07' then 
			(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.tipo_refcomprobmodi ) +' '+rtrim(d.serie_refcomprobmodi)+'-'+ d.nro_refcomprobmodi 
		   else 
			(select DISTINCT rtrim(Descripcion) from tipodocumento where codigOdocumento=d.codigodocumentoreferencia )+' '+d.NRODOCReFERENCIA 
		   end), 
	debe= sum(d.impdebe), 
	haber= sum(d.imphaber), 
	Saldo= sum(d.impdebe) - sum(d.imphaber), d.codpro,d.codigodocumentoreferencia
FROM MOVFONDOCC_D D
	inner JOIN MOVFONDOCC_C C ON C.IDMOVFONDOCC_C=D.IDMOVFONDOCC_C
	inner JOIN TBL_MSTO_CLIENTEPROVEEDOR TBL ON TBL.RUC=D.CODPRO
--WHERE C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND C.ANIO=@lcANIO
WHERE C.ZONA BETWEEN '000012' and '000012' --@lcZonaA AND @lcZonaB 
	AND C.MES <=@lcMesA AND C.ANIO=@lcANIO
	and left(d.codcuenta,2) in ('60','61','62','63','64','65','66','68','69')--= @lcCuentaA --between @lcCuentaA and @lcCuentaB 
	AND C.CODUNIDADECONOMICA BETWEEN '000012' and '000012' --@lcUnidadA AND @lcUnidadB 
	and D.ESTADO!='4' and C.ESTADO!='4' and d.codpro!='000001' AND TBL.Estado=1
	AND TBL.IDTIPOCLIENTEPROVEEDOR BETWEEN 1 AND 6 
	and D.CODPRO IN (SELECT distinct DD.CODPRO
					FROM MOVFONDOCC_D DD
						INNER JOIN MOVFONDOCC_C CC ON CC.IDMOVFONDOCC_C=DD.IDMOVFONDOCC_C
					--WHERE CC.ZONA BETWEEN @lcZonaA AND @lcZonaB AND CC.MES BETWEEN @lcMesA AND @lcMesB AND CC.ANIO=@lcANIO
					WHERE CC.ZONA BETWEEN '000012' and '000012' --@lcZonaA AND @lcZonaB 
						AND CC.MES <=@lcMesA AND CC.ANIO=@lcANIO
						and left(dd.codcuenta,2) in ('60','61','62','63','64','65','66','68','69') --= @lcCuentaA --between @lcCuentaA and @lcCuentaB
						AND CC.CODUNIDADECONOMICA BETWEEN '000012' and '000012' --@lcUnidadA AND @lcUnidadB
						and DD.ESTADO!='4' AND CC.ESTADO!='4' 
					group by DD.codpro,dd.codigoDocumentoReferencia,dd.nrodocreferencia
					having sum(DD.impdebe)!=sum(DD.imphaber) 
					) 
GROUP by d.nrodocreferencia,c.zona,d.codpro,tbl.idtipoclienteproveedor,
	D.CodigoDocumentoReferencia,d.codcuenta, d.tipo_refcomprobmodi,d.serie_refcomprobmodi,d.nro_refcomprobmodi
--having (left(d.codcuenta,2)= left(@lcCuentaA,2)) and (sum(D.impdebe)-sum(D.imphaber))!=0 
having (sum(D.impdebe)-sum(D.imphaber))!=0 
end


Return
end
/****** Object:  UserDefinedFunction [dbo].[vFlujoEfectivo]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vFlujoEfectivo]
(   @lcZonaA varchar(6),
	@lcZonaB varchar(6),
	@lcUnidadA char(10),
	@lcUnidadB char(10),
	@lcANIO char(4),
	@lcMesA char(2),
	@lcMesB char(2)
)
Returns @Tablita table
(   anio char(4), 
	mes char(2), 
	zona char(10), 
	codunidadeconomica char(10),
	nrodocumento char(10),
	crp char(10), 
	codpro char(14), 
	codigoDocumentoReferencia char(2),
	nrodocreferencia char(14),
	FECHADOCREFERENCIA datetime, 
	codigoctabancaria char(12), 
	codcuenta char(12), 
	glosa varchar(250), 
	impdebe decimal(38,2), 
	imphaber decimal(38,2), 
	flujo decimal(38,2), 
	estado char(1)
)
-- select * from vFlujoEfectivo('000012','000012','000012','000012','2013','01','01') order by crp
AS

Begin
insert @Tablita
select anio,mes,c.zona,c.codunidadeconomica,nrodocumento,crp,codpro,
	codigoDocumentoReferencia,nrodocreferencia, fechadocreferencia,codigoctabancaria, codcuenta,
	d.glosa, impdebe, imphaber, impdebe- imphaber flujo, d.estado
from movcontables_d d inner join movcontables_c c on d.idmovcontables_c=c.idmovcontables_c
where crp not in ('','-') and d.estado not in ('4') and c.estado<>'4'
	and D.ESTADO!='4' and C.ESTADO!='4' and d.codpro!='000001' 
	AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB 
	AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
	AND C.MES BETWEEN @lcMesA AND @lcMesB AND C.ANIO=@lcANIO
--order by crp

Return
end
/****** Object:  UserDefinedFunction [dbo].[vRptAmortizacionIngresos]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vRptAmortizacionIngresos]
(
@lcZonaA varchar(6),
@lcZonaB varchar(6),
@lcUnidadA char(10),
@lcUnidadB char(10),
@lcANIO char(4),
@lcMesA char(2),
@lcMesB char(2),
@Codmgc char(2)
)

Returns @Tablita table
(
Codigo_Amortizacion_Compra NCHAR(10),
FechaAmortizacion DATETIME,
Descripcion CHAR(60),
ctabancaria CHAR(30),
Simbolo CHAR(5),
glosaC VARCHAR(200),
DocumentoPago VARCHAR(20),
Numero_Documento NCHAR(14),
Monto DECIMAL(18,2),
Nombre_Girado NVARCHAR(100),
codigo_compra CHAR(12),
Abreviatura VARCHAR(20),
Documento CHAR(14),
Fecha_emision DATETIME,
proveedor NVARCHAR(100),
Saldo DECIMAL(18,2),
Monto_Amortizacion DECIMAL(18,2),
glosa VARCHAR(250),
RUC CHAR(14),
CodigoDocumento CHAR(2),
Correlativo NCHAR(10),
codcuenta CHAR(12),
entFinan VARCHAR(80),
nrodoc NCHAR(10),
idmovimientocajaD INT 
)
  
AS
-- select * from vRptAmortizacionIngresos('000012','000012','000012','000012','2020','01','01','33') order by idmovimientocajaD
Begin
-- seleccion de ingresos
if @Codmgc= '30' or @Codmgc='31' 
Begin 
insert @Tablita
	select mcc.correlativo Codigo_Amortizacion_Compra, mcc.fechacontable FechaAmortizacion,
	isnull(b.descripcion,'') Descripcion,isnull(b.ctabancaria,'') ctabancaria,isnull(m.simbolo,'') Simbolo,MCC.glosa glosaC,
	td.descripcion AS DocumentoPago, NroDocpago Numero_Documento, Monto,
	(Case when cli.nombre='' then rtrim(cli.razonsocial) else rtrim(cli.nombre)+' '+rtrim(cli.apellido) end) Nombre_Girado,
	MCC.codigoCtaBancaria  codigo_compra,td2.descripcion Abreviatura, nrodocumentoFuente Documento, FechaDocfuente Fecha_emision,
	(Case when cli2.nombre='' then rtrim(cli2.razonsocial) else rtrim(cli2.nombre)+' '+rtrim(cli2.apellido) end) proveedor, 
		   impdebe Saldo, imphaber Monto_Amortizacion, MCD.glosa glosa, MCD.codpro RUC, MCD.codigoDocumentofuente CodigoDocumento,
		   correlativo Correlativo ,MCD.codcuenta,isnull(pc.descripcion,'') entFinan,  MCC.nrodoc,MCD.idmovimientocajaD
	from
	tbl_MovimientoCajaD MCD 
		   inner join tbl_MovimientoCajaC MCC on MCD.idmovimientocajaC= MCC.idmovimientocajaC
		   left outer join banco b on rtrim(MCC.codigoctabancaria)=rtrim(b.ctacontable)
		   left outer join moneda m on b.codmoneda= m.codmoneda
		   inner join tipodocumento td on MCC.codigotipoDocpago=td.codigodocumento
		   inner join tbl_msto_ClienteProveedor cli ON MCC.RucEmitido= cli.RUC 
		   inner join tipodocumento td2 on MCD.codigoDocumentofuente=td2.codigodocumento
		   inner join tbl_msto_ClienteProveedor cli2 ON MCD.codpro= cli2.RUC 
		   left outer join (select descripcion,codcuentacontable from plancuentascontables where idempresa= (select idempresa from zona where codzona BETWEEN @lcZonaA AND @lcZonaB) and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end)) pc on rtrim(MCD.codcuenta)=rtrim(pc.codcuentacontable)
	WHERE  MCC.ZONA BETWEEN @lcZonaA AND @lcZonaB AND MCC.MES BETWEEN @lcMesA AND @lcMesB AND 
		   MCC.ANIO=@lcAnio AND MCC.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
			MCD.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
		   ----AND pc.idempresa= (select idempresa from zona where codzona BETWEEN @lcZonaA AND @lcZonaB)
		   --AND b.idempresa= (select idempresa from zona where codzona BETWEEN @lcZonaA AND @lcZonaB)
		   AND mcc.estado=0 AND mcd.estado=0 and cli2.estado='1' and cli.estado='1'
End
-- para el caso de egresos
if @Codmgc<>'30' or @Codmgc<>'31' 
Begin 
insert into @Tablita
	select mcc.correlativo Codigo_Amortizacion_Compra, mcc.fechacontable FechaAmortizacion,
	isnull(b.descripcion,'') Descripcion,isnull(b.ctabancaria,'') ctabancaria,isnull(m.simbolo,'') Simbolo,MCC.glosa glosaC,
	td.descripcion AS DocumentoPago, NroDocpago Numero_Documento, Monto,
	(Case when cli.nombre='' then rtrim(cli.razonsocial) else rtrim(cli.nombre)+' '+rtrim(cli.apellido) end) Nombre_Girado,
	MCC.codigoCtaBancaria  codigo_compra,td2.descripcion Abreviatura, nrodocumentoFuente Documento, FechaDocfuente Fecha_emision,
	(Case when cli2.nombre='' then rtrim(cli2.razonsocial) else rtrim(cli2.nombre)+' '+rtrim(cli2.apellido) end) proveedor, 
		   impdebe Saldo, imphaber Monto_Amortizacion, MCD.glosa glosa, MCD.codpro RUC, MCD.codigoDocumentofuente CodigoDocumento,
		   correlativo Correlativo ,MCD.codcuenta,isnull(pc.descripcion,'') entFinan,  MCC.nrodoc,MCD.idmovimientocajaD
	from
	tbl_MovimientoCajaD MCD 
		   inner join tbl_MovimientoCajaC MCC on MCD.idmovimientocajaC= MCC.idmovimientocajaC
		   left outer join banco b on rtrim(MCC.codigoctabancaria)=rtrim(b.ctacontable)
		   left outer join moneda m on b.codmoneda= m.codmoneda
		   inner join tipodocumento td on MCC.codigotipoDocpago=td.codigodocumento
		   inner join tbl_msto_ClienteProveedor cli ON MCC.RucEmitido= cli.RUC 
		   inner join tipodocumento td2 on MCD.codigoDocumentofuente=td2.codigodocumento
		   inner join tbl_msto_ClienteProveedor cli2 ON MCD.codpro= cli2.RUC 
		   left outer join (select descripcion,codcuentacontable from plancuentascontables where idempresa= (select idempresa from zona where codzona BETWEEN @lcZonaA AND @lcZonaB) and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end)) pc on rtrim(MCD.codcuenta)=rtrim(pc.codcuentacontable)
	WHERE  MCC.ZONA BETWEEN @lcZonaA AND @lcZonaB AND MCC.MES BETWEEN @lcMesA AND @lcMesB AND 
		   MCC.ANIO=@lcAnio AND MCC.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
			MCD.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
		   --AND pc.idempresa= (select idempresa from zona where codzona BETWEEN @lcZonaA AND @lcZonaB)
		   AND b.idempresa= (select idempresa from zona where codzona BETWEEN @lcZonaA AND @lcZonaB)
		   AND b.estado=1 AND mcc.estado=0 AND mcd.estado=0 and cli2.estado='1' and cli.estado='1'

End

Return
end
/****** Object:  UserDefinedFunction [dbo].[vPreDocsPendientes]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vPreDocsPendientes]

(@UnidadEconomica as varchar(15))
Returns table
  
AS
Return
-- select * from vPreDocsPendientes('2012-000017') where codpro='20450444678'
(
SELECT     codPro, CodigoDocumentoReferencia, NroDocReferencia, MIN(FechaDocReferencia) AS Fecha, CASE WHEN estado != 'D' THEN COUNT(estado) 
                      ELSE 0 END AS Cant, SUM(impDebe) AS Debe, SUM(impHaber) AS Haber, CodUnidadEconomica, CodMGC, SUM(MontoIGV) AS montoigv, CodCuenta, 
                      (CASE WHEN codmgc IN ('04', '18', '00', '11') AND LEFT(codcuenta, 3) IN 
('121','122','123','141','142','143','148','161','162','163','164','165','168','181','182','183','185','189','411','413','415','419',
 '200','421','424','451','455','461','464','465','466','467','469','481','482','483','484','489') 
                      THEN '-' ELSE estado END) AS estado, MAX(FechaVencimiento) AS Fvcto, 
           max(MontoDetraccionIvap)*(Case When max(CodigoPercepcion)='' and max(codigoDetraccion)<>'' Then -1 Else 1 End) MontoDetraccionIvap
FROM         dbo.MovContables_D
WHERE     (estado IN ('-','D')) AND (codPro NOT IN ('', '-', '000001'))
--			and codUnidadEconomica = @UnidadEconomica
			and codUnidadEconomica = substring(@UnidadEconomica,6,10) and substring(nrodocumento,3,1)=right(left(@UnidadEconomica,4),1) 
GROUP BY CodigoDocumentoReferencia, codPro, NroDocReferencia, estado, CodUnidadEconomica, CodMGC, CodCuenta
)
/****** Object:  UserDefinedFunction [dbo].[vDocumentosPendientes]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vDocumentosPendientes]
(@UnidadEconomica as varchar(15))
Returns table
AS
Return
-- select * from vDocumentosPendientes('2012-000135') where  codpro='20450285189'
(
SELECT     codPro, CodigoDocumentoReferencia, NroDocReferencia, MIN(Fecha) AS Fecha, CodUnidadEconomica, 
			(CASE WHEN codmgc IN ('04', '18') 
                  THEN (case when CodigoDocumentoReferencia='07' then -1 else 1 end)*SUM(Debe + haber) 
				  ELSE (CASE WHEN codmgc IN ('02') 
							THEN (Case when codmgc='11' Then SUM(Debe) - SUM(Haber) else SUM(Debe) - SUM(Haber) end) 
							ELSE (Case when codmgc='11' Then SUM(Debe) - SUM(Haber) else SUM(Haber) - SUM(Debe) end) END) 
			END)+SUM(MontoDetraccionIvap) AS impDebe, 
            (CASE WHEN codmgc IN ('04', '18', '00', '11') THEN SUM(Haber) ELSE SUM(Debe) - SUM(Haber) END)+SUM(MontoDetraccionIvap) AS impHaber, 
			CodCuenta, '' estado, MAX(Fvcto) AS fvcto
FROM         dbo.vPreDocsPendientes(@UnidadEconomica) 
WHERE     (LEFT(CodCuenta, 2) IN ('12','14','16','18','41','42','45','46','48') and (codmgc+left(convert(varchar,fecha,103),5)<>'00 02/01'))
GROUP BY NroDocReferencia, codPro, CodigoDocumentoReferencia, CodUnidadEconomica, CodCuenta, /*estado,*/ CodMGC
HAVING      (SUM(Debe) <> SUM(Haber)) OR
                      (SUM(Cant) = 1) OR
                      (COUNT(DISTINCT CodMGC) <= 1)
)
/****** Object:  UserDefinedFunction [dbo].[CadenaConComasATabla]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
Create function [dbo].[CadenaConComasATabla]
  (  @Cadena AS VARCHAR(max),
    @Separator AS CHAR(1)
  )
Returns table 
as
--select * from CadenaConComasATabla('123,123,132,132,13,13,21,321,321,32,13,21,321,32,13,21,32',',') 
Return 
(
	SELECT   
		Split.a.value('.', 'VARCHAR(100)') AS SValores   
	FROM  
		( SELECT   CAST ('<M>' + REPLACE(@Cadena, @Separator, '</M><M>') + '</M>' AS XML) AS Data   
		) AS A CROSS APPLY Data.nodes ('/M') AS Split(a) 
)

/****** Object:  UserDefinedFunction [dbo].[vBuscaDocumento]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
Create Function [dbo].[vBuscaDocumento]
(
@lcUnidadA char(10),
@lcUnidadB char(10)

)
Returns table
  
AS
Return
(
select d.codigodocumentoreferencia, d.nrodocreferencia, d.fechadocreferencia, d.nrodocumento, d.codpro,max(d.estado) estado 
from movcontables_d d
where d.codunidadeconomica between @lcUnidadA and @lcUnidadB and d.estado in ('-','D') and d.idmovcontables_c is not null
group by d.codigodocumentoreferencia, d.nrodocreferencia, d.fechadocreferencia, d.nrodocumento,d.codpro --,estado
)
/****** Object:  UserDefinedFunction [dbo].[vBuscaDocumentoDetalle]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vBuscaDocumentoDetalle]
(
@lcUnidadA char(10),
@lcUnidadB char(10)

)
Returns table
  
AS
Return
(
select d.codcuenta,d.centrocosto,d.impdebe, d.imphaber,d.impdebedolar, d.imphaberdolar,d.codanexo,d.codigodocumentoreferencia,
d.nrodocreferencia,d.codigodocumentofuente,d.nrodocumentofuente,d.idmovcontable_d,d.codpro,d.estado,d.nrodocumento
 from movcontables_d d
where d.codunidadeconomica between @lcUnidadA and @lcUnidadB
 and d.estado in ('-','D') and d.idmovcontables_c is not null
)
/****** Object:  UserDefinedFunction [dbo].[vEstadoGananciasPerdidas]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vEstadoGananciasPerdidas]
(
@lcZonaA varchar(6),
@lcZonaB varchar(6),
@lcUnidadA char(10),
@lcUnidadB char(10),
@lcANIO char(4),
@lcMesA char(2),
@lcMesB char(2),
@idempresa int
)
Returns table
  
AS
Return

(
SELECT     'UTILIDAD BRUTA' AS Total, 'VENTAS' AS Tipo,
--                          (SELECT     IdEmpresa
--                            FROM          dbo.Zona
--                            WHERE      (CodZona = c.Zona)) 
      @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '70') AS codcuenta, 
                      ISNULL(ABS(SUM(d.impDebe) - SUM(d.impHaber)), 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('70')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) IN ('70')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
--                          (SELECT     IdEmpresa 
--                            FROM          dbo.Zona AS Zona_8
--                            WHERE      (CodZona = c.Zona)))
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'UTILIDAD BRUTA' AS Expr1, 'COSTO DE VENTAS' AS Tipo,
            @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '69') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('69')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '69') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, p.IdEmpresa
UNION ALL
		select 'UTILIDAD BRUTA' as total,'(-)COSTO DE VENTA' as Tipo,
		@idempresa AS Empresa,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, 
		isnull(max(left(d.codcuenta,2)),'90') as codcuenta,
		isnull(((sum(impdebe)-sum(imphaber))*-1),0.00) as importe,isnull(max(e.PorRenta),0.00) as PorRenta
		from dbo.movcontables_d as d
		inner join (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('90')) p 
			on p.codcuentacontable=d.codcuenta
		inner join dbo.movcontables_c as c on c.idmovcontables_c=d.idmovcontables_c
		inner join dbo.empresa as e on e.idempresa=p.idempresa
		where left(d.codcuenta,2) like ('90') 
					and c.mes between @LCmesa and @lcmesb
					and c.zona BETWEEN @lcUnidadA AND @lcUnidadB 
					and c.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
					and d.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
					and c.anio=@lcAnio and d.estado!='4' and c.estado!='4' and d.codpro!='000001' 
		group by left(d.codcuenta,2),e.porrenta,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
		select 'OTROS INGRESOS OPERATIVOS' as total,'(-)GASTOS OPERACIONALES' as Tipo,
		@idempresa AS Empresa,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, 
		isnull(max(left(d.codcuenta,2)),'91') as codcuenta,
		isnull(((sum(impdebe)-sum(imphaber))*-1),0.00) as importe,isnull(max(e.PorRenta),0.00) as PorRenta
		from dbo.movcontables_d as d
		inner join (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,1) in ('9')) p 
			on p.codcuentacontable=d.codcuenta
		inner join dbo.movcontables_c as c on c.idmovcontables_c=d.idmovcontables_c
		inner join dbo.empresa as e on e.idempresa=p.idempresa
		where left(d.codcuenta,2) like (Select '9['+replace(replace(valor,'9',''),',','')+']%'
										from dbo.parametros Where IdEmpresa = @idempresa and Estado =1 and clave='CuentasGastoOperativo'
									   ) 
					and c.mes between @LCmesa and @lcmesb
					and c.zona BETWEEN @lcUnidadA AND @lcUnidadB 
					and c.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
					and d.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
					and c.anio=@lcAnio and d.estado!='4' and c.estado!='4' and d.codpro!='000001' 
		group by left(d.codcuenta,2),e.porrenta,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS ADMINISTRATIVOS' AS Tipo,
          @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '94') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('94')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '94') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =@idempresa)
					and c.zona BETWEEN @lcUnidadA AND @lcUnidadB AND C.MES BETWEEN @lcMesA AND @lcMesB
					and c.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
					and d.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
					AND C.ANIO=@lcAnio AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS VENTAS' AS Tipo,
           @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '95') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('95')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '95') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') 
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS FINANCIEROS' AS Tipo,
             @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '97') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('97')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '97') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)CARGAS EXCEPCIONALES' AS Tipo,
            @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '66') AS codcuenta, 
                      ISNULL(SUM(d.impDebe) + SUM(d.impHaber), 0.00)*-1 AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('66')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '66') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
--UNION ALL
--SELECT     'OTROS INGRESOS OPERATIVOS' AS total, '(-)CARGAS EXCEPCIONALES' AS Tipo,
----                          (SELECT     IdEmpresa
----                            FROM          dbo.Zona AS Zona_3
----                            WHERE      (CodZona = c.Zona))
--           @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '65') AS codcuenta, 
--                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
--FROM         dbo.MovContables_D AS d INNER JOIN
--                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,3) in ('659')) p 
--							ON p.CodCuentaContable = d.CodCuenta INNER JOIN
--                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
--                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
--WHERE     (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') 
----                          (SELECT     IdEmpresa
----                            FROM          dbo.Zona AS Zona_8
----                            WHERE      (CodZona = c.Zona))) 
--           AND (LEFT(p.CodCuentaContable, 3) = '659') AND (p.Descripcion LIKE 'SANCION%') AND (p.CtaDebe = '')
--          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
--	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
--		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
--GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
           @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '72') AS codcuenta, 
                      ISNULL((SUM(d.impHaber)-SUM(d.impDebe) ) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('72')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) IN ('72')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') 
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
           @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '75') AS codcuenta, 
                      ISNULL((SUM(d.impHaber)-SUM(d.impDebe) ) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('73','74')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) IN ('73','74')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes

UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
           @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '75') AS codcuenta, 
                      ISNULL((SUM(d.impDebe)*-1 + SUM(d.impHaber)) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('75')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) IN ('75')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL 
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXCEPCIONALES' AS Tipo,
            @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '76') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('76')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '76') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS FINANCIEROS' AS Tipo,
            @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '77') AS codcuenta, 
                      ISNULL(SUM(d.impDebe)- SUM(d.impHaber), 0.00)*-1 AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('77')) p 
						ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '77') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
	   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes

-----agregando la participacion trabajadores
		union all 
		select '    ' as total,'(-)PARTICIPACION TRABAJADORES' as Tipo,@idempresa AS Empresa,@lcZonaA as Zona,@lcUnidadA as CodUnidadEconomica, 
			@lcAnio as Anio, @lcMesB as mes,codcuenta='87',
			importe=sum(importe)*(select convert(numeric(5,2),PorParticipaTrab)/100 from empresa where idempresa= @idempresa)*-1,
			PorRenta=(select convert(numeric(5,2),PorRenta)/100 from empresa where idempresa= @idempresa) 
		from (
				SELECT     'UTILIDAD BRUTA' AS Total, 'VENTAS' AS Tipo,
					  @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '70') AS codcuenta, 
									  ISNULL(ABS(SUM(d.impDebe) - SUM(d.impHaber)), 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('70')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) IN ('70')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') 
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'UTILIDAD BRUTA' AS Expr1, 'COSTO DE VENTAS' AS Tipo,
							@idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '69') AS codcuenta, 
									  ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('69')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '69') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, p.IdEmpresa
				UNION ALL
						select 'UTILIDAD BRUTA' as total,'(-)COSTO DE VENTA' as Tipo,
						@idempresa AS Empresa,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, 
						isnull(max(left(d.codcuenta,2)),'90') as codcuenta,
						isnull(((sum(impdebe)-sum(imphaber))*-1),0.00) as importe,isnull(max(e.PorRenta),0.00) as PorRenta
						from dbo.movcontables_d as d
						inner join (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('90')) p 
							on p.codcuentacontable=d.codcuenta
						inner join dbo.movcontables_c as c on c.idmovcontables_c=d.idmovcontables_c
						inner join dbo.empresa as e on e.idempresa=p.idempresa
						where left(d.codcuenta,2) like ('90') 
									and c.mes between @LCmesa and @lcmesb
									and c.zona BETWEEN @lcUnidadA AND @lcUnidadB 
									and c.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
									and d.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
									and c.anio=@lcAnio and d.estado!='4' and c.estado!='4' and d.codpro!='000001' 
						group by left(d.codcuenta,2),e.porrenta,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
						select 'OTROS INGRESOS OPERATIVOS' as total,'(-)GASTOS OPERACIONALES' as Tipo,
						@idempresa AS Empresa,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, 
						isnull(max(left(d.codcuenta,2)),'91') as codcuenta,
						isnull(((sum(impdebe)-sum(imphaber))*-1),0.00) as importe,isnull(max(e.PorRenta),0.00) as PorRenta
						from dbo.movcontables_d as d
						inner join (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,1) in ('9')) p 
							on p.codcuentacontable=d.codcuenta
						inner join dbo.movcontables_c as c on c.idmovcontables_c=d.idmovcontables_c
						inner join dbo.empresa as e on e.idempresa=p.idempresa
						where left(d.codcuenta,2) like (Select '9['+replace(replace(valor,'9',''),',','')+']%'
														from dbo.parametros Where IdEmpresa = @idempresa and Estado =1 and clave='CuentasGastoOperativo'
													   ) 
									and c.mes between @LCmesa and @lcmesb
									and c.zona BETWEEN @lcUnidadA AND @lcUnidadB 
									and c.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
									and d.codunidadeconomica BETWEEN @lcUnidadA AND @lcUnidadB 
									and c.anio=@lcAnio and d.estado!='4' and c.estado!='4' and d.codpro!='000001' 
						group by left(d.codcuenta,2),e.porrenta,c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS ADMINISTRATIVOS' AS Tipo,
						  @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '94') AS codcuenta, 
									  ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('94')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '94') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS VENTAS' AS Tipo,
						   @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '95') AS codcuenta, 
									  ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('95')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '95') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS FINANCIEROS' AS Tipo,
							 @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '97') AS codcuenta, 
									  ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('97')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '97') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') 
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)CARGAS EXCEPCIONALES' AS Tipo,
							@idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '66') AS codcuenta, 
									  ISNULL(SUM(d.impDebe) + SUM(d.impHaber), 0.00)*-1 AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('66')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '66') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
--				UNION ALL
--				SELECT     'OTROS INGRESOS OPERATIVOS' AS total, '(-)CARGAS EXCEPCIONALES' AS Tipo,
--				--                          (SELECT     IdEmpresa
--				--                            FROM          dbo.Zona AS Zona_3
--				--                            WHERE      (CodZona = c.Zona))
--						   @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '65') AS codcuenta, 
--									  ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
--				FROM         dbo.MovContables_D AS d INNER JOIN
--									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,3) in ('659')) p 
--										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
--									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
--									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
--				WHERE     (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
--				--                          (SELECT     IdEmpresa
--				--                            FROM          dbo.Zona AS Zona_8
--				--                            WHERE      (CodZona = c.Zona))) 
--						   AND (LEFT(p.CodCuentaContable, 3) = '659') AND (p.Descripcion LIKE 'SANCION%') AND (p.CtaDebe = '')
--						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
--					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
--						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
--				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
						   @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '72') AS codcuenta, 
									  ISNULL((SUM(d.impHaber)-SUM(d.impDebe) ) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('72')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) IN ('72')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
						   @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '75') AS codcuenta, 
									  ISNULL((SUM(d.impHaber)-SUM(d.impDebe) ) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('73','74')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) IN ('73','74')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes

				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
						   @idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '75') AS codcuenta, 
									  ISNULL((SUM(d.impDebe)*-1 + SUM(d.impHaber)) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('75')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) IN ('75')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL 
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXCEPCIONALES' AS Tipo,
							@idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '76') AS codcuenta, 
									  ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('76')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '76') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
				UNION ALL
				SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS FINANCIEROS' AS Tipo,
							@idempresa AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '77') AS codcuenta, 
									  ISNULL(SUM(d.impDebe) - SUM(d.impHaber), 0.00)*-1 AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
				FROM         dbo.MovContables_D AS d INNER JOIN
									  (select codcuentacontable,descripcion,idempresa from PLANCUENTASCONTABLES where idempresa=@IdEmpresa and left(anio,4)=(case When rtrim(@lcAnio)<'2020' then '2009' else rtrim(@lcAnio) end) and estado='1' and left(codcuentacontable,2) in ('77')) p 
										ON p.CodCuentaContable = d.CodCuenta INNER JOIN
									  dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
									  dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
				WHERE     (LEFT(d.CodCuenta, 2) = '77') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001')
						  AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB AND 
					   C.ANIO=@lcAnio AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
						D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
				GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
) acumula

)
/****** Object:  UserDefinedFunction [dbo].[vEstadosIntegrales]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vEstadosIntegrales]
(
@lcZonaA varchar(6),
@lcZonaB varchar(6),
@lcUnidadA char(10),
@lcUnidadB char(10),
@lcANIO char(4),
@lcMesA char(2),
@lcMesB char(2),
@idempresa int,
@tipo varchar(10)
)
Returns table
AS
Return

(  
-- select * from vEstadosIntegrales('000032','000032','000032','000032','2017','00','12',24,'GANANYPERD')

select orden,tipo total,cpto tipo,ctagral codcuenta,sum(importe) importe,porrenta from (
select e.orden,rpt,tipo,cpto,cta, ISNULL((SUM(d.impDebe) - SUM(d.impHaber)), 0.00)*max(multiplica) AS importe, ISNULL(MAX(emp.PorRenta), 0.00) porrenta,ctagral
from dbo.MovContables_D AS d INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C 
		INNER JOIN tbl_MaestroEstadosIntegrales e on LEFT(d.CodCuenta, 2)= rtrim(e.cta)
		inner join zona z on z.codzona= c.zona
		inner join empresa emp on emp.idempresa= z.idempresa
where e.rpt=@tipo AND e.estado=1 AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') and z.estado=1
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB 
		  AND z.CODZONA BETWEEN @lcZonaA AND @lcZonaB AND 
	   C.ANIO=@lcANIO AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
group by e.orden,rpt,tipo,cpto,cta,LEFT(d.CodCuenta, 2),ctagral
) todos 
group by orden,rpt,tipo,cpto,ctagral,porrenta
--order by orden
union all -- agregando la participacion utilidades
select max(orden)+1 orden,'' total,'(-)PARTICIPACION TRABAJADORES' tipo,'87' codcuenta,sum(importe)*(select convert(numeric(5,2),PorParticipaTrab)/100 from empresa where idempresa= @idempresa)*-1 importe,porrenta from (
select e.orden,rpt,tipo,cpto,cta, ISNULL((SUM(d.impDebe) - SUM(d.impHaber)), 0.00)*max(multiplica) AS importe, ISNULL(MAX(emp.PorRenta), 0.00) porrenta,ctagral
from dbo.MovContables_D AS d INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C 
		INNER JOIN tbl_MaestroEstadosIntegrales e on LEFT(d.CodCuenta, 2)= rtrim(e.cta)
		inner join zona z on z.codzona= c.zona
		inner join empresa emp on emp.idempresa= z.idempresa
where e.rpt=@tipo AND e.estado=1 AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') and z.estado=1
          AND C.ZONA BETWEEN @lcZonaA AND @lcZonaB AND C.MES BETWEEN @lcMesA AND @lcMesB 
		  AND z.CODZONA BETWEEN @lcZonaA AND @lcZonaB AND 
	   C.ANIO=@lcANIO AND C.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB AND 
		D.CODUNIDADECONOMICA BETWEEN @lcUnidadA AND @lcUnidadB 
group by e.orden,rpt,tipo,cpto,cta,LEFT(d.CodCuenta, 2),ctagral
) todos 
group by porrenta


)

/****** Object:  UserDefinedFunction [dbo].[vTraeCuentasInteligentes]    Script Date: 18/08/2023 15:33:09 ******/

-- Bloque
CREATE Function [dbo].[vTraeCuentasInteligentes]
(@idempresa as varchar
)
Returns table
AS
Return
( 
-- select * from vtraeCuentasInteligentes(6) order by 1
select --veces,
convert(char(3),orden) +' - '+ descripcion concepto,ctadebe,ctahaber,monto,idParametrosAux
from tbl_ParametrosAux a left outer join 
(select count(idempresa) veces,idempresa from tbl_parametrosAux where idempresa=@idempresa and orden>=100 and estado=1 group by idempresa) reg on a.idempresa=reg.idempresa
where a.idempresa = @idempresa and orden>=100 and estado=1 --Order by orden
)
-- Bloque