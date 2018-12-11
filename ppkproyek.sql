-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 10:37 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppkproyek`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id_player` varchar(5) NOT NULL,
  `name` text NOT NULL,
  `nationality` text NOT NULL,
  `dob` varchar(17) NOT NULL,
  `height` int(4) NOT NULL,
  `weight` int(2) NOT NULL,
  `id_position` varchar(4) NOT NULL,
  `id_team` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id_player`, `name`, `nationality`, `dob`, `height`, `weight`, `id_position`, `id_team`) VALUES
('A001', 'GUZMAN Nahuel', 'Argentina', '10.02.1986', 192, 90, 'P003', 'T063'),
('A002', 'MERCADO Gabriel', 'Argentina', '18.03.1987', 181, 81, 'P001', 'T056'),
('A003', 'TAGLIAFICO Nicolas', 'Argentina', '31.08.1992', 169, 65, 'P001', 'T004'),
('A004', 'ANSALDI Cristian', 'Argentina', '20.09.1986', 181, 73, 'P001', 'T064'),
('A005', 'BIGLIA Lucas', 'Argentina', '30.01.1986', 175, 73, 'P004', 'T003'),
('A006', 'FAZIO Federico', 'Argentina', '17.03.1987', 199, 85, 'P001', 'T007'),
('A007', 'BANEGA Ever', 'Argentina', '29.06.1988', 175, 73, 'P004', 'T056'),
('A008', 'ACUNA Marcos', 'Argentina', '28.10.1991', 172, 77, 'P001', 'T059'),
('A009', 'HIGUAIN Gonzalo', 'Argentina', '10.12.1987', 184, 75, 'P002', 'T038'),
('A010', 'MESSI Lionel', 'Argentina', '24.06.1987', 170, 72, 'P002', 'T026'),
('A011', 'DI MARIA Angel', 'Argentina', '14.02.1988', 178, 75, 'P004', 'T046'),
('A012', 'ARMANI Franco', 'Argentina', '16.10.1986', 189, 85, 'P003', 'T017'),
('A013', 'MEZA Maximiliano', 'Argentina', '15.12.1992', 180, 76, 'P004', 'T016'),
('A014', 'MASCHERANO Javier', 'Argentina', '08.06.1984', 174, 73, 'P001', 'T036'),
('A015', 'LANZINI Manuel', 'Argentina', '15.02.1993', 167, 66, 'P004', 'T072'),
('A016', 'ROJO Marcos', 'Argentina', '20.03.1990', 189, 82, 'P001', 'T043'),
('A017', 'OTAMENDI Nicolas', 'Argentina', '12.02.1988', 181, 81, 'P001', 'T042'),
('A018', 'SALVIO Eduardo', 'Argentina', '13.07.1990', 167, 69, 'P001', 'T057'),
('A019', 'AGUERO Sergio', 'Argentina', '02.06.1988', 172, 74, 'P002', 'T042'),
('A020', 'LO CELSO Giovani', 'Argentina', '09.04.1996', 177, 75, 'P004', 'T046'),
('A021', 'DYBALA Paulo', 'Argentina', '15.11.1993', 177, 73, 'P002', 'T038'),
('A022', 'PAVON Cristian', 'Argentina', '21.01.1996', 169, 65, 'P004', 'T015'),
('A023', 'CABALLERO Wilfredo', 'Argentina', '28.09.1981', 186, 80, 'P003', 'T022'),
('A024', 'COURTOIS Thibaut', 'Belgium', '11.05.1992', 199, 91, 'P003', 'T022'),
('A025', 'ALDERWEIRELD Toby', 'Belgium', '02.03.1989', 186, 81, 'P001', 'T065'),
('A026', 'VERMAELEN Thomas', 'Belgium', '14.11.1985', 183, 80, 'P001', 'T026'),
('A027', 'KOMPANY Vincent', 'Belgium', '10.04.1986', 190, 85, 'P001', 'T042'),
('A028', 'VERTONGHEN Jan', 'Belgium', '24.04.1987', 189, 86, 'P001', 'T065'),
('A029', 'WITSEL Axel', 'Belgium', '12.01.1989', 186, 73, 'P004', 'T062'),
('A030', 'DE BRUYNE Kevin', 'Belgium', '28.06.1991', 181, 70, 'P004', 'T042'),
('A031', 'FELLAINI Marouane', 'Belgium', '22.11.1987', 194, 85, 'P004', 'T043'),
('A032', 'LUKAKU Romelu', 'Belgium', '13.05.1993', 190, 94, 'P002', 'T043'),
('A033', 'HAZARD Eden', 'Belgium', '07.01.1991', 173, 74, 'P002', 'T022'),
('A034', 'CARRASCO Yannick', 'Belgium', '04.09.1993', 180, 67, 'P004', 'T024'),
('A035', 'MIGNOLET Simon', 'Belgium', '06.03.1988', 193, 87, 'P003', 'T041'),
('A036', 'CASTEELS Koen', 'Belgium', '25.06.1992', 197, 86, 'P003', 'T069'),
('A037', 'MERTENS Dries', 'Belgium', '06.05.1987', 169, 61, 'P002', 'T060'),
('A038', 'MEUNIER Thomas', 'Belgium', '12.09.1991', 190, 88, 'P001', 'T046'),
('A039', 'HAZARD Thorgan', 'Belgium', '29.03.1993', 174, 70, 'P004', 'T068'),
('A040', 'TIELEMANS Youri', 'Belgium', '07.05.1997', 176, 72, 'P004', 'T006'),
('A041', 'JANUZAJ Adnan', 'Belgium', '05.02.1995', 180, 75, 'P002', 'T052'),
('A042', 'DEMBELE Moussa', 'Belgium', '16.07.1987', 185, 82, 'P004', 'T065'),
('A043', 'BOYATA Dedryck', 'Belgium', '28.11.1990', 188, 84, 'P001', 'T020'),
('A044', 'BATSHUAYI Michy', 'Belgium', '02.10.1993', 185, 78, 'P002', 'T012'),
('A045', 'CHADLI Nacer', 'Belgium', '02.08.1989', 187, 85, 'P004', 'T071'),
('A046', 'DENDONCKER Leander', 'Belgium', '15.04.1995', 188, 76, 'P001', 'T053'),
('A047', 'ALISSON', 'Brazil', '02.10.1992', 193, 91, 'P003', 'T007'),
('A048', 'THIAGO SILVA', 'Brazil', '22.09.1984', 183, 79, 'P001', 'T046'),
('A049', 'MIRANDA', 'Brazil', '07.09.1984', 186, 78, 'P001', 'T028'),
('A050', 'PEDRO GEROMEL', 'Brazil', '21.09.1985', 190, 84, 'P001', 'T035'),
('A051', 'CASEMIRO', 'Brazil', '23.02.1992', 185, 84, 'P004', 'T051'),
('A052', 'FILIPE LUIS', 'Brazil', '09.08.1985', 182, 73, 'P001', 'T008'),
('A053', 'DOUGLAS COSTA', 'Brazil', '14.09.1990', 182, 70, 'P002', 'T038'),
('A054', 'RENATO AUGUSTO', 'Brazil', '08.02.1988', 186, 86, 'P004', 'T010'),
('A055', 'GABRIEL JESUS', 'Brazil', '03.04.1997', 175, 73, 'P002', 'T042'),
('A056', 'NEYMAR', 'Brazil', '05.02.1992', 175, 68, 'P002', 'T046'),
('A057', 'PHILIPPE COUTINHO', 'Brazil', '12.06.1992', 172, 68, 'P004', 'T026'),
('A058', 'MARCELO', 'Brazil', '12.05.1988', 174, 80, 'P001', 'T051'),
('A059', 'MARQUINHOS', 'Brazil', '14.05.1994', 183, 75, 'P001', 'T046'),
('A060', 'DANILO', 'Brazil', '15.07.1991', 184, 78, 'P001', 'T042'),
('A061', 'PAULINHO', 'Brazil', '25.07.1988', 181, 81, 'P004', 'T026'),
('A062', 'CASSIO', 'Brazil', '06.06.1987', 195, 92, 'P003', 'T054'),
('A063', 'FERNANDINHO', 'Brazil', '04.05.1985', 179, 67, 'P004', 'T042'),
('A064', 'FRED', 'Brazil', '05.03.1993', 169, 64, 'P004', 'T032'),
('A065', 'WILLIAN', 'Brazil', '09.08.1988', 175, 77, 'P004', 'T022'),
('A066', 'ROBERTO FIRMINO', 'Brazil', '02.10.1991', 181, 76, 'P002', 'T041'),
('A067', 'TAISON', 'Brazil', '13.01.1988', 172, 64, 'P002', 'T032'),
('A068', 'FAGNER', 'Brazil', '11.06.1989', 168, 67, 'P001', 'T054'),
('A069', 'EDERSON', 'Brazil', '17.08.1993', 188, 86, 'P003', 'T042'),
('A070', 'OSPINA David', 'Colombia', '31.08.1988', 183, 80, 'P003', 'T005'),
('A071', 'ZAPATA Cristian', 'Colombia', '30.09.1986', 187, 82, 'P001', 'T003'),
('A072', 'MURILLO Oscar', 'Colombia', '18.04.1988', 184, 80, 'P001', 'T021'),
('A073', 'ARIAS Santiago', 'Colombia', '13.01.1992', 177, 71, 'P001', 'T047'),
('A074', 'BARRIOS Wilmar', 'Colombia', '16.10.1993', 178, 74, 'P004', 'T015'),
('A075', 'SANCHEZ Carlos', 'Colombia', '06.02.1986', 182, 82, 'P004', 'T050'),
('A076', 'BACCA Carlos', 'Colombia', '08.09.1986', 181, 77, 'P002', 'T070'),
('A077', 'AGUILAR Abel', 'Colombia', '06.01.1985', 185, 82, 'P004', 'T002'),
('A078', 'FALCAO Radamel', 'Colombia', '10.02.1986', 177, 72, 'P002', 'T006'),
('A079', 'RODRIGUEZ James', 'Colombia', '12.07.1991', 180, 75, 'P004', 'T027'),
('A080', 'CUADRADO Juan', 'Colombia', '26.05.1988', 179, 72, 'P004', 'T038'),
('A081', 'VARGAS Camilo', 'Colombia', '09.03.1989', 185, 80, 'P003', 'T002'),
('A082', 'MINA Yerry', 'Colombia', '23.09.1994', 194, 95, 'P001', 'T026'),
('A083', 'MURIEL Luis', 'Colombia', '16.04.1991', 178, 79, 'P002', 'T056'),
('A084', 'URIBE Mateus', 'Colombia', '21.03.1991', 182, 71, 'P004', 'T023'),
('A085', 'LERMA Jefferson', 'Colombia', '25.10.1994', 179, 70, 'P004', 'T040'),
('A086', 'MOJICA Johan', 'Colombia', '21.08.1992', 185, 66, 'P001', 'T033'),
('A087', 'FABRA Frank', 'Colombia', '22.02.1991', 172, 72, 'P001', 'T015'),
('A088', 'BORJA Miguel', 'Colombia', '26.01.1993', 183, 74, 'P002', 'T055'),
('A089', 'QUINTERO Juan', 'Colombia', '18.01.1993', 169, 64, 'P004', 'T017'),
('A090', 'IZQUIERDO Jose', 'Colombia', '07.07.1992', 171, 73, 'P002', 'T013'),
('A091', 'CUADRADO Jose', 'Colombia', '01.06.1985', 180, 80, 'P003', 'T018'),
('A092', 'SANCHEZ Davinson', 'Colombia', '12.06.1996', 187, 81, 'P001', 'T065'),
('A093', 'PICKFORD Jordan', 'England', '07.03.1994', 185, 72, 'P003', 'T025'),
('A094', 'WALKER Kyle', 'England', '28.05.1990', 178, 83, 'P001', 'T042'),
('A095', 'ROSE Danny', 'England', '02.07.1990', 173, 76, 'P001', 'T065'),
('A096', 'DIER Eric', 'England', '15.01.1994', 188, 90, 'P004', 'T065'),
('A097', 'STONES John', 'England', '28.05.1994', 188, 72, 'P001', 'T042'),
('A098', 'MAGUIRE Harry', 'England', '05.03.1993', 193, 98, 'P001', 'T039'),
('A099', 'LINGARD Jesse', 'England', '15.12.1992', 175, 60, 'P004', 'T043'),
('A100', 'HENDERSON Jordan', 'England', '17.06.1990', 183, 82, 'P004', 'T041'),
('A101', 'KANE Harry', 'England', '28.07.1993', 188, 98, 'P002', 'T065'),
('A102', 'STERLING Raheem', 'England', '08.12.1994', 170, 70, 'P002', 'T042'),
('A103', 'VARDY Jamie', 'England', '11.01.1987', 178, 80, 'P002', 'T039'),
('A104', 'TRIPPIER Kieran', 'England', '19.09.1990', 178, 72, 'P001', 'T065'),
('A105', 'BUTLAND Jack', 'England', '10.03.1993', 196, 96, 'P003', 'T061'),
('A106', 'WELBECK Danny', 'England', '26.11.1990', 184, 78, 'P002', 'T005'),
('A107', 'CAHILL Gary', 'England', '19.12.1985', 191, 85, 'P001', 'T022'),
('A108', 'JONES Phil', 'England', '21.02.1992', 182, 72, 'P001', 'T043'),
('A109', 'DELPH Fabian', 'England', '21.11.1989', 174, 78, 'P001', 'T042'),
('A110', 'YOUNG Ashley', 'England', '09.07.1985', 175, 78, 'P001', 'T043'),
('A111', 'RASHFORD Marcus', 'England', '31.10.1997', 180, 78, 'P002', 'T043'),
('A112', 'ALLI Dele', 'England', '11.04.1996', 188, 76, 'P004', 'T065'),
('A113', 'LOFTUS-CHEEK Ruben', 'England', '23.01.1996', 190, 73, 'P004', 'T022'),
('A114', 'ALEXANDER-ARNOLD Trent', 'England', '07.10.1998', 175, 70, 'P001', 'T041'),
('A115', 'POPE Nick', 'England', '19.04.1992', 191, 76, 'P003', 'T014'),
('A116', 'LLORIS Hugo', 'France', '26.12.1986', 188, 82, 'P003', 'T065'),
('A117', 'PAVARD Benjamin', 'France', '28.03.1996', 186, 76, 'P001', 'T067'),
('A118', 'KIMPEMBE Presnel', 'France', '13.08.1995', 182, 78, 'P001', 'T046'),
('A119', 'VARANE Raphael', 'France', '25.04.1993', 191, 79, 'P001', 'T051'),
('A120', 'UMTITI Samuel', 'France', '14.11.1993', 183, 84, 'P001', 'T026'),
('A121', 'POGBA Paul', 'France', '15.03.1993', 191, 86, 'P004', 'T043'),
('A122', 'GRIEZMANN Antoine', 'France', '21.03.1991', 174, 72, 'P002', 'T008'),
('A123', 'LEMAR Thomas', 'France', '12.11.1995', 172, 65, 'P002', 'T006'),
('A124', 'GIROUD Olivier', 'France', '30.09.1986', 193, 91, 'P002', 'T022'),
('A125', 'MBAPPE Kylian', 'France', '20.12.1998', 178, 78, 'P002', 'T046'),
('A126', 'DEMBELE Ousmane', 'France', '15.05.1997', 178, 70, 'P002', 'T026'),
('A127', 'TOLISSO Corentin', 'France', '03.08.1994', 180, 82, 'P004', 'T027'),
('A128', 'KANTE Ngolo', 'France', '29.03.1991', 168, 70, 'P004', 'T022'),
('A129', 'MATUIDI Blaise', 'France', '09.04.1987', 180, 74, 'P004', 'T038'),
('A130', 'NZONZI Steven', 'France', '15.12.1988', 197, 87, 'P004', 'T056'),
('A131', 'MANDANDA Steve', 'France', '28.03.1985', 187, 88, 'P003', 'T045'),
('A132', 'RAMI Adil', 'France', '27.12.1985', 190, 90, 'P001', 'T045'),
('A133', 'FEKIR Nabil', 'France', '18.07.1993', 173, 76, 'P002', 'T044'),
('A134', 'SIDIBE Djibril', 'France', '29.07.1992', 184, 81, 'P001', 'T006'),
('A135', 'THAUVIN Florian', 'France', '26.01.1993', 180, 76, 'P002', 'T045'),
('A136', 'HERNANDEZ Lucas', 'France', '14.02.1996', 183, 76, 'P001', 'T008'),
('A137', 'MENDY Benjamin', 'France', '17.07.1994', 183, 84, 'P001', 'T042'),
('A138', 'AREOLA Alphonse', 'France', '27.02.1993', 195, 95, 'P003', 'T046'),
('A139', 'NEUER Manuel', 'Germany', '27.03.1986', 193, 93, 'P003', 'T027'),
('A140', 'PLATTENHARDT Marvin', 'Germany', '26.01.1992', 181, 76, 'P001', 'T037'),
('A141', 'HECTOR Jonas', 'Germany', '27.05.1990', 185, 75, 'P001', 'T001'),
('A142', 'GINTER Matthias', 'Germany', '19.01.1994', 189, 85, 'P001', 'T068'),
('A143', 'HUMMELS Mats', 'Germany', '16.12.1988', 192, 90, 'P001', 'T027'),
('A144', 'KHEDIRA Sami', 'Germany', '04.04.1987', 189, 81, 'P001', 'T038'),
('A145', 'DRAXLER Julian', 'Germany', '20.09.1993', 185, 74, 'P004', 'T046'),
('A146', 'KROOS Toni', 'Germany', '04.01.1990', 182, 78, 'P004', 'T051'),
('A147', 'WERNER Timo', 'Germany', '06.03.1996', 181, 75, 'P002', 'T049'),
('A148', 'OEZIL Mesut', 'Germany', '15.10.1988', 180, 70, 'P004', 'T005'),
('A149', 'REUS Marco', 'Germany', '31.05.1989', 180, 67, 'P002', 'T012'),
('A150', 'TRAPP Kevin', 'Germany', '08.07.1990', 189, 88, 'P003', 'T046'),
('A151', 'MUELLER Thomas', 'Germany', '13.09.1989', 186, 75, 'P004', 'T027'),
('A152', 'GORETZKA Leon', 'Germany', '06.02.1995', 189, 76, 'P004', 'T031'),
('A153', 'SUELE Niklas', 'Germany', '03.09.1995', 195, 89, 'P001', 'T027'),
('A154', 'RUEDIGER Antonio', 'Germany', '03.03.1993', 191, 85, 'P001', 'T022'),
('A155', 'BOATENG Jerome', 'Germany', '03.09.1988', 192, 90, 'P001', 'T027'),
('A156', 'KIMMICH Joshua', 'Germany', '08.02.1995', 176, 72, 'P001', 'T027'),
('A157', 'RUDY Sebastian', 'Germany', '28.02.1990', 179, 74, 'P004', 'T027'),
('A158', 'BRANDT Julian', 'Germany', '02.05.1996', 183, 82, 'P004', 'T009'),
('A159', 'GUENDOGAN Ilkay', 'Germany', '24.10.1990', 180, 79, 'P004', 'T042'),
('A160', 'TER STEGEN Marc-Andre', 'Germany', '30.04.1992', 187, 85, 'P003', 'T026'),
('A161', 'GOMEZ Mario', 'Germany', '10.07.1985', 189, 82, 'P002', 'T067'),
('A162', 'RUI PATRICIO', 'Portugal', '15.02.1988', 189, 84, 'P003', 'T059'),
('A163', 'BRUNO ALVES', 'Portugal', '27.11.1981', 187, 83, 'P001', 'T048'),
('A164', 'PEPE', 'Portugal', '26.02.1983', 188, 81, 'P001', 'T011'),
('A165', 'MANUEL FERNANDES', 'Portugal', '05.02.1986', 174, 69, 'P004', 'T029'),
('A166', 'RAPHAEL GUERREIRO', 'Portugal', '22.12.1993', 170, 64, 'P001', 'T012'),
('A167', 'JOSE FONTE', 'Portugal', '22.12.1983', 191, 84, 'P001', 'T024'),
('A168', 'CRISTIANO RONALDO', 'Portugal', '05.02.1985', 185, 80, 'P002', 'T051'),
('A169', 'JOAO MOUTINHO', 'Portugal', '08.09.1986', 170, 61, 'P004', 'T006'),
('A170', 'ANDRE SILVA', 'Portugal', '06.11.1995', 184, 78, 'P002', 'T003'),
('A171', 'JOAO MARIO', 'Portugal', '19.01.1993', 179, 73, 'P004', 'T072'),
('A172', 'BERNARDO SILVA', 'Portugal', '10.08.1994', 173, 65, 'P004', 'T042'),
('A173', 'ANTHONY LOPES', 'Portugal', '01.10.1990', 184, 81, 'P003', 'T044'),
('A174', 'RUBEN DIAS', 'Portugal', '14.05.1997', 187, 83, 'P001', 'T057'),
('A175', 'WILLIAM', 'Portugal', '07.04.1992', 190, 80, 'P004', 'T059'),
('A176', 'RICARDO', 'Portugal', '06.10.1993', 174, 70, 'P001', 'T030'),
('A177', 'BRUNO FERNANDES', 'Portugal', '08.09.1994', 183, 64, 'P004', 'T059'),
('A178', 'GONCALO GUEDES', 'Portugal', '29.11.1996', 179, 72, 'P002', 'T066'),
('A179', 'GELSON MARTINS', 'Portugal', '11.05.1995', 173, 63, 'P002', 'T059'),
('A180', 'MARIO RUI', 'Portugal', '27.05.1991', 168, 67, 'P001', 'T060'),
('A181', 'RICARDO QUARESMA', 'Portugal', '26.09.1983', 175, 73, 'P002', 'T011'),
('A182', 'CEDRIC', 'Portugal', '31.08.1991', 172, 67, 'P001', 'T058'),
('A183', 'BETO', 'Portugal', '01.05.1982', 183, 79, 'P003', 'T034'),
('A184', 'ADRIEN SILVA', 'Portugal', '15.03.1989', 176, 72, 'P004', 'T039'),
('A185', 'DE GEA David', 'Spain', '07.11.1990', 190, 71, 'P003', 'T043'),
('A186', 'CARVAJAL Dani', 'Spain', '11.01.1992', 173, 73, 'P001', 'T051'),
('A187', 'PIQUE Gerard', 'Spain', '02.02.1987', 194, 85, 'P001', 'T026'),
('A188', 'NACHO', 'Spain', '18.01.1990', 179, 77, 'P001', 'T051'),
('A189', 'BUSQUETS Sergio', 'Spain', '16.07.1988', 189, 78, 'P004', 'T026'),
('A190', 'INIESTA Andres', 'Spain', '11.05.1984', 171, 68, 'P004', 'T026'),
('A191', 'SAUL', 'Spain', '21.11.1994', 183, 76, 'P004', 'T008'),
('A192', 'KOKE', 'Spain', '08.01.1992', 176, 73, 'P004', 'T008'),
('A193', 'RODRIGO', 'Spain', '06.03.1991', 182, 72, 'P002', 'T066'),
('A194', 'THIAGO', 'Spain', '11.04.1991', 174, 70, 'P004', 'T027'),
('A195', 'VAZQUEZ Lucas', 'Spain', '01.07.1991', 173, 70, 'P002', 'T051'),
('A196', 'ODRIOZOLA Alvaro', 'Spain', '14.12.1995', 178, 67, 'P001', 'T052'),
('A197', 'ARRIZABALAGA Kepa', 'Spain', '03.10.1994', 189, 84, 'P003', 'T073'),
('A198', 'AZPILICUETA Cesar', 'Spain', '28.08.1989', 178, 78, 'P001', 'T022'),
('A199', 'RAMOS Sergio', 'Spain', '30.03.1986', 183, 75, 'P001', 'T051'),
('A200', 'MONREAL Nacho', 'Spain', '26.02.1986', 179, 72, 'P001', 'T005'),
('A201', 'ASPAS Iago', 'Spain', '01.08.1987', 176, 67, 'P002', 'T019'),
('A202', 'ALBA Jordi', 'Spain', '21.03.1989', 170, 68, 'P001', 'T026'),
('A203', 'COSTA Diego', 'Spain', '07.10.1988', 185, 86, 'P002', 'T008'),
('A204', 'ASENSIO Marco', 'Spain', '21.01.1996', 182, 76, 'P004', 'T051'),
('A205', 'SILVA David', 'Spain', '08.01.1986', 170, 67, 'P002', 'T042'),
('A206', 'ISCO', 'Spain', '21.04.1992', 176, 74, 'P004', 'T051'),
('A207', 'REINA Pepe', 'Spain', '31.08.1982', 188, 92, 'P003', 'T060');

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `id_position` varchar(4) NOT NULL,
  `posisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`id_position`, `posisi`) VALUES
('P001', 'DF'),
('P002', 'FW'),
('P003', 'GK'),
('P004', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `id_team` varchar(4) NOT NULL,
  `tim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`id_team`, `tim`) VALUES
('T001', '1. FC Koln (GER)'),
('T002', 'AC Deportivo Cali (COL)'),
('T003', 'AC Milan (ITA)'),
('T004', 'AFC Ajax (NED)'),
('T005', 'Arsenal FC (ENG)'),
('T006', 'AS Monaco (FRA)'),
('T007', 'AS Roma (ITA)'),
('T008', 'Atletico Madrid (ESP)'),
('T009', 'Bayer 04 Leverkusen (GER)'),
('T010', 'Beijing Guoan (CHN)'),
('T011', 'Besiktas JK (TUR)'),
('T012', 'Borussia Dortmund (GER)'),
('T013', 'Brighton & Hove Albion FC (ENG)'),
('T014', 'Burnley FC (ENG)'),
('T015', 'CA Boca Juniors (ARG)'),
('T016', 'CA Independiente (ARG)'),
('T017', 'CA River Plate (ARG)'),
('T018', 'CD Once Caldas (COL)'),
('T019', 'Celta Vigo (ESP)'),
('T020', 'Celtic FC (SCO)'),
('T021', 'CF Pachuca (MEX)'),
('T022', 'Chelsea FC (ENG)'),
('T023', 'Club America (MEX)'),
('T024', 'Dalian Yifang FC (CHN)'),
('T025', 'Everton FC (ENG)'),
('T026', 'FC Barcelona (ESP)'),
('T027', 'FC Bayern Munchen (GER)'),
('T028', 'FC Internazionale (ITA)'),
('T029', 'FC Lokomotiv Moscow (RUS)'),
('T030', 'FC Porto (POR)'),
('T031', 'FC Schalke 04 (GER)'),
('T032', 'FC Shakhtar Donetsk (UKR)'),
('T033', 'Girona FC (ESP)'),
('T034', 'Goztepe SK (TUR)'),
('T035', 'Gremio FBPA (BRA)'),
('T036', 'Hebei China Fortune FC (CHN)'),
('T037', 'Hertha BSC (GER)'),
('T038', 'Juventus FC (ITA)'),
('T039', 'Leicester City FC (ENG)'),
('T040', 'Levante UD (ESP)'),
('T041', 'Liverpool FC (ENG)'),
('T042', 'Manchester City FC (ENG)'),
('T043', 'Manchester United FC (ENG)'),
('T044', 'Olympique Lyon (FRA)'),
('T045', 'Olympique Marseille (FRA)'),
('T046', 'Paris Saint-Germain FC (FRA)'),
('T047', 'PSV Eindhoven (NED)'),
('T048', 'Rangers FC (SCO)'),
('T049', 'RB Leipzig (GER)'),
('T050', 'RCD Espanyol (ESP)'),
('T051', 'Real Madrid CF (ESP)'),
('T052', 'Real Sociedad (ESP)'),
('T053', 'RSC Anderlecht (BEL)'),
('T054', 'SC Corinthians (BRA)'),
('T055', 'SE Palmeiras (BRA)'),
('T056', 'Sevilla FC (ESP)'),
('T057', 'SL Benfica (POR)'),
('T058', 'Southampton FC (ENG)'),
('T059', 'Sporting CP (POR)'),
('T060', 'SSC Napoli (ITA)'),
('T061', 'Stoke City FC (ENG)'),
('T062', 'Tianjin Quanjian FC (CHN)'),
('T063', 'Tigres UANL (MEX)'),
('T064', 'Torino FC (ITA)'),
('T065', 'Tottenham Hotspur FC (ENG)'),
('T066', 'Valencia CF (ESP)'),
('T067', 'VfB Stuttgart (GER)'),
('T068', 'VfL Borussia Monchengladbach (GER)'),
('T069', 'VfL Wolfsburg (GER)'),
('T070', 'Villarreal CF (ESP)'),
('T071', 'West Bromwich Albion FC (ENG)'),
('T072', 'West Ham United FC (ENG)'),
('T073', 'Athletic Bilbao (ESP)\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id_player`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id_position`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_team`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
