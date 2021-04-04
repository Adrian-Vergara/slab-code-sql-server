/*1. PERSONAS QUE NO TIENEN SEGUNDO NOMBRE, PERO SI TIENEN SEGUNDO APELLIDO*/
SELECT * FROM dbo.persona WHERE segundo_nombre IS NULL AND segundo_apellido IS NOT NULL;


/*2. PERSONAS CUYO PADRE SE LLAMA PEDRO*/
SELECT p1.*, p2.primer_nombre as padre FROM dbo.persona as p1
INNER JOIN dbo.persona as p2 on p1.id_padre = p2.id
WHERE p2.primer_nombre like '%pedro%';

/*3. NÚMERO DE PERSONAS POR AÑO DE NACIMIENTO*/
SELECT COUNT(*) AS cantidad_personas, YEAR(p.fecha_nacimiento) AS anio_nacimiento FROM dbo.persona as p 
GROUP BY YEAR(p.fecha_nacimiento) ORDER BY YEAR(p.fecha_nacimiento) DESC;

/*4. CONSULTA TODA LA TABLA QUE MUESTRE LA EDAD EN MESES DE LA PERSONA EN UNA NUEVA COLUMNA*/
SELECT p.*, DATEDIFF(MONTH,p.fecha_nacimiento,GETDATE()) as edad_meses FROM dbo.persona as p;


/*5. LA CANTIDAD DE MADRES QUE TIENEN MÁS DE 5 HIJOS*/
select MIN(p2.primer_nombre) as madre, count(p1.id_madre) as numero_hijos FROM dbo.persona as p1
INNER JOIN dbo.persona as p2 on p1.id_madre= p2.id GROUP BY (p2.id_madre);
