-- INSERT PARA TABLA AUTORES
INSERT INTO autores (nombre_autor) 
VALUES ('Gabriela Mistral')

INSERT INTO autores (nombre_autor) 
VALUES ('Pablo Neruda');

INSERT INTO autores (nombre_autor) 
VALUES ('Roberto Bolaño');

INSERT INTO autores (nombre_autor) 
VALUES ('Isabel Allende');

select * from autores;

-- LIBROS
INSERT INTO Libros (titulo, genero, anio_publicacion, id_autor) 
VALUES ('Desolación', 'Poesía', 1922, 1),
('Cien sonetos de amor', 'Poesía', 1959, 2),
('2666', 'Literatura Contemporánea', 2004, 3),
('La casa de los espíritus', 'Literatura Contemporánea', 1982, 4),
('Confieso que he vivido', 'Autobiografía', 1974, 2);


-- MIEMBROS

INSERT INTO Miembros (nombre_miembro) VALUES 
('Carlos Díaz'),
('María González'),
('Pedro López'),
('Ana María Rodríguez');

-- PRESTAMOS

INSERT INTO Prestamos (id_libro, id_miembro, fecha_prestamo, fecha_devolucion) VALUES 
(1, 1, '2024-08-01', '2024-08-09'),
(3, 2, '2024-08-03', '2024-08-10'),
(4, 3, '2024-08-04', '2024-08-11'),
(2, 4, '2024-08-05', '2024-08-12');
