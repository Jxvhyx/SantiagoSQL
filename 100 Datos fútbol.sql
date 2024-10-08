CREATE DATABASE SantiagoMora;
USE SantiagoMora;


CREATE TABLE Jugadores (
    IdJugador INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Posicion VARCHAR(50),
    Edad INT,
    Nacionalidad VARCHAR(50),
    EquipoId INT
);

CREATE TABLE Equipos (
    IdEquipo INT PRIMARY KEY,
    NombreEquipo VARCHAR(100) NOT NULL,
    Ciudad VARCHAR(50),
    Entrenador VARCHAR(100)
);


CREATE TABLE Arbitros (
    IdArbitro INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    ExperienciaAnios INT,
    Nacionalidad VARCHAR(50)
);


CREATE TABLE Partidos (
    IdPartido INT PRIMARY KEY,
    Fecha DATE NOT NULL,
    EquipoLocalId INT,
    EquipoVisitanteId INT,
    ArbitroId INT,
    Resultado VARCHAR(10)
);

CREATE TABLE Plantillas (
    IdPlantilla INT AUTO_INCREMENT PRIMARY KEY,
    EquipoId INT,
    Temporada VARCHAR(10)

);

CREATE TABLE JugadoresPlantilla (
    IdJugador INT,
    IdPlantilla INT,
    PRIMARY KEY (IdJugador, IdPlantilla)
);


INSERT INTO Jugadores (IdJugador, Nombre, Posicion, Edad, Nacionalidad, EquipoId) VALUES
(1, 'Erling Haaland', 'Delantero', 23, 'Noruega', 2),
(2, 'Kevin De Bruyne', 'Centrocampista', 32, 'Bélgica', 2),
(3, 'Marcus Rashford', 'Delantero', 26, 'Inglaterra', 1),
(4, 'Mohamed Salah', 'Delantero', 31, 'Egipto', 3),
(5, 'Bruno Fernandes', 'Centrocampista', 29, 'Portugal', 1),
(6, 'Harry Kane', 'Delantero', 30, 'Inglaterra', 6),
(7, 'Bukayo Saka', 'Centrocampista', 22, 'Inglaterra', 5),
(8, 'Virgil van Dijk', 'Defensa', 32, 'Países Bajos', 3),
(9, 'Alisson Becker', 'Portero', 31, 'Brasil', 3),
(10, 'Trent Alexander-Arnold', 'Defensa', 25, 'Inglaterra', 3),
(11, 'Phil Foden', 'Centrocampista', 24, 'Inglaterra', 2),
(12, 'Kai Havertz', 'Centrocampista', 24, 'Alemania', 5),
(13, 'Raheem Sterling', 'Delantero', 29, 'Inglaterra', 4),
(14, 'Son Heung-min', 'Delantero', 31, 'Corea del Sur', 6),
(15, 'Martin Ødegaard', 'Centrocampista', 25, 'Noruega', 5),
(16, 'Gabriel Jesus', 'Delantero', 27, 'Brasil', 5),
(17, 'João Cancelo', 'Defensa', 29, 'Portugal', 2),
(18, 'Declan Rice', 'Centrocampista', 25, 'Inglaterra', 5),
(19, 'Casemiro', 'Centrocampista', 32, 'Brasil', 1),
(20, 'Christian Eriksen', 'Centrocampista', 31, 'Dinamarca', 1),
(21, 'Jadon Sancho', 'Delantero', 24, 'Inglaterra', 1),
(22, 'Diogo Jota', 'Delantero', 27, 'Portugal', 3),
(23, 'Ederson Moraes', 'Portero', 30, 'Brasil', 2),
(24, 'Rúben Dias', 'Defensa', 26, 'Portugal', 2),
(25, 'Thiago Silva', 'Defensa', 39, 'Brasil', 4),
(26, 'Pierre-Emile Højbjerg', 'Centrocampista', 28, 'Dinamarca', 6),
(27, 'Emiliano Martínez', 'Portero', 31, 'Argentina', 10),
(28, 'Ollie Watkins', 'Delantero', 28, 'Inglaterra', 10),
(29, 'Anthony Gordon', 'Delantero', 23, 'Inglaterra', 13),
(30, 'James Ward-Prowse', 'Centrocampista', 29, 'Inglaterra', 9),
(31, 'Lucas Paquetá', 'Centrocampista', 26, 'Brasil', 9),
(32, 'Alexander Isak', 'Delantero', 24, 'Suecia', 13),
(33, 'Nick Pope', 'Portero', 32, 'Inglaterra', 13),
(34, 'Kieran Trippier', 'Defensa', 33, 'Inglaterra', 13),
(35, 'Eberechi Eze', 'Centrocampista', 25, 'Inglaterra', 15),
(36, 'Wilfried Zaha', 'Delantero', 31, 'Costa de Marfil', 15),
(37, 'James Maddison', 'Centrocampista', 27, 'Inglaterra', 6),
(38, 'Dominic Calvert-Lewin', 'Delantero', 27, 'Inglaterra', 8),
(39, 'Jordan Pickford', 'Portero', 30, 'Inglaterra', 8),
(40, 'Tyrone Mings', 'Defensa', 30, 'Inglaterra', 10),
(41, 'Rodri', 'Centrocampista', 27, 'España', 2),
(42, 'Bernardo Silva', 'Centrocampista', 29, 'Portugal', 2),
(43, 'Andy Robertson', 'Defensa', 30, 'Escocia', 3),
(44, 'Joël Matip', 'Defensa', 32, 'Camerún', 3),
(45, 'Romelu Lukaku', 'Delantero', 31, 'Bélgica', 4),
(46, 'Nicolas Jackson', 'Delantero', 22, 'Senegal', 4),
(47, 'Mason Mount', 'Centrocampista', 25, 'Inglaterra', 1),
(48, 'Lisandro Martínez', 'Defensa', 26, 'Argentina', 1),
(49, 'Raphaël Varane', 'Defensa', 31, 'Francia', 1),
(50, 'Cristian Romero', 'Defensa', 25, 'Argentina', 6),
(51, 'Pape Matar Sarr', 'Centrocampista', 21, 'Senegal', 6),
(52, 'Pedro Porro', 'Defensa', 24, 'España', 6),
(53, 'Reece James', 'Defensa', 24, 'Inglaterra', 4),
(54, 'Enzo Fernández', 'Centrocampista', 23, 'Argentina', 4),
(55, 'Ben Chilwell', 'Defensa', 27, 'Inglaterra', 4),
(56, 'Ilkay Gündogan', 'Centrocampista', 33, 'Alemania', 2),
(57, 'Kalvin Phillips', 'Centrocampista', 28, 'Inglaterra', 2),
(58, 'Allan Saint-Maximin', 'Delantero', 27, 'Francia', 13),
(59, 'Dan Burn', 'Defensa', 31, 'Inglaterra', 13),
(60, 'Brentford', 'Delantero', 24, 'Ivan Toney', 18),
(61, 'Aaron Ramsdale', 'Portero', 25, 'Inglaterra', 5),
(62, 'Gabriel Magalhães', 'Defensa', 26, 'Brasil', 5),
(63, 'William Saliba', 'Defensa', 23, 'Francia', 5),
(64, 'Leandro Trossard', 'Delantero', 29, 'Bélgica', 5),
(65, 'Kai Havertz', 'Delantero', 24, 'Alemania', 5),
(66, 'Michail Antonio', 'Delantero', 33, 'Jamaica', 9),
(67, 'Jarrod Bowen', 'Delantero', 27, 'Inglaterra', 9),
(68, 'Said Benrahma', 'Delantero', 28, 'Argelia', 9),
(69, 'David Raya', 'Portero', 28, 'España', 5),
(70, 'Mykhailo Mudryk', 'Delantero', 23, 'Ucrania', 4),
(71, 'Conor Gallagher', 'Centrocampista', 24, 'Inglaterra', 4),
(72, 'Thiago Alcántara', 'Centrocampista', 32, 'España', 3),
(73, 'Darwin Núñez', 'Delantero', 25, 'Uruguay', 3),
(74, 'Ibrahima Konaté', 'Defensa', 25, 'Francia', 3),
(75, 'Harvey Elliott', 'Centrocampista', 21, 'Inglaterra', 3),
(76, 'Fabinho', 'Centrocampista', 30, 'Brasil', 3),
(77, 'Julian Alvarez', 'Delantero', 24, 'Argentina', 2),
(78, 'Nathan Aké', 'Defensa', 28, 'Países Bajos', 2),
(79, 'John Stones', 'Defensa', 29, 'Inglaterra', 2),
(80, 'Gianluca Scamacca', 'Delantero', 25, 'Italia', 9),
(81, 'Emerson Palmieri', 'Defensa', 29, 'Italia', 9),
(82, 'João Félix', 'Delantero', 24, 'Portugal', 4),
(83, 'Kai Havertz', 'Delantero', 24, 'Alemania', 5),
(84, 'Moussa Djenepo', 'Delantero', 25, 'Mali', 19),
(85, 'Joe Aribo', 'Centrocampista', 27, 'Nigeria', 19),
(86, 'Nathan Tella', 'Delantero', 24, 'Inglaterra', 19),
(87, 'Armando Broja', 'Delantero', 22, 'Albania', 4),
(88, 'Che Adams', 'Delantero', 27, 'Escocia', 19),
(89, 'Romeo Lavia', 'Centrocampista', 20, 'Bélgica', 19),
(90, 'Rico Lewis', 'Defensa', 19, 'Inglaterra', 2),
(91, 'Matheus Cunha', 'Delantero', 24, 'Brasil', 11),
(92, 'Hwang Hee-chan', 'Delantero', 27, 'Corea del Sur', 11),
(93, 'Pablo Fornals', 'Centrocampista', 27, 'España', 9),
(94, 'Lucas Moura', 'Delantero', 31, 'Brasil', 6),
(95, 'Cody Gakpo', 'Delantero', 24, 'Países Bajos', 3),
(96, 'Gonçalo Guedes', 'Delantero', 27, 'Portugal', 11),
(97, 'Nélson Semedo', 'Defensa', 30, 'Portugal', 11),
(98, 'Douglas Luiz', 'Centrocampista', 25, 'Brasil', 10),
(99, 'Jacob Ramsey', 'Centrocampista', 22, 'Inglaterra', 10),
(100, 'John McGinn', 'Centrocampista', 29, 'Escocia', 10);



INSERT INTO Equipos (IdEquipo, NombreEquipo, Ciudad, Entrenador) VALUES
(1, 'Manchester United', 'Manchester', 'Erik ten Hag'),
(2, 'Manchester City', 'Manchester', 'Pep Guardiola'),
(3, 'Liverpool', 'Liverpool', 'Jürgen Klopp'),
(4, 'Chelsea', 'Londres', 'Mauricio Pochettino'),
(5, 'Arsenal', 'Londres', 'Mikel Arteta'),
(6, 'Tottenham Hotspur', 'Londres', 'Ange Postecoglou'),
(7, 'Leicester City', 'Leicester', 'Enzo Maresca'),
(8, 'Everton', 'Liverpool', 'Sean Dyche'),
(9, 'West Ham United', 'Londres', 'David Moyes'),
(10, 'Aston Villa', 'Birmingham', 'Unai Emery'),
(11, 'Wolverhampton Wanderers', 'Wolverhampton', 'Gary ONeil'),
(12, 'Leeds United', 'Leeds', 'Daniel Farke'),
(13, 'Newcastle United', 'Newcastle', 'Eddie Howe'),
(14, 'Brighton & Hove Albion', 'Brighton', 'Roberto De Zerbi'),
(15, 'Crystal Palace', 'Londres', 'Roy Hodgson'),
(16, 'Fulham', 'Londres', 'Marco Silva'),
(17, 'Burnley', 'Burnley', 'Vincent Kompany'),
(18, 'Brentford', 'Londres', 'Thomas Frank'),
(19, 'Southampton', 'Southampton', 'Russell Martin'),
(20, 'Sheffield United', 'Sheffield', 'Paul Heckingbottom'),
(21, 'Barcelona', 'Barcelona', 'Xavi Hernández'),
(22, 'Real Madrid', 'Madrid', 'Carlo Ancelotti'),
(23, 'Atlético de Madrid', 'Madrid', 'Diego Simeone'),
(24, 'Sevilla', 'Sevilla', 'José Luis Mendilibar'),
(25, 'Real Sociedad', 'San Sebastián', 'Imanol Alguacil'),
(26, 'Real Betis', 'Sevilla', 'Manuel Pellegrini'),
(27, 'Villarreal', 'Villarreal', 'Quique Setién'),
(28, 'Valencia', 'Valencia', 'Rubén Baraja'),
(29, 'Athletic Club', 'Bilbao', 'Ernesto Valverde'),
(30, 'Celta de Vigo', 'Vigo', 'Rafa Benítez'),
(31, 'RCD Espanyol', 'Barcelona', 'Luis García'),
(32, 'Osasuna', 'Pamplona', 'Jagoba Arrasate'),
(33, 'Rayo Vallecano', 'Madrid', 'Francisco Rodríguez'),
(34, 'Getafe', 'Madrid', 'José Bordalás'),
(35, 'Mallorca', 'Palma de Mallorca', 'Javier Aguirre'),
(36, 'Almería', 'Almería', 'Vicente Moreno'),
(37, 'Granada', 'Granada', 'Paco López'),
(38, 'Girona', 'Girona', 'Míchel'),
(39, 'Juventus', 'Turín', 'Massimiliano Allegri'),
(40, 'Inter de Milán', 'Milán', 'Simone Inzaghi'),
(41, 'AC Milan', 'Milán', 'Stefano Pioli'),
(42, 'Roma', 'Roma', 'José Mourinho'),
(43, 'Napoli', 'Nápoles', 'Rudi García'),
(44, 'Lazio', 'Roma', 'Maurizio Sarri'),
(45, 'Atalanta', 'Bérgamo', 'Gian Piero Gasperini'),
(46, 'Fiorentina', 'Florencia', 'Vincenzo Italiano'),
(47, 'Torino', 'Turín', 'Ivan Jurić'),
(48, 'Bologna', 'Bolonia', 'Thiago Motta'),
(49, 'Udinese', 'Údine', 'Andrea Sottil'),
(50, 'Sassuolo', 'Sassuolo', 'Alessio Dionisi'),
(51, 'Lecce', 'Lecce', 'Roberto D\'Aversa'),
(52, 'Empoli', 'Empoli', 'Paolo Zanetti'),
(53, 'Sampdoria', 'Génova', 'Andrea Pirlo'),
(54, 'Hellas Verona', 'Verona', 'Marco Baroni'),
(55, 'Bayern Múnich', 'Múnich', 'Thomas Tuchel'),
(56, 'Borussia Dortmund', 'Dortmund', 'Edin Terzić'),
(57, 'RB Leipzig', 'Leipzig', 'Marco Rose'),
(58, 'Eintracht Frankfurt', 'Fráncfort', 'Dino Toppmöller'),
(59, 'Bayer Leverkusen', 'Leverkusen', 'Xabi Alonso'),
(60, 'Wolfsburgo', 'Wolfsburgo', 'Niko Kovač'),
(61, 'Borussia Mönchengladbach', 'Mönchengladbach', 'Gerardo Seoane'),
(62, 'Hertha Berlín', 'Berlín', 'Pál Dárdai'),
(63, 'Union Berlín', 'Berlín', 'Urs Fischer'),
(64, 'Schalke 04', 'Gelsenkirchen', 'Thomas Reis'),
(65, 'VfB Stuttgart', 'Stuttgart', 'Sebastian Hoeneß'),
(66, 'Werder Bremen', 'Bremen', 'Ole Werner'),
(67, 'Hoffenheim', 'Sinsheim', 'Pellegrino Matarazzo'),
(68, 'Freiburgo', 'Friburgo', 'Christian Streich'),
(69, 'Augsburgo', 'Augsburgo', 'Enrico Maaßen'),
(70, 'Colonia', 'Colonia', 'Steffen Baumgart'),
(71, 'Paris Saint-Germain', 'París', 'Luis Enrique'),
(72, 'Olympique de Lyon', 'Lyon', 'Laurent Blanc'),
(73, 'Olympique de Marsella', 'Marsella', 'Marcelino García'),
(74, 'Monaco', 'Mónaco', 'Adi Hütter'),
(75, 'Lille', 'Lille', 'Paulo Fonseca'),
(76, 'Rennes', 'Rennes', 'Bruno Génésio'),
(77, 'Nice', 'Niza', 'Francesco Farioli'),
(78, 'Nantes', 'Nantes', 'Pierre Aristouy'),
(79, 'Toulouse', 'Toulouse', 'Carles Martínez'),
(80, 'Lens', 'Lens', 'Franck Haise'),
(81, 'Montpellier', 'Montpellier', 'Michel Der Zakarian'),
(82, 'Strasbourg', 'Estrasburgo', 'Patrick Vieira'),
(83, 'Angers', 'Angers', 'Alexandre Dujeux'),
(84, 'Brest', 'Brest', 'Éric Roy'),
(85, 'Lorient', 'Lorient', 'Régis Le Bris'),
(86, 'Reims', 'Reims', 'Will Still'),
(87, 'Clermont Foot', 'Clermont-Ferrand', 'Pascal Gastien'),
(88, 'Saint-Étienne', 'Saint-Étienne', 'Laurent Batlles'),
(89, 'Los Angeles FC', 'Los Ángeles', 'Steve Cherundolo'),
(90, 'LA Galaxy', 'Los Ángeles', 'Greg Vanney'),
(91, 'New York City FC', 'Nueva York', 'Nick Cushing'),
(92, 'New York Red Bulls', 'Nueva York', 'Troy Lesesne'),
(93, 'Inter Miami CF', 'Miami', 'Gerardo Martino'),
(94, 'Seattle Sounders', 'Seattle', 'Brian Schmetzer'),
(95, 'Orlando City SC', 'Orlando', 'Óscar Pareja'),
(96, 'Philadelphia Union', 'Filadelfia', 'Jim Curtin'),
(97, 'Atlanta United FC', 'Atlanta', 'Gonzalo Pineda'),
(98, 'Columbus Crew', 'Columbus', 'Wilfried Nancy'),
(99, 'Toronto FC', 'Toronto', 'Terry Dunfield'),
(100, 'Sporting Kansas City', 'Kansas City', 'Peter Vermes');


INSERT INTO Partidos (IdPartido, Fecha, EquipoLocalId, EquipoVisitanteId, ArbitroId, Resultado) VALUES
(1, '2024-01-01', 1, 2, 1, '2-1'),
(2, '2024-01-02', 3, 4, 2, '1-1'),
(3, '2024-01-03', 5, 6, 3, '3-2'),
(4, '2024-01-04', 7, 8, 4, '0-1'),
(5, '2024-01-05', 9, 10, 5, '2-0'),
(6, '2024-01-06', 11, 12, 6, '1-3'),
(7, '2024-01-07', 13, 14, 7, '2-2'),
(8, '2024-01-08', 15, 16, 8, '1-0'),
(9, '2024-01-09', 17, 18, 9, '3-1'),
(10, '2024-01-10', 19, 20, 10, '0-0'),
(11, '2024-01-11', 21, 22, 1, '2-3'),
(12, '2024-01-12', 23, 24, 2, '4-1'),
(13, '2024-01-13', 25, 26, 3, '1-2'),
(14, '2024-01-14', 27, 28, 4, '2-2'),
(15, '2024-01-15', 29, 30, 5, '3-0'),
(16, '2024-01-16', 31, 32, 6, '1-1'),
(17, '2024-01-17', 33, 34, 7, '0-1'),
(18, '2024-01-18', 35, 36, 8, '4-3'),
(19, '2024-01-19', 37, 38, 9, '2-2'),
(20, '2024-01-20', 39, 40, 10, '3-1'),
(21, '2024-01-21', 41, 42, 1, '1-0'),
(22, '2024-01-22', 43, 44, 2, '2-2'),
(23, '2024-01-23', 45, 46, 3, '3-0'),
(24, '2024-01-24', 47, 48, 4, '1-2'),
(25, '2024-01-25', 49, 50, 5, '4-4'),
(26, '2024-01-26', 51, 52, 6, '2-1'),
(27, '2024-01-27', 53, 54, 7, '3-2'),
(28, '2024-01-28', 55, 56, 8, '0-1'),
(29, '2024-01-29', 57, 58, 9, '1-0'),
(30, '2024-01-30', 59, 60, 10, '2-2'),
(31, '2024-02-01', 1, 3, 1, '1-3'),
(32, '2024-02-02', 5, 7, 2, '2-2'),
(33, '2024-02-03', 9, 11, 3, '0-1'),
(34, '2024-02-04', 13, 15, 4, '1-4'),
(35, '2024-02-05', 17, 19, 5, '3-2'),
(36, '2024-02-06', 21, 23, 6, '1-1'),
(37, '2024-02-07', 25, 27, 7, '2-0'),
(38, '2024-02-08', 29, 31, 8, '0-3'),
(39, '2024-02-09', 33, 35, 9, '4-1'),
(40, '2024-02-10', 37, 39, 10, '2-2'),
(41, '2024-02-11', 41, 43, 1, '0-0'),
(42, '2024-02-12', 45, 47, 2, '3-3'),
(43, '2024-02-13', 49, 51, 3, '1-0'),
(44, '2024-02-14', 53, 55, 4, '4-2'),
(45, '2024-02-15', 57, 59, 5, '0-1'),
(46, '2024-02-16', 2, 4, 6, '2-2'),
(47, '2024-02-17', 6, 8, 7, '3-3'),
(48, '2024-02-18', 10, 12, 8, '1-1'),
(49, '2024-02-19', 14, 16, 9, '4-0'),
(50, '2024-02-20', 18, 20, 10, '2-2'),
(51, '2024-02-21', 22, 24, 1, '0-0'),
(52, '2024-02-22', 26, 28, 2, '3-1'),
(53, '2024-02-23', 30, 32, 3, '1-1'),
(54, '2024-02-24', 34, 36, 4, '0-1'),
(55, '2024-02-25', 38, 40, 5, '2-1'),
(56, '2024-02-26', 42, 44, 6, '3-3'),
(57, '2024-02-27', 46, 48, 7, '1-2'),
(58, '2024-02-28', 50, 52, 8, '0-0'),
(59, '2024-02-29', 54, 56, 9, '3-1'),
(60, '2024-03-01', 58, 60, 10, '2-2'),
(61, '2024-03-02', 1, 5, 1, '0-0'),
(62, '2024-03-03', 9, 13, 2, '1-2'),
(63, '2024-03-04', 17, 21, 3, '3-3'),
(64, '2024-03-05', 25, 29, 4, '2-1'),
(65, '2024-03-06', 33, 37, 5, '0-2'),
(66, '2024-03-07', 41, 45, 6, '1-3'),
(67, '2024-03-08', 49, 53, 7, '2-0'),
(68, '2024-03-09', 57, 1, 8, '3-1'),
(69, '2024-03-10', 5, 9, 9, '0-0'),
(70, '2024-03-11', 13, 17, 10, '1-1'),
(71, '2024-03-12', 21, 25, 1, '4-3'),
(72, '2024-03-13', 29, 33, 2, '2-0'),
(73, '2024-03-14', 37, 41, 3, '3-2'),
(74, '2024-03-15', 45, 49, 4, '0-1'),
(75, '2024-03-16', 53, 57, 5, '1-1'),
(76, '2024-03-17', 2, 6, 6, '3-0'),
(77, '2024-03-18', 10, 14, 7, '2-2'),
(78, '2024-03-19', 18, 22, 8, '1-0'),
(79, '2024-03-20', 26, 30, 9, '3-1'),
(80, '2024-03-21', 34, 38, 10, '2-2'),
(81, '2024-03-22', 42, 46, 1, '0-3'),
(82, '2024-03-23', 50, 54, 2, '1-0'),
(83, '2024-03-24', 58, 2, 3, '4-1'),
(84, '2024-03-25', 6, 10, 4, '2-2'),
(85, '2024-03-26', 14, 18, 5, '1-1'),
(86, '2024-03-27', 22, 26, 6, '3-2'),
(87, '2024-03-28', 30, 34, 7, '0-1'),
(88, '2024-03-29', 38, 42, 8, '2-3'),
(89, '2024-03-30', 46, 50, 9, '0-0'),
(90, '2024-03-31', 54, 58, 10, '4-0'),
(91, '2024-04-01', 3, 7, 1, '1-1'),
(92, '2024-04-02', 11, 15, 2, '3-2'),
(93, '2024-04-03', 19, 23, 3, '0-0'),
(94, '2024-04-04', 27, 31, 4, '2-1'),
(95, '2024-04-05', 35, 39, 5, '1-2'),
(96, '2024-04-06', 43, 47, 6, '3-3'),
(97, '2024-04-07', 51, 55, 7, '0-0'),
(98, '2024-04-08', 59, 3, 8, '1-4'),
(99, '2024-04-09', 5, 9, 9, '2-1'),
(100, '2024-04-10', 13, 17, 10, '3-2');


INSERT INTO Arbitros (IdArbitro, Nombre, ExperienciaAnios, Nacionalidad) VALUES
(1, 'Michael Oliver', 10, 'Inglaterra'),
(2, 'Anthony Taylor', 12, 'Inglaterra'),
(3, 'Martin Atkinson', 15, 'Inglaterra'),
(4, 'Mike Dean', 20, 'Inglaterra'),
(5, 'Paul Tierney', 8, 'Inglaterra'),
(6, 'Stuart Attwell', 9, 'Inglaterra'),
(7, 'Andre Marriner', 19, 'Inglaterra'),
(8, 'Craig Pawson', 10, 'Inglaterra'),
(9, 'Chris Kavanagh', 6, 'Inglaterra'),
(10, 'Jonathan Moss', 16, 'Inglaterra'),
(11, 'Kevin Friend', 15, 'Inglaterra'),
(12, 'Peter Bankes', 5, 'Inglaterra'),
(13, 'Simon Hooper', 7, 'Inglaterra'),
(14, 'David Coote', 6, 'Inglaterra'),
(15, 'Darren England', 4, 'Inglaterra'),
(16, 'Lee Mason', 13, 'Inglaterra'),
(17, 'Robert Jones', 4, 'Inglaterra'),
(18, 'Andy Madley', 5, 'Inglaterra'),
(19, 'Graham Scott', 12, 'Inglaterra'),
(20, 'Sian Massey-Ellis', 8, 'Inglaterra'),
(21, 'Danny Makkelie', 11, 'Países Bajos'),
(22, 'Björn Kuipers', 17, 'Países Bajos'),
(23, 'Bas Nijhuis', 12, 'Países Bajos'),
(24, 'Antonio Mateu Lahoz', 14, 'España'),
(25, 'Carlos del Cerro Grande', 10, 'España'),
(26, 'Jesús Gil Manzano', 9, 'España'),
(27, 'Alejandro Hernández Hernández', 8, 'España'),
(28, 'César Soto Grado', 5, 'España'),
(29, 'Clément Turpin', 14, 'Francia'),
(30, 'Ruddy Buquet', 12, 'Francia'),
(31, 'Benoît Bastien', 10, 'Francia'),
(32, 'François Letexier', 7, 'Francia'),
(33, 'Jérôme Brisard', 6, 'Francia'),
(34, 'Daniele Orsato', 17, 'Italia'),
(35, 'Gianluca Rocchi', 16, 'Italia'),
(36, 'Davide Massa', 9, 'Italia'),
(37, 'Marco Guida', 11, 'Italia'),
(38, 'Maurizio Mariani', 7, 'Italia'),
(39, 'Felix Brych', 19, 'Alemania'),
(40, 'Tobias Stieler', 11, 'Alemania'),
(41, 'Daniel Siebert', 8, 'Alemania'),
(42, 'Marco Fritz', 13, 'Alemania'),
(43, 'Deniz Aytekin', 12, 'Alemania'),
(44, 'William Collum', 15, 'Escocia'),
(45, 'Bobby Madden', 12, 'Escocia'),
(46, 'John Beaton', 10, 'Escocia'),
(47, 'Steven McLean', 11, 'Escocia'),
(48, 'Kevin Clancy', 9, 'Escocia'),
(49, 'Jair Marrufo', 18, 'EE.UU.'),
(50, 'Ismail Elfath', 10, 'EE.UU.'),
(51, 'Armando Villarreal', 8, 'EE.UU.'),
(52, 'Ted Unkel', 9, 'EE.UU.'),
(53, 'Allen Chapman', 11, 'EE.UU.'),
(54, 'Fernando Rapallini', 10, 'Argentina'),
(55, 'Patricio Loustau', 12, 'Argentina'),
(56, 'Néstor Pitana', 13, 'Argentina'),
(57, 'Wilton Sampaio', 9, 'Brasil'),
(58, 'Raphael Claus', 8, 'Brasil'),
(59, 'Anderson Daronco', 9, 'Brasil'),
(60, 'Diego Haro', 10, 'Perú'),
(61, 'Michael Estrada', 11, 'Ecuador'),
(62, 'Roberto Tobar', 10, 'Chile'),
(63, 'Piero Maza', 8, 'Chile'),
(64, 'Andrés Cunha', 10, 'Uruguay'),
(65, 'Leodan González', 8, 'Uruguay'),
(66, 'Ricardo De Burgos Bengoetxea', 9, 'España'),
(67, 'Ovidiu Hațegan', 12, 'Rumanía'),
(68, 'István Kovács', 10, 'Rumanía'),
(69, 'Artur Soares Dias', 11, 'Portugal'),
(70, 'Fábio Veríssimo', 8, 'Portugal'),
(71, 'Slavko Vinčić', 10, 'Eslovenia'),
(72, 'Matej Jug', 11, 'Eslovenia'),
(73, 'Serdar Gözübüyük', 9, 'Países Bajos'),
(74, 'Ivan Kružliak', 10, 'Eslovaquia'),
(75, 'Szymon Marciniak', 12, 'Polonia'),
(76, 'Pawel Raczkowski', 9, 'Polonia'),
(77, 'Michael Fabbri', 8, 'Italia'),
(78, 'Jérémy Stinat', 7, 'Francia'),
(79, 'Bastien Dechepy', 5, 'Francia'),
(80, 'Riccardo Ros', 6, 'Italia'),
(81, 'Maurizio Ciampi', 12, 'Italia'),
(82, 'Alireza Faghani', 13, 'Irán'),
(83, 'Mohammed Abdulla Hassan', 9, 'Emiratos Árabes Unidos'),
(84, 'Christopher Beath', 10, 'Australia'),
(85, 'Abdulrahman Al-Jassim', 8, 'Qatar'),
(86, 'Janny Sikazwe', 9, 'Zambia'),
(87, 'Victor Gomes', 10, 'Sudáfrica'),
(88, 'Bakary Gassama', 12, 'Gambia'),
(89, 'Maguette Ndiaye', 8, 'Senegal'),
(90, 'Mustapha Ghorbal', 9, 'Argelia'),
(91, 'Bamlak Tessema', 11, 'Etiopía'),
(92, 'Alioum Alioum', 13, 'Camerún'),
(93, 'Ravshan Irmatov', 14, 'Uzbekistán'),
(94, 'Kim Jong-hyeok', 9, 'Corea del Sur'),
(95, 'Ryuji Sato', 11, 'Japón'),
(96, 'Ma Ning', 8, 'China'),
(97, 'Ali Sabah', 10, 'Irak'),
(98, 'Adham Makhadmeh', 9, 'Jordania'),
(99, 'Matt Conger', 9, 'Nueva Zelanda'),
(100, 'Omar Ponce', 11, 'Ecuador');

