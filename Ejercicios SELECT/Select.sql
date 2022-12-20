/*
EJERCICIO 1
Mostrar el  salario  más  alto,  más  bajo,  salario  total  de  la  planilla  y  salario  promedio  de  la  tabla empleados. 
Etiquetarlas columnas como «Salario Máximo», «Salario Mínimo», «Salario Planilla» y «Salario Promedio» respectivamente. 
Redondearlos resultados al valor entero más cercano, con un formato numérico para la moneda de dólares.
*/

SELECT * FROM EMPLOYEES;

--Ej 1

SELECT TO_NUMBER(ROUND(MAX(e.salary)),'$99,999.99') AS "Salario Máximo",
       TO_NUMBER(ROUND(MIN(e.salary)),'$99,999.99') AS "Salario Mínimo",
       TO_NUMBER(ROUND(SUM(e.salary)),'$99,999.99')AS "Salario Total",
       TO_NUMBER(ROUND(AVG(e.salary)),'$99,999.99') AS "Salario medio"
FROM Employees e

