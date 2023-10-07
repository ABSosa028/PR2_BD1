CREATE TABLE Pais (
    PAIS_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    COD VARCHAR(2)
);

INSERT INTO Pais (PAIS_ID, NOMBRE, COD)
VALUES
    (1, 'GUATEMALA', 'GT'),
    (2, 'ESTADOS UNIDOS', 'EU'),
    (3, 'MEXICO', 'MX'),
    (4, 'SALVADOR', 'SV'),
    (5, 'HONDURAS', 'HN'),
    (6, 'NICARAGUA', 'NI'),
    (7, 'COSTA RICA', 'CR');


CREATE TABLE Rol (
    ROL_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255)
);

INSERT INTO Rol (ROL_ID, NOMBRE)
VALUES
    (1, 'ADMIN'),
    (2, 'CLIENTE');


CREATE TABLE Usuario (
    USUARIO_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    APELLIDO VARCHAR(255),
    ALIAS VARCHAR(255),
    FECHA_NACIMIENTO DATE,
    CORREO VARCHAR(255),
    TELEFONO VARCHAR(20),
    DIRECCION VARCHAR(255),
    PASSWORD VARCHAR(255),
    PAIS_ID INT,
    ROL_ID INT,
    FOREIGN KEY (PAIS_ID) REFERENCES Pais(PAIS_ID),
    FOREIGN KEY (ROL_ID) REFERENCES Rol(ROL_ID)
);

INSERT INTO Usuario (USUARIO_ID, NOMBRE, APELLIDO, ALIAS, FECHA_NACIMIENTO, CORREO, TELEFONO, DIRECCION, PASSWORD, PAIS_ID, ROL_ID)
VALUES
    (1, 'Juan', 'Perez', 'admin', '2000-01-01', 'admin@gmail.com', '52636352', 'Zona 1', '123', 1, 1),
    (2, 'Luis', 'Gil', 'lugil', '1980-10-01', 'lugil@gmail.com', '41525214', 'Zona 4', '562', 1, 2),
    (3, 'Carlos', 'Gonzalez', 'calin', '1990-02-25', 'calin@gmail.com', '63635252', 'Zona 2', '325', 1, 2),
    (4, 'María', 'Rodríguez', 'MeryRo', '1990-05-15', 'maria.rodriguez@email.com', '123-456-7890', 'Calle 123, Ciudad', 'P@ssw0rd1', 1, 2),
    (5, 'Juan', 'Pérez', 'JotaP', '1985-09-23', 'juan.perez@email.com', '987-654-3210', 'Avenida Principal, Pueblo', 'Pa$$w0rd2', 2, 2),
    (6, 'Ana', 'López', 'AnitaL', '1992-03-08', 'ana.lopez@email.com', '555-123-7890', 'Calle 456, Ciudad', 'Secret#123', 3, 2),
    (7, 'Carlos', 'García', 'CarlitosG', '1988-12-12', 'carlos.garcia@email.com', '333-777-9999', 'Carrera 789, Ciudad', 'MyP@ssw0rd', 4, 2),
    (8, 'Laura', 'Martínez', 'LalaM', '1995-06-30', 'laura.martinez@email.com', '444-222-1111', 'Calle 789, Pueblo', 'LauPass123', 5, 2),
    (9, 'Pedro', 'Gómez', 'PedritoG', '1982-07-20', 'pedro.gomez@email.com', '777-888-9999', 'Avenida 234, Ciudad', 'G0m3zP@ss', 6, 2),
    (10, 'Isabel', 'Díaz', 'IsaD', '1997-04-12', 'isabel.diaz@email.com', '555-
777-2222', 'Calle 567, Pueblo', 'D1@zPass', 7, 2);


CREATE TABLE Tarjeta (
    TARJETA_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    NUMERO VARCHAR(20),
    VENCE DATE,
    USUARIO_ID INT,
    FOREIGN KEY (USUARIO_ID) REFERENCES Usuario(USUARIO_ID)
);

INSERT INTO Tarjeta (TARJETA_ID, NOMBRE, NUMERO, VENCE, USUARIO_ID)
VALUES
    (1, 'gil', '251-525-63', '2024-12-31', 2),
    (2, 'gonzalez', '452-555-65', '2025-01-30', 3),
    (3, 'gil', '485-525-88', '2025-08-25', 2),
    (4, 'Rodríguez', '52-525-88', '2024-05-15', 4),
    (5, 'Pérez', '485-23-88', '2023-11-30', 5),
    (6, 'López', '44-525-34', '2025-02-10', 6),
    (7, 'García', '354-525-56', '2023-09-22', 7),
    (8, 'Martínez', '485-521-78', '2024-07-18', 8),
    (9, 'Gómez', '125-525-05', '2024-03-05', 9),
    (10, 'Díaz', '305-451-88', '2023-12-10', 10);


CREATE TABLE Clasificacion (
    CLASIFICACION_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    EDADINICIAL INT,
    EDADFINAL INT
);
INSERT INTO Clasificacion (CLASIFICACION_ID, NOMBRE, EDADINICIAL, EDADFINAL)
VALUES
    (1, 'Infantil', 5, 99),
    (2, 'Todos', 1, 99),
    (3, 'Adultos', 18, 99),
    (4, 'Adolescentes', 13, 99);


CREATE TABLE Genero (
    GENERO_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255)
);
INSERT INTO Genero (GENERO_ID, NOMBRE)
VALUES
    (1, 'Aventura'),
    (2, 'Arcade'),
    (3, 'Deportes'),
    (4, 'Estrategia'),
    (5, 'Simulación');


CREATE TABLE Programador (
    PROGRAMADOR_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    APELLIDO VARCHAR(255),
    ALIAS VARCHAR(255)
);

INSERT INTO Programador (PROGRAMADOR_ID, NOMBRE, APELLIDO, ALIAS)
VALUES
    (1, 'Lukas', 'Reyes', 'lukas'),
    (2, 'Daniel', 'Zeta', 'zdaniel'),
    (3, 'Julio', 'Marroquin', 'julios'),
    (4, 'JR', 'Paniagua', 'jr'),
    (5, 'María', 'Rodríguez', 'MeryRo'),
    (6, 'Juan', 'Pérez', 'JotaP'),
    (7, 'Ana', 'López', 'AnitaL'),
    (8, 'Carlos', 'García', 'CarlitosG'),
    (9, 'Laura', 'Martínez', 'LalaM'),
    (10, 'Joel', 'Caballeros', 'joelgt');


CREATE TABLE Juego (
    JUEGO_ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    FECHA_LANZAMIENTO DATE,
    PRECIO_VENTA DECIMAL(10, 2),
    GENERO_ID INT,
    CLASIFICACION_ID INT,
    FOREIGN KEY (GENERO_ID) REFERENCES Genero(GENERO_ID),
    FOREIGN KEY (CLASIFICACION_ID) REFERENCES Calificacion(CLASIFICACION_ID)
);
INSERT INTO Juego (JUEGO_ID, NOMBRE, FECHA_LANZAMIENTO, PRECIO_VENTA, GENERO_ID, CLASIFICACION_ID)
VALUES
    (1, 'JUEGO1', '2023-12-10', 50.00, 1, 2),
    (2, 'JUEGO2', '2020-09-15', 45.00, 2, 2),
    (3, 'JUEGO3', '2021-12-30', 60.00, 3, 2),
    (4, 'JUEGO4', '2019-01-14', 75.00, 4, 2),
    (5, 'JUEGO5', '2022-05-16', 80.00, 5, 2),
    (6, 'The Legend of Zelda: Breath of the Wild', '2017-03-03', 49.99, 1, 2),
    (7, 'FIFA 22', '2021-10-01', 59.99, 2, 2),
    (8, 'Minecraft', '2011-11-18', 19.99, 3, 2),
    (9, 'Call of Duty: Warzone', '2020-03-10', 11.00, 4, 3),
    (10, 'Red Dead Redemption 2', '2018-10-26', 39.99, 5, 3),
    (11, 'The Witcher 3: Wild Hunt', '2015-05-19', 29.99, 1, 3),
    (12, 'Assassin''s Creed Valhalla', '2020-11-10', 49.99, 2, 3),
    (13, 'Fortnite', '2017-07-25', 11.00, 3, 2),
    (14, 'Overwatch', '2016-05-24', 19.99, 4, 2),
    (15, 'Cyberpunk 2077', '2020-12-10', 59.99, 5, 2),
    (16, 'Minecraft Dungeons', '2020-05-26', 24.99, 1, 2),
    (17, 'Rocket League', '2015-07-07', 9.99, 2, 2),
    (18, 'Among Us', '2018-06-15', 4.99, 3, 2),
    (19, 'Genshin Impact', '2020-09-28', 11.00, 4, 2),
    (20, 'Sekiro: Shadows Die Twice', '2019-03-22', 34.99, 5, 3),
    (21, 'Hades', '2020-09-17', 24.99, 1, 2),
    (22, 'Valorant', '2020-06-02', 11.00, 2, 2),
    (23, 'The Last of Us Part II', '2020-06-19', 39.99, 3, 3),
    (24, 'Fall Guys: Ultimate Knockout', '2020-08-04', 14.99, 4, 3),
    (25, 'Grand Theft Auto V', '2013-09-17', 29.99, 5, 2);


CREATE TABLE Juego_Programador (
    JUEGO_ID INT,
    PROGRAMADOR_ID INT,
    PRIMARY KEY (JUEGO_ID, PROGRAMADOR_ID),
    FOREIGN KEY (JUEGO_ID) REFERENCES Juego(JUEGO_ID),
    FOREIGN KEY (PROGRAMADOR_ID) REFERENCES Programador(PROGRAMADOR_ID)
);
INSERT INTO Juego_Programador (JUEGO_ID, PROGRAMADOR_ID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 1),
    (12, 2),
    (13, 3),
    (14, 4),
    (15, 5),
    (16, 6),
    (17, 7),
    (18, 8),
    (19, 9),
    (20, 10);


CREATE TABLE Promocion (
    PROMOCION_ID INT PRIMARY KEY,
    FECHAINICIO DATE,
    FECHAFIN DATE,
    DESCUENTO DECIMAL(5, 2),
    JUEGO_ID INT,
    FOREIGN KEY (JUEGO_ID) REFERENCES Juego(JUEGO_ID)
);

INSERT INTO Promocion (PROMOCION_ID, FECHAINICIO, FECHAFIN, DESCUENTO, JUEGO_ID)
VALUES
    (1, '2023-01-01', '2023-01-31', 0.1, 1),
    (2, '2022-12-24', '2022-12-26', 0.25, 1),
    (3, '2023-09-15', '2023-09-16', 0.15, 1),
    (4, '2023-10-31', '2023-11-02', 0.05, 1),
    (5, '2023-07-01', '2023-07-15', 0.1, 1),
    (6, '2023-01-01', '2023-01-31', 0.1, 2),
    (7, '2023-01-01', '2023-01-31', 0.1, 3),
    (8, '2023-01-01', '2023-01-31', 0.1, 4),
    (9, '2023-01-01', '2023-01-31', 0.1, 5),
    (10, '2023-12-24', '2023-12-26', 0.25, 2),
    (11, '2023-12-24', '2023-12-26', 0.25, 3),
    (12, '2023-12-24', '2023-12-26', 0.25, 4),
    (13, '2023-12-24', '2023-12-26', 0.25, 5),
    (14, '2023-07-01', '2023-07-15', 0.1, 2),
    (15, '2023-07-01', '2023-07-15', 0.1, 3),
    (16, '2022-09-12', '2022-09-27', 0.2, 6),
    (17, '2022-10-05', '2022-10-20', 0.15, 7),
    (18, '2022-11-20', '2022-12-05', 0.3, 8),
    (19, '2023-01-10', '2023-01-25', 0.1, 9),
    (20, '2023-02-15', '2023-03-02', 0.25, 10),
    (21, '2023-03-25', '2023-04-09', 0.35, 11),
    (22, '2023-04-02', '2023-04-17', 0.05, 12),
    (23, '2022-05-12', '2022-05-27', 0.4, 13),
    (24, '2022-06-07', '2022-06-22', 0.12, 14),
    (25, '2023-07-18', '2023-08-02', 0.28, 15),
    (26, '2023-08-10', '2023-08-25', 0.18, 16),
    (27, '2022-09-23', '2022-10-08', 0.08, 17),
    (28, '2022-10-30', '2022-11-14', 0.2, 18),
    (29, '2022-11-12', '2022-11-27', 0.12, 19),
    (30, '2022-12-22', '2023-01-06', 0.15, 20);


CREATE TABLE Compra (
    COMPRA_ID INT PRIMARY KEY,
    FECHA_COMPRA DATE,
    PRECIO_FINAL DECIMAL(10, 2),
    USUARIO_ID INT,
    JUEGO_ID INT,
    TARJETA_ID INT,
    FOREIGN KEY (USUARIO_ID) REFERENCES Usuario(USUARIO_ID),
    FOREIGN KEY (JUEGO_ID) REFERENCES Juego(JUEGO_ID),
    FOREIGN KEY (TARJETA_ID) REFERENCES Tarjeta(TARJETA_ID)
);

INSERT INTO Compra (COMPRA_ID, FECHA_COMPRA, PRECIO_FINAL, USUARIO_ID, JUEGO_ID, TARJETA_ID)
VALUES
    (1, '2023-09-15', 42.50, 2, 1, 1),
    (2, '2023-01-01', 40.50, 2, 2, 3),
    (3, '2023-01-01', 54.00, 2, 3, 1),
    (4, '2023-01-01', 67.50, 2, 4, 3),
    (5, '2023-01-01', 72.00, 2, 5, 1),
    (6, '2022-12-25', 37.50, 3, 1, 2),
    (7, '2022-09-12', 39.99, 4, 6, 4),
    (8, '2022-09-13', 39.99, 5, 6, 5),
    (9, '2022-09-14', 39.99, 6, 6, 6),
    (10, '2022-09-15', 39.99, 7, 6, 7),
    (11, '2022-09-16', 39.99, 8, 6, 8),
    (12, '2022-09-17', 39.99, 9, 6, 9),
    (13, '2022-09-18', 39.99, 10, 6, 10),
    (14, '2022-09-19', 39.99, 2, 6, 3),
    (15, '2022-09-20', 39.99, 3, 6, 2),
    (16, '2022-10-05', 50.99, 4, 7, 4),
    (17, '2022-10-06', 50.99, 5, 7, 5),
    (18, '2022-10-07', 50.99, 6, 7, 6),
    (19, '2022-10-08', 50.99, 7, 7, 7),
    (20, '2022-10-09', 50.99, 8, 7, 8),
    (21, '2022-10-10', 50.99, 9, 7, 9),
    (22, '2022-10-11', 50.99, 10, 7, 10),
    (23, '2022-10-12', 50.99, 2, 7, 3),
    (24, '2022-10-13', 50.99, 3, 7, 2),
    (25, '2022-11-20', 13.99, 4, 8, 4),
    (26, '2022-11-21', 13.99, 5, 8, 5),
    (27, '2022-11-22', 13.99, 6, 8, 6),
    (28, '2022-11-23', 13.99, 7, 8, 7),
    (29, '2022-11-24', 13.99, 8, 8, 8),
    (30, '2022-11-25', 13.99, 9, 8, 9),
    (31, '2022-11-26', 13.99, 10, 8, 10),
    (32, '2022-11-27', 13.99, 2, 8, 3),
    (33, '2022-11-28', 13.99, 3, 8, 2),
    (34, '2023-02-15', 22.99, 4, 10, 4),
    (35, '2023-02-16', 22.99, 5, 10, 5),
    (36, '2023-02-17', 22.99, 6, 10, 6),
    (37, '2023-02-18', 22.99, 7, 10, 7),
    (38, '2023-02-19', 22.99, 8, 10, 8),
    (39, '2023-02-20', 22.99, 9, 10, 9),
    (40, '2023-02-21', 22.99, 10, 10, 10),
    (41, '2023-02-22', 22.99, 2, 10, 3),
    (42, '2023-02-23', 22.99, 3, 10, 2),
    (43, '2023-03-25', 19.49, 4, 11, 4),
    (44, '2023-03-26', 19.49, 5, 11, 5),
    (45, '2023-03-27', 19.49, 6, 11, 6),
    (46, '2023-03-28', 19.49, 7, 11, 7),
    (47, '2023-03-29', 19.49, 8, 11, 8),
    (48, '2023-03-30', 19.49, 9, 11, 9),
    (49, '2023-03-31', 19.49, 10, 11, 10),
    (50, '2023-04-01', 19.49, 2, 11, 3),
    (51, '2023-04-02', 19.49, 3, 11, 2),
    (52, '2023-04-03', 7.99, 4, 12, 4),
    (53, '2023-04-04', 7.99, 5, 12, 5),
    (54, '2023-04-05', 7.99, 6, 12, 6),
    (55, '2023-04-06', 7.99, 7, 12, 7),
    (56, '2023-04-07', 7.99, 8, 12, 8),
    (57, '2023-04-08', 7.99, 9, 12, 9),
    (58, '2023-04-09', 7.99, 10, 12, 10),
    (59, '2023-04-10', 7.99, 2, 12, 3),
    (60, '2023-04-11', 7.99, 3, 12, 2),
    (61, '2022-05-12', 24.99, 4, 13, 4),
    (62, '2022-05-13', 24.99, 5, 13, 5),
    (63, '2022-05-14', 24.99, 6, 13, 6),
    (64, '2022-05-15', 24.99, 7, 13, 7),
    (65, '2022-05-16', 24.99, 8, 13, 8),
    (66, '2022-05-17', 24.99, 9, 13, 9),
    (67, '2022-05-18', 24.99, 10, 13, 10),
    (68, '2022-05-19', 24.99, 2, 13, 3),
    (69, '2022-05-20', 24.99, 3, 13, 2),
    (70, '2023-07-18', 57.59, 4, 15, 4),
    (71, '2023-07-19', 57.59, 5, 15, 5),
    (72, '2023-07-20', 57.59, 6, 15, 6),
    (73, '2023-07-21', 57.59, 7, 15, 7),
    (74, '2023-07-22', 57.59, 8, 15, 8),
    (75, '2023-07-23', 57.59, 9, 15, 9),
    (76, '2023-07-24', 57.59, 10, 15, 10),
    (77, '2023-07-25', 57.59, 2, 15, 3),
    (78, '2023-07-26', 57.59, 3, 15, 2),
    (79, '2023-08-10', 44.39, 4, 16, 4),
    (80, '2023-08-11', 44.39, 5, 16, 5),
    (81, '2023-08-12', 44.39, 6, 16, 6),
    (82, '2023-08-13', 44.39, 7, 16, 7),
    (83, '2023-08-14', 44.39, 8, 16, 8),
    (84, '2023-08-15', 44.39, 9, 16, 9),
    (85, '2023-08-16', 44.39, 10, 16, 10),
    (86, '2023-08-17', 44.39, 2, 16, 3),
    (87, '2023-08-18', 44.39, 3, 16, 2),
    (88, '2022-09-23', 15.59, 4, 17, 4),
    (89, '2022-09-24', 15.59, 5, 17, 5),
    (90, '2022-09-25', 15.59, 6, 17, 6),
    (91, '2022-09-26', 15.59, 7, 17, 7),
    (92, '2022-09-27', 15.59, 8, 17, 8),
    (93, '2022-09-28', 15.59, 9, 17, 9),
    (94, '2022-09-29', 15.59, 10, 17, 10),
    (95, '2022-09-30', 15.59, 2, 17, 3),
    (96, '2022-10-01', 15.59, 3, 17, 2),
    (97, '2022-10-30', 13.19, 4, 18, 4),
    (98, '2022-10-31', 13.19, 5, 18, 5),
    (99, '2022-11-01', 13.19, 6, 18, 6),
    (100, '2022-11-02', 13.19, 7, 18, 7),
    (101, '2022-11-03', 13.19, 8, 18, 8),
    (102, '2022-11-04', 13.19, 9, 18, 9),
    (103, '2022-11-05', 13.19, 10, 18, 10),
    (104, '2022-11-06', 13.19, 2, 18, 3),
    (105, '2022-11-07', 13.19, 3, 18, 2),
    (106, '2022-11-12', 11.09, 4, 19, 4),
    (107, '2022-11-13', 11.09, 5, 19, 5),
    (108, '2022-11-14', 11.09, 6, 19, 6),
    (109, '2022-11-15', 11.09, 7, 19, 7),
    (110, '2022-11-16', 11.09, 8, 19, 8),
    (111, '2022-11-17', 11.09, 9, 19, 9),
    (112, '2022-11-18', 11.09, 10, 19, 10),
    (113, '2022-11-19', 11.09, 2, 19, 3),
    (114, '2022-11-20', 11.09, 3, 19, 2),
    (115, '2022-12-22', 7.49, 4, 20, 4),
    (116, '2022-12-23', 7.49, 5, 20, 5),
    (117, '2022-12-24', 7.49, 6, 20, 6),
    (118, '2022-12-25', 7.49, 7, 20, 7),
    (119, '2022-12-26', 7.49, 8, 20, 8),
    (120, '2022-12-27', 7.49, 9, 20, 9),
    (121, '2022-12-28', 7.49, 10, 20, 10),
    (122, '2022-12-29', 7.49, 2, 20, 3),
    (123, '2022-12-30', 7.49, 3, 20, 2);


CREATE TABLE `calificacion` (
  `USUARIO_ID` int(11) NOT NULL,
  `JUEGO_ID` int(11) NOT NULL,
  `VALOR` int(11) DEFAULT NULL
);

INSERT INTO `calificacion` (`USUARIO_ID`, `JUEGO_ID`, `VALOR`) VALUES
(2, 1, 4),
(2, 2, 5),
(2, 3, 3),
(2, 4, 5),
(2, 5, 4),
(3, 1, 4),
(4, 6, 5),
(4, 7, 5),
(4, 8, 4),
(4, 9, 4),
(4, 20, 3),
(5, 6, 5),
(5, 7, 5),
(5, 8, 4),
(5, 13, 4),
(5, 19, 1),
(5, 25, 4),
(6, 6, 5),
(6, 7, 5),
(6, 8, 4),
(6, 15, 1),
(6, 18, 2),
(7, 6, 5),
(7, 7, 5),
(7, 8, 4),
(7, 10, 2),
(7, 16, 5),
(7, 23, 1),
(8, 6, 5),
(8, 7, 5),
(8, 8, 4),
(8, 12, 5),
(8, 17, 3),
(8, 24, 2),
(9, 6, 5),
(9, 7, 5),
(9, 8, 4),
(9, 14, 2),
(9, 21, 5),
(10, 6, 5),
(10, 7, 5),
(10, 8, 4),
(10, 11, 3),
(10, 22, 4);

CREATE TABLE `juego_pais` (
  `pais_id` int(11) DEFAULT NULL,
  `juego_id` int(11) DEFAULT NULL
);


INSERT INTO `juego_pais` (`pais_id`, `juego_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19),
(7, 20),
(7, 21),
(7, 22),
(7, 23),
(7, 24),
(7, 25);

CREATE TABLE `lista_deseos` (
  `USUARIO_ID` int(11) NOT NULL,
  `JUEGO_ID` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL
);

INSERT INTO `lista_deseos` (`USUARIO_ID`, `JUEGO_ID`, `FECHA`) VALUES
(3, 2, '2023-09-15'),
(3, 3, '2023-09-15'),
(3, 4, '2023-09-15'),
(3, 5, '2023-09-15');



-- Creación de la vista Juegos_Con_Promocion
CREATE VIEW Juegos_Con_Promocion AS
SELECT
    J.JUEGO_ID,
    J.NOMBRE AS Nombre_del_Juego,
    J.FECHA_LANZAMIENTO AS Fecha_de_Lanzamiento,
    J.PRECIO_VENTA AS Precio_de_Venta,
    G.NOMBRE AS Género_del_Juego,
    C.NOMBRE AS Clasificación_del_Juego,
    P.FECHAINICIO AS Fecha_de_Inicio_de_Promoción,
    P.FECHAFIN AS Fecha_de_Fin_de_Promoción,
    P.DESCUENTO AS Descuento_de_Promoción
FROM Juego J
INNER JOIN Promocion P ON J.JUEGO_ID = P.JUEGO_ID
INNER JOIN Genero G ON J.GENERO_ID = G.GENERO_ID
INNER JOIN Calificacion C ON J.CLASIFICACION_ID = C.CALIFICACION_ID;

-- Creación de la vista Desarrolladores_Mas_Comprados
CREATE VIEW Desarrolladores_Mas_Comprados AS
SELECT
    JP.PROGRAMADOR_ID,
    CONCAT(P.NOMBRE, ' ', P.APELLIDO) AS Alias_del_Desarrollador,
    RANK() OVER (ORDER BY COUNT(C.JUEGO_ID) DESC) AS Posición
FROM Juego_Programador JP
INNER JOIN Compra C ON JP.JUEGO_ID = C.JUEGO_ID
INNER JOIN Programador P ON JP.PROGRAMADOR_ID = P.PROGRAMADOR_ID
GROUP BY JP.PROGRAMADOR_ID
ORDER BY Posición;

-- Creación de la vista Juegos_Vendidos_Por_Pais
CREATE VIEW Juegos_Vendidos_Por_Pais AS
SELECT
    P.PAIS_ID,
    P.NOMBRE AS País,
    COUNT(C.JUEGO_ID) AS Cantidad_de_Juegos_Vendidos
FROM Compra C
INNER JOIN Usuario U ON C.USUARIO_ID = U.USUARIO_ID
INNER JOIN Pais P ON U.PAIS_ID = P.PAIS_ID
GROUP BY P.PAIS_ID, P.NOMBRE
ORDER BY Cantidad_de_Juegos_Vendidos DESC;

-- Creación de la vista Juegos_Con_Mejor_Calificacion_Por_Pais
CREATE VIEW Juegos_Con_Mejor_Calificacion_Por_Pais AS
SELECT
    P.PAIS_ID,
    P.NOMBRE AS País,
    J.JUEGO_ID,
    J.NOMBRE AS Nombre_del_Juego,
    AVG(C.VALOR) AS Calificación_Promedio
FROM Calificacion C
INNER JOIN Juego J ON C.JUEGO_ID = J.JUEGO_ID
INNER JOIN Compra CO ON J.JUEGO_ID = CO.JUEGO_ID
INNER JOIN Usuario U ON CO.USUARIO_ID = U.USUARIO_ID
INNER JOIN Pais P ON U.PAIS_ID = P.PAIS_ID
GROUP BY P.PAIS_ID, P.NOMBRE, J.JUEGO_ID, J.NOMBRE
ORDER BY Calificación_Promedio DESC
LIMIT 5;

-- Creación de la vista Usuarios_Con_Mas_Compras_En_Promocion
CREATE VIEW Usuarios_Con_Mas_Compras_En_Promocion AS
SELECT
    U.USUARIO_ID,
    U.NOMBRE AS Nombre_del_Usuario,
    U.APELLIDO AS Apellido_del_Usuario,
    COUNT(C.COMPRA_ID) AS Cantidad_de_Compras
FROM Compra C
INNER JOIN Usuario U ON C.USUARIO_ID = U.USUARIO_ID
INNER JOIN Promocion P ON C.JUEGO_ID = P.JUEGO_ID
GROUP BY U.USUARIO_ID, U.NOMBRE, U.APELLIDO
ORDER BY Cantidad_de_Compras DESC
LIMIT 5;
