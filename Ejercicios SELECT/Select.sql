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
TO_NUMBER(ROUND(AVG(e.salary)),'$999,999.99') AS "Salario medio"
FROM Employees e;




/*Mostrarel salario más alto, más bajo, salario total y salario promedio por cada tipo de puesto que se  tiene  en  la organización.  Etiquete  las  columnas  como  «Puesto»,  «Salario  Máximo»,  «Salario Mínimo», «Salario Total» y «Salario Promedio» respectivamente. Redondee los resultados con dos cifras decimales, con un formato numérico para la moneda de dólares*/

SELECT TO_CHAR(ROUND(MAX(SALARY)),'$99,999.00') AS "Salario Máximo",TO_CHAR(ROUND(MIN(SALARY)),'$99,999.00') AS "Salario mínimo",TO_CHAR(ROUND(SUM(SALARY)),'$999,999.00')AS "Salario Total", TO_CHAR(ROUND(AVG(SALARY)),'$99,999.00') AS "Salario Medio"
GROUP BY JOB_TITLE AS "Puesto"
FROM Employees e natural join Jobs j;