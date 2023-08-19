from django.db import OperationalError

def ejecutar_script_por_bloques(cursor, script_sql):
    bloques = script_sql.split("-- Bloque")

    try:
        for bloque in bloques:
            if bloque.strip():
                cursor.execute(bloque)

    except OperationalError as e:
        return f"Error al ejecutar el bloque del script: {str(e)}"



