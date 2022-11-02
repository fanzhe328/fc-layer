# -*- coding: utf-8 -*-

import cx_Oracle

connection = cx_Oracle.connect("username", "password","xxxx")
cursor = connection.cursor()

cursor.execute('select * from xxx')
cursor.close()
connection.close()