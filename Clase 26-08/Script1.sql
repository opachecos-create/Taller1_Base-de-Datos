use tutoria;

select * FROM docente; ## Consulta tabla docente
select Nombre, Correo FROM docente;
select Nombre FROM docente WHERE id=10;  ##Filtro
select * FROM docente WHERE Nombre="Maria"; ##Filtro

select FechaHora from sesion; ##Recupera datos de la columna fecha y hora de la tabla sesion.
select * FROM Sesion WHERE FechaHora='2025-01-17 14:00:00'; ##Filtro
SELECT * FROM Sesion WHERE FechaHora BETWEEN '2025-01-17 14:00:00' AND '2025-02-12 09:30:00'; ##ENTRE 

##Ordenar resultados
SELECT IdTipoDocumento, nombre FROM docente ORDER BY IdTipoDocumento DESC;
SELECT nombre, apellido FROM docente ORDER BY nombre ASC;

##Limitar resultado
SELECT nombre FROM estudiante LIMIT 5;

##Buscar coincidencia con LIKE
SELECT nombre From estudiante WHERE nombre LIKE 'A%';
SELECT nombre From estudiante WHERE nombre LIKE '%A';
SELECT nombre From estudiante WHERE nombre LIKE 'M%';

##Agrupar y contar
SELECT  COUNT(*) From estudiante;

SELECT carrera, COUNT(*)AS total_estudiante From estudiante GROUP BY carrera;#Agrupa las carreras del total estudiantes 

#Usar funciones de agregacion
select avg(id) as programa_U from estudiante;