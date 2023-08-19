-- Bloque
CREATE PROCEDURE [dbo].[CrearTablasEnNuevaBaseDeDatos]
    @NombreBaseDeDatos NVARCHAR(128)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)
	DECLARE @script NVARCHAR(MAX)
    
    -- Crear la nueva base de datos
    SET @sql = 'CREATE DATABASE ' + QUOTENAME(@NombreBaseDeDatos)
    EXEC sp_executesql @sql
END

-- Bloque 
CREATE PROCEDURE [dbo].[EjecutarScriptExterno]
AS
BEGIN
    DECLARE @script22 NVARCHAR(MAX)
    
    -- Leer el contenido del script desde un archivo o asignarlo directamente
    SET @script22 = N'
        PRINT ''Hola desde el script externo''
        -- Otras sentencias SQL aquí
    '
    
    -- Ejecutar el script
    EXEC sp_executesql @script22
END
