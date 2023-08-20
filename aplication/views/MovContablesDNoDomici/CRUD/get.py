from django.db import connections
from django.db.utils import OperationalError
def get_MovContablesDNoDomici():
    try:
         with connections['default'].cursor() as cursor:
                    cursor.execute("SELECT * FROM MovContablesDNoDomici")
                    rows = cursor.fetchall()
                    data=[]
                    for row in rows:
                        data.append({
                               'idnodomiciliado':row[0],
                               'movcontable_d':row[1].strip(),
                               'codunidadeconomica':row[2].strip(),
                                'tipodoccredfiscal':row[3].strip(),
                                'nrodocdua':row[4].strip(),
                                'anioduacredfiscal':row[5].strip(),
                                'montoretigv':row[6],
                                'pais':row[7].strip(),
                                'nombrenodomiciliado':row[8],
                                'rentabruta':row[9],
                                'deduccioncosto':row[10],
                                'rentaneta':row[11],
                                'tasaretencion':row[12],
                                'impuestoretenido':row[13],
                                'convenio2imposicion':row[14].strip(),
                                'tiporenta':row[15].strip(),
                                'aplicaart76':row[16],
                                'estado':row[17]
                               })
                    return data
    except OperationalError as e:
                return str(e)
def get_byid_MovContablesDNoDomici(id):
    try:
        with connections['default'].cursor() as cursor:
                    cursor.execute("SELECT * FROM MovContablesDNoDomici WHERE idnodomiciliado=%s",[id])
                    rows = cursor.fetchall()
                    data=[]
                    for row in rows:
                        data.append({
                               'idnodomiciliado':row[0],
                                'movcontable_d':row[1],
                               'codunidadeconomica':row[2].strip(),
                                'tipodoccredfiscal':row[3].strip(),
                                'nrodocdua':row[4].strip(),
                                'anioduacredfiscal':row[5].strip(),
                                'montoretigv':row[6],
                                'pais':row[7].strip(),
                                'nombrenodomiciliado':row[8],
                                'rentabruta':row[9],
                                'deduccioncosto':row[10],
                                'rentaneta':row[11],
                                'tasaretencion':row[12],
                                'impuestoretenido':row[13],
                                'convenio2imposicion':row[14].strip(),
                                'tiporenta':row[15].strip(),
                                'aplicaart76':row[16],
                                'estado':row[17]
                               })
                    return data
    except OperationalError as e:
                return str(e)