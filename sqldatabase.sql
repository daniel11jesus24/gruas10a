create DATABASE gruas_10a;
USE gruas_10a;
-- Create the 'corporacion' table
CREATE TABLE corporacion (
  IDCorporacion INT  IDENTITY(1,1) PRIMARY KEY,
  Direccion VARCHAR(255),
  Longitud DECIMAL(10, 6),
  Latitud DECIMAL(10, 6),
  Nombre VARCHAR(255)
);

-- Insert data into the 'corporacion' table
INSERT INTO corporacion (Direccion, Longitud, Latitud, Nombre) VALUES
('Calle 12 Ciudad F', 40.123456, -74.987654, 'Corporación A'),
('Avenida XYZ, Ciudad G', 35.987654, -82.123456, 'Corporación B'),
('Rue de la Ville, Ville H', 48.654321, 2.123456, 'Corporation C'),
('123 Main St, City I', 30.567890, -95.432109, 'Corporation D'),
('Av. Central, Cidade J', 38.987654, -76.543210, 'Corporation E');

-- Create the 'usuario' table
CREATE TABLE usuario (
  IDUsuario INT  IDENTITY(1,1) PRIMARY KEY,
  Nombre VARCHAR(50),
  App VARCHAR(50),
  Apm VARCHAR(50),
  Telefono VARCHAR(20),
  Correo VARCHAR(100),
  passwort VARCHAR(15),
  tipo VARCHAR(50)
);

-- Insert data into the 'usuario' table
INSERT INTO usuario (  Nombre, App, Apm, Telefono, Correo, passwort, tipo) VALUES
( 'Juan', 'Perez', 'Gomez', '1234567890', 'juan@email.com', 'clave123', ''),
( 'Maria', 'Gonzalez', 'Lopez', '9876543210', 'maria@email.com', 'clave456', ''),
(  'Carlos', 'Martinez', 'Rodriguez', '5551234567', 'carlos@email.com', 'password123', ''),
(  'Ana', 'Lopez', 'Hernandez', '777888999', 'ana@email.com', 'pass1234', ''),
( 'Luis', 'Sanchez', 'Torres', '3334445555', 'luis@email.com', 'luispass', '');


-- Create the 'corralon' table
CREATE TABLE corralon (
  IDCorralon INT  IDENTITY(1,1) PRIMARY KEY,
  Direccion VARCHAR(255),
  Longitud DECIMAL(10, 6),
  Latitud DECIMAL(10, 6),
  Nombre VARCHAR(100),
  Telefono VARCHAR(20),
  correo VARCHAR(100),
  Res_IDUsu INT,
  FOREIGN KEY (Res_IDUsu) REFERENCES usuario (IDUsuario)
);

-- Insert data into the 'corralon' table
INSERT INTO corralon (  Direccion, Longitud, Latitud, Nombre, Telefono, correo, Res_IDUsu) VALUES
( 'Calle 12 Ciudad A', 40.123456, -74.987654, 'Corralón Uno', '123-456-7890', 'correo1@example.com', 1),
(  'Avenida ABC, Ciudad B', 35.987654, -82.123456, 'Corralón Dos', '987-654-3210', 'correo2@example.com', 2),
( 'Rue de la Ville, Ville C', 48.654321, 2.123456, 'Corralón Tres', '555-555-5555', 'correo3@example.com', 3),
(  '123 Main St, City D', 30.567890, -95.432109, 'Corralón Cuatro', '111-222-3333', 'correo4@example.com', 4),
( 'Av. Central, Cidade E', 38.987654, -76.543210, 'Corralón Cinco', '999-888-7777', 'correo5@example.com', 5);

-- Create the 'diasoperacion' table
CREATE TABLE diasoperacion (
  IDDIa INT  IDENTITY(1,1) PRIMARY KEY,
  DiaSemana VARCHAR(50),
  Horario VARCHAR(100),
  IDCorralon_f INT,
  FOREIGN KEY (IDCorralon_f) REFERENCES corralon (IDCorralon)
);

-- Insert data into the 'diasoperacion' table
INSERT INTO diasoperacion (  DiaSemana, Horario, IDCorralon_f) VALUES
( 'Lunes', '8:00 AM - 6:00 PM', 1),
( 'Martes', '8:00 AM - 6:00 PM', 2),
( 'Miércoles', '8:00 AM - 6:00 PM', 3),
(  'Jueves', '8:00 AM - 6:00 PM', 4),
(  'Viernes', '8:00 AM - 6:00 PM', 5);

-- Create the 'grua' table
CREATE TABLE grua (
  IDGrua INT  IDENTITY(1,1) PRIMARY KEY,
  Placa VARCHAR(20),
  Color VARCHAR(50),
  RazonSoc VARCHAR(255),
  Tipo VARCHAR(100),
  Region int,
);

-- Insert data into the 'grua' table
INSERT INTO grua (  Placa, Color, RazonSoc, Tipo, Region) VALUES
( 'ABC123', 'Rojo', 'Gruas Corp', 'Tipo A',1),
( 'XYZ456', 'Azul', 'Gruas Express', 'Tipo B',2),
( 'DEF789', 'Verde', 'Gruas Veloz', 'Tipo C',3),
(  'MNO123', 'Amarillo', 'Gruas Rápidas', 'Tipo D',4),
(  'PQR789', 'Blanco', 'Gruas Eficaces', 'Tipo E',5);

-- Create the 'operador' table
CREATE TABLE operador (
  IDOperador INT  IDENTITY(1,1) PRIMARY KEY,
  NumLicencia VARCHAR(20),
  Extra VARCHAR(255),
  IDgrua_f INT,
  IDUsuario_f INT,
  FOREIGN KEY (IDgrua_f) REFERENCES grua (IDGrua),
  FOREIGN KEY (IDUsuario_f) REFERENCES usuario (IDUsuario)
);

-- Insert data into the 'operador' table
INSERT INTO operador ( NumLicencia, Extra, IDgrua_f, IDUsuario_f) VALUES
( 'Licencia123', 'Información adicional 1', 1, 1),
( 'Licencia456', 'Información adicional 2', 2, 2),
( 'Licencia789', 'Información adicional 3', 3, 3),
( 'Licencia1011', 'Información adicional 4', 4, 4),
( 'Licencia1213', 'Información adicional 5', 5, 5);

-- Create the 'reportador' table
CREATE TABLE reportador (
  IDReportador INT  IDENTITY(1,1) PRIMARY KEY,
  IDCorporacion_f INT,
  IDUsuario_f INT,
  Extra VARCHAR(255),
  FOREIGN KEY (IDCorporacion_f) REFERENCES corporacion (IDCorporacion),
  FOREIGN KEY (IDUsuario_f) REFERENCES usuario (IDUsuario)
);

-- Insert data into the 'reportador' table
INSERT INTO reportador (  IDCorporacion_f, IDUsuario_f, Extra) VALUES
(  1, 1, 'Extra Info 1'),
(  2,2, 'Extra Info 2'),
(  3,3, 'Extra Info 3'),
( 4, 4, 'Extra Info 4'),
( 5, 5, 'Extra Info 5');

-- Create the 'siniestro' table
CREATE TABLE siniestro (
  IDSiniestro INT  IDENTITY(1,1) PRIMARY KEY,
  Direccion VARCHAR(255),
  Longitud DECIMAL(10, 6),
  Latitud DECIMAL(10, 6),
  Fecha DATE,
  IDReportador_f INT,
  Extra1 VARCHAR(255),
  Extra2 VARCHAR(255),
  FOREIGN KEY (IDReportador_f) REFERENCES reportador (IDReportador)
);

-- Insert data into the 'siniestro' table
INSERT INTO siniestro (  Direccion, Longitud, Latitud, Fecha, IDReportador_f, Extra1, Extra2) VALUES
(  'Calle 12 Ciudad A', 40.123456, -74.987654, '2023-01-15', 1, 'Descripción del siniestro 1', 'Notas adicionales 1'),
( 'Avenida ABC, Ciudad B', 35.987654, -82.123456, '2023-02-10', 2, 'Descripción del siniestro 2', 'Notas adicionales 2'),
( 'Rue de la Ville, Ville C', 48.654321, 2.123456, '2023-03-05', 3, 'Descripción del siniestro 3', 'Notas adicionales 3'),
( '123 Main St, City D', 30.567890, -95.432109, '2023-04-20', 4, 'Descripción del siniestro 4', 'Notas adicionales 4'),
(  'Av. Central, Cidade E', 38.987654, -76.543210, '2023-05-15', 5, 'Descripción del siniestro 5', 'Notas adicionales 5');


-- Create the 'vehiculo' table
CREATE TABLE vehiculo (
  IDVehiculo INT  IDENTITY(1,1) PRIMARY KEY,
  Placa VARCHAR(20),
  NumSerie VARCHAR(50),
  Color VARCHAR(50),
  Marca VARCHAR(100),
  Modelo VARCHAR(100),
  FechaEntrada DATE,
  FechaSalida DATE
);

-- Insert data into the 'vehiculo' table
INSERT INTO vehiculo (  Placa, NumSerie, Color, Marca, Modelo, FechaEntrada, FechaSalida) VALUES
( 'ABC123', '1234567890', 'Rojo', 'Toyota', 'Camry', '2023-01-15', '2023-03-20'),
( 'XYZ456', '9876543210', 'Azul', 'Honda', 'Civic', '2023-02-10', '2023-04-25'),
( 'DEF789', '5555555555', 'Verde', 'Ford', 'Focus', '2023-03-05', '2023-05-15'),
( 'MNO123', '1111111111', 'Amarillo', 'Chevrolet', 'Malibu', '2023-04-20', '2023-06-10'),
( 'PQR789', '9999999999', 'Blanco', 'Nissan', 'Altima', '2023-05-15', '2023-07-05');

CREATE TABLE format_soli (
  IDFormat_soli INT  IDENTITY(1,1) PRIMARY KEY,
  IDSiniestro_fk int,
  IDCorralon_fk int,
  IDVehiculo_fk int,
  folio varchar(25),
  FOREIGN KEY (IDSiniestro_fk) REFERENCES Siniestro (IDSiniestro),
  FOREIGN KEY (IDCorralon_fk) REFERENCES Corralon (IDCorralon),
  FOREIGN KEY (IDVehiculo_fk) REFERENCES vehiculo (IDVehiculo)
);

-- Inserción 1
INSERT INTO format_soli (IDSiniestro_fk, IDCorralon_fk, IDVehiculo_fk, folio) VALUES
(1, 1, 1, 'Folio-001');

-- Inserción 2
INSERT INTO format_soli (IDSiniestro_fk, IDCorralon_fk, IDVehiculo_fk, folio) VALUES
(2, 2, 2, 'Folio-002');

-- Inserción 3
INSERT INTO format_soli (IDSiniestro_fk, IDCorralon_fk, IDVehiculo_fk, folio) VALUES
(3, 3, 3, 'Folio-003');

-- Inserción 4
INSERT INTO format_soli (IDSiniestro_fk, IDCorralon_fk, IDVehiculo_fk, folio) VALUES
(4, 4, 4, 'Folio-004');

-- Inserción 5
INSERT INTO format_soli (IDSiniestro_fk, IDCorralon_fk, IDVehiculo_fk, folio) VALUES
(5, 5, 5, 'Folio-005');
