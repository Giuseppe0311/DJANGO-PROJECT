
/****** Object:  View [dbo].[diarioauxiliar]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
CREATE VIEW [dbo].[diarioauxiliar]
AS
SELECT     dbo.MovContables_C.Anio, dbo.MovContables_C.Mes, dbo.MovContables_C.Zona, dbo.MovContables_C.CodUnidadEconomica, 
                      dbo.MovContables_C.NroDoc, dbo.MovContables_D.CRP, dbo.MovContables_D.CodActividad, dbo.MovContables_D.CodPar, 
                      dbo.MovContables_D.CodSubActividad, dbo.MovContables_D.FechContable, dbo.MovContables_C.CodMGC, dbo.MovContables_D.ClaseMovimiento, 
                      dbo.MovContables_D.CtaDestino, dbo.MovContables_D.CodigoDocumentoReferencia, dbo.MovContables_D.NroDocReferencia, 
                      dbo.MovContables_D.FechaDocReferencia, dbo.MovContables_D.FechaVencimiento, dbo.MovContables_D.CodigoDocumentoFuente, 
                      dbo.MovContables_D.NroDocumentoFuente, dbo.MovContables_D.FechaDocumentoFuente, dbo.MovContables_D.CodigoCtaBancaria, 
                      dbo.MovContables_D.NroOperacion, dbo.MovContables_D.NroCheque, dbo.MovContables_D.CuentaNaturaleza, dbo.MovContables_D.CodCuenta, 
                      dbo.MovContables_D.CentroCosto, dbo.MovContables_D.TipoMov, dbo.MovContables_D.Glosa, dbo.MovContables_D.Orden, 
                      dbo.MovContables_D.Afecto, dbo.MovContables_D.TipoCambio, dbo.MovContables_D.impDebe, dbo.MovContables_D.impHaber, 
                      dbo.MovContables_D.impDebeDolar, dbo.MovContables_D.impHaberDolar, dbo.MovContables_D.TipoAnexo, dbo.MovContables_D.CodAnexo, 
                      dbo.MovContables_D.codPro, dbo.MovContables_D.u_codi, dbo.MovContables_D.datUsu, dbo.MovContables_D.Correlativo, 
                      dbo.MovContables_D.estado, dbo.MovContables_D.Destino, dbo.MovContables_D.Anexo, dbo.MovContables_D.GastoIntPersonal, 
                      dbo.MovContables_D.cocach, dbo.MovContables_D.nomanx, dbo.MovContables_D.codIn, dbo.MovContables_D.tipdca, dbo.MovContables_D.nrodca, 
                      dbo.MovContables_D.reten, dbo.MovContables_D.rigv, dbo.MovContables_D.corrigv, dbo.MovContables_D.IDMovContable_D
FROM         dbo.MovContables_C INNER JOIN
                      dbo.MovContables_D ON dbo.MovContables_C.IdMovContables_C = dbo.MovContables_D.IdMovContables_C
WHERE     (dbo.MovContables_C.Anio = '2008') AND (dbo.MovContables_C.Mes = '01') AND (dbo.MovContables_C.Zona BETWEEN '10' AND '30') AND 
                      (CHARINDEX(dbo.MovContables_D.estado, '''A''/'' ''/''D''/''E''') > 0) AND (CHARINDEX(RTRIM(dbo.MovContables_D.CodMGC), 
                      '/00/01/02/03/04/05/06/07/08/09/10/11/12/13/14/15/16/17/18/19/20/21/22/23/26/30/99/') > 0)
/****** Object:  View [dbo].[vActividad]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
CREATE VIEW [dbo].[vActividad]
AS
SELECT DISTINCT descrip AS 'Descripcion', codacti AS 'Codigo'
FROM         dbo.actividad
/****** Object:  View [dbo].[vBalanceRatios]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
CREATE VIEW [dbo].[vBalanceRatios]
AS
SELECT     'ACTIVO CORRIENTE' AS Tipo, LEFT(d.CodCuenta, 2) AS Codcuenta,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes,
                          (SELECT DISTINCT Descripcion
                            FROM          dbo.PlanCuentasContables
                            WHERE      (CodCuentaContable = LEFT(d.CodCuenta, 2)) AND (IdEmpresa =
                                                       (SELECT     IdEmpresa
                                                         FROM          dbo.Zona AS Zona_9
                                                         WHERE      (CodZona = c.Zona)))) AS cuenta, SUM(d.impDebe) - SUM(d.impHaber) AS Ejercicio
FROM         dbo.MovContables_D AS d LEFT OUTER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta LEFT OUTER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C
WHERE     (LEFT(d.CodCuenta, 2) BETWEEN '10' AND '29') AND (c.Mes BETWEEN 01 AND 12) --AND (c.Anio = 2008) AND (p.IdEmpresa = 1) 
AND (c.Estado <> '4') 
                      AND (d.estado <> '4') AND (d.codPro <> '000001')
GROUP BY LEFT(d.CodCuenta, 2), c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'ACTIVO NO CORRIENTE' AS Tipo, LEFT(d.CodCuenta, 2) AS Codcuenta,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes,
                          (SELECT DISTINCT Descripcion
                            FROM          dbo.PlanCuentasContables AS PlanCuentasContables_4
                            WHERE      (CodCuentaContable = LEFT(d.CodCuenta, 2)) AND (IdEmpresa =
                                                       (SELECT     IdEmpresa
                                                         FROM          dbo.Zona AS Zona_7
                                                         WHERE      (CodZona = c.Zona)))) AS cuenta, SUM(d.impDebe) - SUM(d.impHaber) AS Ejercicio
FROM         dbo.MovContables_D AS d LEFT OUTER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta LEFT OUTER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C
WHERE     (LEFT(d.CodCuenta, 2) BETWEEN '30' AND '39') AND (c.Mes BETWEEN 01 AND 12) --AND (c.Anio = 2008) AND (p.IdEmpresa = 1) 
AND (c.Estado <> '4') 
                      AND (d.estado <> '4') AND (d.codPro <> '000001')
GROUP BY LEFT(d.CodCuenta, 2), c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'PASIVO CORRIENTE' AS Tipo, LEFT(d.CodCuenta, 2) AS Codcuenta,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_6
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes,
                          (SELECT DISTINCT Descripcion
                            FROM          dbo.PlanCuentasContables AS PlanCuentasContables_3
                            WHERE      (CodCuentaContable = LEFT(d.CodCuenta, 2)) AND (IdEmpresa =
                                                       (SELECT     IdEmpresa
                                                         FROM          dbo.Zona AS Zona_5
                                                         WHERE      (CodZona = c.Zona)))) AS cuenta, SUM(d.impDebe) - SUM(d.impHaber) AS Ejercicio
FROM         dbo.MovContables_D AS d LEFT OUTER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta LEFT OUTER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C
WHERE     (LEFT(d.CodCuenta, 2) BETWEEN '40' AND '47') AND (c.Mes BETWEEN 01 AND 12) --AND (c.Anio = 2008) AND (p.IdEmpresa = 1) 
AND (c.Estado <> '4') 
                      AND (d.estado <> '4') AND (d.codPro <> '000001')
GROUP BY LEFT(d.CodCuenta, 2), c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'PASIVO NO CORRIENTE' AS Tipo, LEFT(d.CodCuenta, 2) AS Codcuenta,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_4
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes,
                          (SELECT DISTINCT Descripcion
                            FROM          dbo.PlanCuentasContables AS PlanCuentasContables_2
                            WHERE      (CodCuentaContable = LEFT(d.CodCuenta, 2)) AND (IdEmpresa =
                                                       (SELECT     IdEmpresa
                                                         FROM          dbo.Zona AS Zona_3
                                                         WHERE      (CodZona = c.Zona)))) AS cuenta, SUM(d.impDebe) - SUM(d.impHaber) AS Ejercicio
FROM         dbo.MovContables_D AS d LEFT OUTER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta LEFT OUTER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C
WHERE     (LEFT(d.CodCuenta, 2) BETWEEN '48' AND '49') AND (c.Mes BETWEEN 01 AND 12) --AND (c.Anio = 2008) AND (p.IdEmpresa = 1) 
AND (c.Estado <> '4') 
                      AND (d.estado <> '4') AND (d.codPro <> '000001')
GROUP BY LEFT(d.CodCuenta, 2), c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'PATRIMONIO' AS Tipo, LEFT(d.CodCuenta, 2) AS Codcuenta,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_2
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes,
                          (SELECT DISTINCT Descripcion
                            FROM          dbo.PlanCuentasContables AS PlanCuentasContables_1
                            WHERE      (CodCuentaContable = LEFT(d.CodCuenta, 2)) AND (IdEmpresa =
                                                       (SELECT     IdEmpresa
                                                         FROM          dbo.Zona AS Zona_1
                                                         WHERE      (CodZona = c.Zona)))) AS cuenta, SUM(d.impDebe) - SUM(d.impHaber) AS Ejercicio
FROM         dbo.MovContables_D AS d LEFT OUTER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta LEFT OUTER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C
WHERE     (LEFT(d.CodCuenta, 2) BETWEEN '50' AND '59') AND (c.Mes BETWEEN 01 AND 12) --AND (c.Anio = 2008) AND (p.IdEmpresa = 1) 
AND (c.Estado <> '4') 
                      AND (d.estado <> '4') AND (d.codPro <> '000001')
GROUP BY LEFT(d.CodCuenta, 2), c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
/****** Object:  View [dbo].[vEstadoGananciasPerdidasold]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
CREATE VIEW [dbo].[vEstadoGananciasPerdidasold]
AS
SELECT     'UTILIDAD BRUTA' AS Total, 'VENTAS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '70') AS codcuenta, 
                      ISNULL(ABS(SUM(d.impDebe) - SUM(d.impHaber)), 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) IN ('70')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'UTILIDAD BRUTA' AS Expr1, 'COSTO DE VENTAS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_9
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '69') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '69') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, p.IdEmpresa
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS ADMINISTRATIVOS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_6
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '94') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '94') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS VENTAS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_5
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '95') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '95') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)GASTOS FINANCIEROS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_4
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '97') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) - SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '97') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(-)CARGAS EXCEPCIONALES' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_3
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '66') AS codcuenta, 
                      ISNULL(SUM(d.impDebe) + SUM(d.impHaber), 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '66') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS total, '(-)CARGAS EXCEPCIONALES' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_3
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '65') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona))) AND (LEFT(p.CodCuentaContable, 3) = '659') AND (p.Descripcion LIKE 'SANCION%') AND (p.CtaDebe = '')
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXTRAORDINARIOS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_2
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '75') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) , 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) IN ('73','74','75')) AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes

UNION ALL 
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS EXCEPCIONALES' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_2
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '76') AS codcuenta, 
                      ISNULL((SUM(d.impDebe) + SUM(d.impHaber)) * - 1, 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '76') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
UNION ALL
SELECT     'OTROS INGRESOS OPERATIVOS' AS Total, '(+)INGRESOS FINANCIEROS' AS Tipo,
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_1
                            WHERE      (CodZona = c.Zona)) AS Empresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes, ISNULL(MAX(LEFT(d.CodCuenta, 2)), '77') AS codcuenta, 
                      ISNULL(SUM(d.impDebe) + SUM(d.impHaber), 0.00) AS importe, ISNULL(MAX(e.PorRenta), 0.00) AS PorRenta
FROM         dbo.MovContables_D AS d INNER JOIN
                      dbo.PlanCuentasContables AS p ON p.CodCuentaContable = d.CodCuenta INNER JOIN
                      dbo.MovContables_C AS c ON c.IdMovContables_C = d.IdMovContables_C INNER JOIN
                      dbo.Empresa AS e ON e.IdEmpresa = p.IdEmpresa
WHERE     (LEFT(d.CodCuenta, 2) = '77') AND (d.estado <> '4') AND (c.Estado <> '4') AND (d.codPro <> '000001') AND (p.IdEmpresa =
                          (SELECT     IdEmpresa
                            FROM          dbo.Zona AS Zona_8
                            WHERE      (CodZona = c.Zona)))
GROUP BY p.IdEmpresa, c.Zona, c.CodUnidadEconomica, c.Anio, c.Mes
/****** Object:  View [dbo].[vLoggins]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
create view [dbo].[vLoggins]
as
select Usuario=b.idUsuario,Sistema=d.id,Nivel=c.idNivelAcceso,b.Username,b.Password,Nombres=b.nombres,Apellidos=b.Apellidos,BitMap=b.imagen,DescripcionAcceso=c.NivelAcceso,DescripcionSistema=d.NameSystem
from Accesos a
inner join usuarios b 
on a.idUsuario=b.idUsuario
inner join nivelAccesos c
on a.idNivel=c.idNivelAcceso
inner join sistemas d
on a.idSistema=d.id
/****** Object:  View [dbo].[vMeses]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
create view [dbo].[vMeses]
as
Select 'ENERO' mes,'01' nromes union 
Select 'FEBRERO' mes,'02' nromes union 
Select 'MARZO' mes,'03' nromes union 
Select 'ABRIL' mes,'04' nromes union 
Select 'MAYO' mes,'05' nromes union 
Select 'JUNIO' mes,'06' nromes union 
Select 'JULIO' mes,'07' nromes union 
Select 'AGOSTO' mes,'08' nromes union 
Select 'SEPTIEMBRE' mes,'09' nromes union 
Select 'OCTUBRE' mes,'10' nromes union 
Select 'NOVIEMBRE' mes,'11' nromes union 
Select 'DICIEMBRE' mes,'12' nromes 
/****** Object:  View [dbo].[vRPT_LibroInventarios]    Script Date: 18/08/2023 15:31:38 ******/

-- Bloque
CREATE VIEW [dbo].[vRPT_LibroInventarios]
AS
SELECT     TOP (100) PERCENT CASE WHEN LEFT(b.codCuentaContable, 2) = 10 OR
                      LEFT(b.codCuentaContable, 2) = 12 OR
                      LEFT(b.codCuentaContable, 2) = 14 OR
                      LEFT(b.codCuentaContable, 2) = 16 OR
                      LEFT(b.codCuentaContable, 2) = 19 OR
                      LEFT(b.codCuentaContable, 2) = 20 OR
                      LEFT(b.codCuentaContable, 2) = 21 OR
                      LEFT(b.codCuentaContable, 2) = 22 OR
                      LEFT(b.codCuentaContable, 2) = 23 OR
                      LEFT(b.codCuentaContable, 2) = 24 OR
                      LEFT(b.codCuentaContable, 2) = 25 OR
                      LEFT(b.codCuentaContable, 2) = 26 OR
                      LEFT(b.codCuentaContable, 2) = 28 OR
                      LEFT(b.codCuentaContable, 2) = 29 OR
                      LEFT(b.codCuentaContable, 2) = 31 OR
                      LEFT(b.codCuentaContable, 2) = 32 OR
                      LEFT(b.codCuentaContable, 2) = 33 OR
                      LEFT(b.codCuentaContable, 2) = 34 OR
                      LEFT(b.codCuentaContable, 2) = 35 OR
                      LEFT(b.codCuentaContable, 2) = 36 OR
                      LEFT(b.codCuentaContable, 2) = 37 OR
                      LEFT(b.codCuentaContable, 2) = 38 OR
                      LEFT(b.codCuentaContable, 2) = 39 THEN 'ACTIVO' WHEN LEFT(b.codCuentaContable, 2) = 40 OR
                      LEFT(b.codCuentaContable, 2) = 41 OR
                      LEFT(b.codCuentaContable, 2) = 42 OR
                      LEFT(b.codCuentaContable, 2) = 45 OR
                      LEFT(b.codCuentaContable, 2) = 46 OR
                      LEFT(b.codCuentaContable, 2) = 47 OR
                      LEFT(b.codCuentaContable, 2) = 48 OR
                      LEFT(b.codCuentaContable, 2) = 49 OR
                      LEFT(b.codCuentaContable, 2) = 50 OR
                      LEFT(b.codCuentaContable, 2) = 55 OR
                      LEFT(b.codCuentaContable, 2) = 56 OR
                      LEFT(b.codCuentaContable, 2) = 57 OR
                      LEFT(b.codCuentaContable, 2) = 58 OR
                      LEFT(b.codCuentaContable, 2) = 59 THEN 'PASIVO Y PATRIMONIO' END AS Grupo1, CASE WHEN LEFT(b.codCuentaContable, 2) = 10 OR
                      LEFT(b.codCuentaContable, 2) = 12 OR
                      LEFT(b.codCuentaContable, 2) = 14 OR
                      LEFT(b.codCuentaContable, 2) = 16 OR
                      LEFT(b.codCuentaContable, 2) = 19 OR
                      LEFT(b.codCuentaContable, 2) = 20 OR
                      LEFT(b.codCuentaContable, 2) = 21 OR
                      LEFT(b.codCuentaContable, 2) = 22 OR
                      LEFT(b.codCuentaContable, 2) = 23 OR
                      LEFT(b.codCuentaContable, 2) = 24 OR
                      LEFT(b.codCuentaContable, 2) = 25 OR
                      LEFT(b.codCuentaContable, 2) = 26 OR
                      LEFT(b.codCuentaContable, 2) = 28 OR
                      LEFT(b.codCuentaContable, 2) = 29 THEN 'ACTIVO CORRIENTE' WHEN LEFT(b.codCuentaContable, 2) = 31 OR
                      LEFT(b.codCuentaContable, 2) = 32 OR
                      LEFT(b.codCuentaContable, 2) = 33 OR
                      LEFT(b.codCuentaContable, 2) = 34 OR
                      LEFT(b.codCuentaContable, 2) = 35 OR
                      LEFT(b.codCuentaContable, 2) = 36 OR
                      LEFT(b.codCuentaContable, 2) = 37 OR
                      LEFT(b.codCuentaContable, 2) = 38 OR
                      LEFT(b.codCuentaContable, 2) = 39 THEN 'ACTIVO NO CORRIENTE' WHEN LEFT(b.codCuentaContable, 2) = 40 OR
                      LEFT(b.codCuentaContable, 2) = 41 OR
                      LEFT(b.codCuentaContable, 2) = 42 OR
                      LEFT(b.codCuentaContable, 2) = 45 OR
                      LEFT(b.codCuentaContable, 2) = 46 OR
                      LEFT(b.codCuentaContable, 2) = 47 THEN 'PASIVO CORRIENTE' WHEN LEFT(b.codCuentaContable, 2) = 48 OR
                      LEFT(b.codCuentaContable, 2) = 49 THEN 'PASIVO NO CORRIENTE' WHEN LEFT(b.codCuentaContable, 2) = 50 OR
                      LEFT(b.codCuentaContable, 2) = 55 OR
                      LEFT(b.codCuentaContable, 2) = 56 OR
                      LEFT(b.codCuentaContable, 2) = 57 OR
                      LEFT(b.codCuentaContable, 2) = 58 OR
                      LEFT(b.codCuentaContable, 2) = 59 THEN 'PATRIMONIO' END AS Grupo2, b.CodCuentaContable AS CuentaC, UPPER(b.Descripcion) AS Des, 
                      CASE WHEN LEFT(b.codCuentaContable, 2) = 10 OR
                      LEFT(b.codCuentaContable, 2) = 12 OR
                      LEFT(b.codCuentaContable, 2) = 14 OR
                      LEFT(b.codCuentaContable, 2) = 16 OR
                      LEFT(b.codCuentaContable, 2) = 19 OR
                      LEFT(b.codCuentaContable, 2) = 20 OR
                      LEFT(b.codCuentaContable, 2) = 21 OR
                      LEFT(b.codCuentaContable, 2) = 22 OR
                      LEFT(b.codCuentaContable, 2) = 23 OR
                      LEFT(b.codCuentaContable, 2) = 24 OR
                      LEFT(b.codCuentaContable, 2) = 25 OR
                      LEFT(b.codCuentaContable, 2) = 26 OR
                      LEFT(b.codCuentaContable, 2) = 28 OR
                      LEFT(b.codCuentaContable, 2) = 29 OR
                      LEFT(b.codCuentaContable, 2) = 31 OR
                      LEFT(b.codCuentaContable, 2) = 32 OR
                      LEFT(b.codCuentaContable, 2) = 33 OR
                      LEFT(b.codCuentaContable, 2) = 34 OR
                      LEFT(b.codCuentaContable, 2) = 35 OR
                      LEFT(b.codCuentaContable, 2) = 36 OR
                      LEFT(b.codCuentaContable, 2) = 37 OR
                      LEFT(b.codCuentaContable, 2) = 38 OR
                      LEFT(b.codCuentaContable, 2) = 39 THEN SUM(a.impDebe) WHEN LEFT(b.codCuentaContable, 2) = 40 OR
                      LEFT(b.codCuentaContable, 2) = 41 OR
                      LEFT(b.codCuentaContable, 2) = 42 OR
                      LEFT(b.codCuentaContable, 2) = 45 OR
                      LEFT(b.codCuentaContable, 2) = 46 OR
                      LEFT(b.codCuentaContable, 2) = 47 OR
                      LEFT(b.codCuentaContable, 2) = 48 OR
                      LEFT(b.codCuentaContable, 2) = 49 OR
                      LEFT(b.codCuentaContable, 2) = 50 OR
                      LEFT(b.codCuentaContable, 2) = 55 OR
                      LEFT(b.codCuentaContable, 2) = 56 OR
                      LEFT(b.codCuentaContable, 2) = 57 OR
                      LEFT(b.codCuentaContable, 2) = 58 OR
                      LEFT(b.codCuentaContable, 2) = 59 THEN SUM(a.impHaber) END AS SubTotal, c.Anio, c.Mes, c.CodUnidadEconomica AS UnidadEconomica
FROM         dbo.MovContables_D AS a INNER JOIN
                      dbo.PlanCuentasContables AS b ON LEFT(a.CodCuenta, 2) = b.CodCuentaContable INNER JOIN
                      dbo.MovContables_C AS c ON a.IdMovContables_C = c.IdMovContables_C
WHERE     (LEFT(b.CodCuentaContable, 2) < 60) AND (LEFT(b.CodCuentaContable, 2) <> 30)
GROUP BY b.CodCuentaContable, b.Descripcion, c.Anio, c.Mes, c.CodUnidadEconomica
ORDER BY 'cuentaC'
