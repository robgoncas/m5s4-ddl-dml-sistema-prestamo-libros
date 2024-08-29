
CREATE TABLE Autores(
id SERIAL PRIMARY KEY,
nombre_autor TEXT NOT NULL
);

CREATE TABLE Libros(
id SERIAL PRIMARY KEY,
titulo TEXT NOT NULL,
genero TEXT NOT NULL,
anio_publicacion INTEGER NOT NULL,
id_autor INTEGER REFERENCES Autores(id)
);
-- funciones FECHA/DATE hacen 
-- referencia a la hora local del servidor 
CREATE TABLE Miembros(
id SERIAL PRIMARY KEY,
nombre_miembro TEXT NOT NULL,
fecha_registro DATE DEFAULT current_date
);

CREATE TABLE Prestamos(
id SERIAL PRIMARY KEY,
id_libro INTEGER REFERENCES Libros(id),   
id_miembro INTEGER REFERENCES Miembros(id),
fecha_prestamo DATE NOT NULL,
fecha_devolucion DATE NOT NULL
);

--Para eliminar la regla de no recibir nulos
--ALTER TABLE Prestamos
--ALTER COLUMN fecha_devolucion DROP NOT NULL;

-- Listando todas las tablas de mi BD
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'

