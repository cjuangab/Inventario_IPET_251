SELECT *
FROM laboratorio INNER JOIN profesor
ON laboratorio.idlaboratorio= profesor.Laboratorio_idlaboratorio

SELECT *
FROM laboratorio INNER JOIN herramental
ON laboratorio.idlaboratorio= herramental.Laboratorio_idlaboratorio


SELECT *
FROM laboratorio INNER JOIN equipamiento
ON laboratorio.idlaboratorio= equipamiento.Laboratorio_idlaboratorio

