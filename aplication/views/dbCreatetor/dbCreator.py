from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.db import connection,connections
from ...ejecutadores.ejecutar_script import ejecutar_script_por_bloques
from django.conf import settings
from django.db.utils import OperationalError
import os


class TenantCreator(APIView):
    def get(self, request,nombre):
        # Ejecuta el procedimiento almacenado para crear la base de datos
        nombre_base = nombre
         # Ejecuta el procedimiento almacenado en la base de datos predeterminada
        cursor_default = connections['default'].cursor()
        consulta_sql_default = f"EXEC CrearTablasEnNuevaBaseDeDatos @NombreBaseDeDatos='{nombre_base}'"
        cursor_default.execute(consulta_sql_default)
        cursor_default.close()
        connections.databases['dynamic']['NAME'] = nombre_base

        try:
            # Realiza una consulta de prueba en la base de datos dinámica
            with connections['dynamic'].cursor() as cursor:
               # Obtener la ruta del archivo actual
                ruta_actual = os.path.abspath(os.path.dirname(__file__))

                    # Retroceder un nivel para llegar a la carpeta 'aplication'
                ruta_aplication = os.path.abspath(os.path.join(ruta_actual, '..','..'))

                    # Obtener la ruta de la carpeta 'scripts'
                ruta_scripts = os.path.join(ruta_aplication,'scripts')

                # Ruta para scriptTables.sql
                ruta_scriptTables = os.path.join(ruta_scripts, 'scriptTables.sql')

                # Ruta para scriptViews.sql
                ruta_scriptViews = os.path.join(ruta_scripts, 'scriptViews.sql')

                # Ruta para scriptFunctions.sql
                ruta_scriptFuncs = os.path.join(ruta_scripts, 'scriptFunctions.sql')

# Ruta para scriptProcedures.sql
                ruta_scriptProcs = os.path.join(ruta_scripts, 'scriptProcedures.sql')
               
                #  Leer el contenido del archivo de scriptTable SQL
                 # Leer el contenido del archivo de scriptTable SQL
                with open(ruta_scriptTables, 'r',encoding='utf-8') as script_file1:
                    script_tables = script_file1.read()
                    ejecutar_script_por_bloques(cursor,script_tables)
                #LEER Y CREAR EL CONTENIDO PARA LAS VISTAS
                with open(ruta_scriptViews, 'r',encoding='utf-8') as script_file2:
                    script_views = script_file2.read()
                    ejecutar_script_por_bloques(cursor,script_views)
                # LEER Y CREAR EL CONTENIDO PARA LAS FUNCIONES
                with open(ruta_scriptFuncs, 'r',encoding='utf-8') as script_file3:
                    script_funcs = script_file3.read()
                    ejecutar_script_por_bloques(cursor,script_funcs)
                # Leer el contenido del archivo de scriptProcedures SQL
                with open(ruta_scriptProcs, 'r',encoding='utf-8') as script_file4:
                    script_procs = script_file4.read()
                    ejecutar_script_por_bloques(cursor,script_procs)
            # cerrar conexion
            cursor.close()
            return Response("Scripts ejecutados correctamente", status=200)

        except OperationalError as e:
            return Response(f"Error al conectar a la nueva base de datos: {str(e)}", status=500)  
        