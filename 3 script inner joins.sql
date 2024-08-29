
--LIBROS Y SUS AUTORES
SELECT libros.id, libros.titulo, autores.nombre_autor  
FROM libros
INNER JOIN autores
ON libros.id_autor = autores.id

--VER TODOS LOS PRESTAMOS CON SU RESPECTIVO USUARIO
SELECT prestamos.id, prestamos.fecha_prestamo, prestamos.fecha_devolucion, miembros.nombre_miembro
FROM prestamos
INNER JOIN miembros
ON prestamos.id_miembro = miembros.id


--LIBROS PRESTADOS A CADA USUARIO

SELECT prestamos.fecha_prestamo, miembros.nombre_miembro, libros.titulo, libros.anio_publicacion
FROM prestamos
INNER JOIN miembros
ON prestamos.id_miembro = miembros.id
INNER JOIN libros
ON prestamos.id_libro = libros.id