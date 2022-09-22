--punto 1
select count(*)
from EMPLEADO$

--2
select ESTRATO$.Nombre, COUNT(*) as cantidad
from ESTRATO$
where ESTRATO$.Nombre = 'ESTRATO 1' or ESTRATO$.Nombre = 'ESTRATO 2' or ESTRATO$.Nombre = 'ESTRATO 3' or ESTRATO$.Nombre = 'ESTRATO 4' or ESTRATO$.Nombre = 'ESTRATO 5'
or ESTRATO$.Nombre = 'ESTRATO 6'
group by ESTRATO$.Nombre

--2
select SEDE$.sede, COUNT(*) as cantidad
from SEDE$
where SEDE$.sede = 'NORTE' or SEDE$.sede = 'CENTRO' or SEDE$.sede = 'SUR' or SEDE$.sede = 'ORIENTE' or SEDE$.sede = 'OCCIDENTE'
group by SEDE$.sede

--4
SELECT TOP 1 EMPLEADO$.nombres, Fecha_contratación$.fecha_de_contratacion
FROM EMPLEADO$
INNER JOIN Fecha_contratación$
ON Fecha_contratación$.Cc = EMPLEADO$.Cc
ORDER BY Fecha_contratación$.fecha_de_contratacion DESC

--5
SELECT TOP 1 EMPLEADO$.nombres, Fecha_contratación$.fecha_de_contratacion
FROM EMPLEADO$
INNER JOIN Fecha_contratación$
ON Fecha_contratación$.Cc = EMPLEADO$.Cc
ORDER BY Fecha_contratación$.fecha_de_contratacion ASC

--6
SELECT EMPLEADO$.nombres, SEDE$.sede, CARGO$.cargo
FROM EMPLEADO$
INNER JOIN SEDE$
ON SEDE$.Cc = EMPLEADO$.Cc
INNER JOIN CARGO$
ON CARGO$.cargo = SEDE$.Cc
where EMPLEADO$.Cc = '10662101'

--7
DELETE FROM EMPLEADO$
where Cc = 10188530;

--8
select * from Fecha_contratación$
where fecha_de_contratacion>='01/01/2000' and fecha_de_contratacion<='01/01/2005';

--9
select TOP 5 EMPLEADO$.nombres, EMPLEADO$.[edad ]
from EMPLEADO$
ORDER BY [edad ] ASC

select TOP 5 EMPLEADO$.nombres, EMPLEADO$.[edad ]
from EMPLEADO$
order by [edad ] desc

SELECT *
FROM EMPLEADO$
WHERE [edad ] BETWEEN 17 AND 25

SELECT AVG(EMPLEADO$.[edad ]) AS 'PROMEDIO EDAD'
FROM EMPLEADO$

select sum(sueldo) as 'suma'
from EMPLEADO$;

select nombres, sede, ESTRATO$.Nombre, FECHA_DE_CONTRATACION, cargo 
from EMPLEADO$
inner join SEDE$
ON SEDE$.Cc = EMPLEADO$.Cc
INNER JOIN Fecha_contratación$
ON Fecha_contratación$.Cc = SEDE$.Cc
INNER JOIN CARGO$
ON CARGO$.Cc_empleado = EMPLEADO$.Cc
INNER JOIN ESTRATO$
ON ESTRATO$.CC_empleado = EMPLEADO$.Cc
order by sueldo desc;
