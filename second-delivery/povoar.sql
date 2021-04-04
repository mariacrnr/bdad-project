PRAGMA foreign_keys = ON;

INSERT INTO Pessoa (BI, nome, idade, nrTelemovel) VALUES 

(14693657, 'Edgar Torre', 18, 936355224),
(14963658, 'André Santos', 19, 967742069),
(14693659, 'Maria Carneiro', 19, 935475578),
(25475859, 'João Andrade', 25, 967478784),
(14967659, 'Sofia Germer', 24, 935447978),
(24957641, 'Sérgio Estêvão', 22, 915447978),
(15377234, 'Rodrigo Tuna', 26, 925943713),
(34587458, 'Pedro Silva', 18, 964521875),
(15930134, 'Rafael Campos', 21, 913336344),
(18539412, 'Ricardo Correia', 23, 969991234),
(12994213, 'Patrícia Silva', 19, 913241242),
(19636493, 'Marco Serra', 24, 915533254),

(47542369, 'Margarida Lucas', 18, 912548756),
(12456978, 'Beatriz Andreia Lopes', 22, 935478265),
(29543593, 'Ana Leonor Valente', 26, 925433423),
(44353213, 'Daniel Barroso', 18, 914854385),
(25425478, 'Juliana Ferreira', 21, 924587456),
(31231495, 'Xavier Rodrigues', 26, 919222114),
(57457623, 'Vicente Vasconcellos', 18, 962535179),
(31526457, 'Concha Corte-Real', 23, 912546758),
(34959324, 'José Carlos Faria', 38, 935321563),
(12547856, 'Joana Reis', 35, 912345786),
 
(12457484, 'Marta Ramos', 28, 914574581),
(12457558, 'Rui Gomes', 27, 921457867),
(32540547, 'Teresa Lima', 24, 965784875),
(35478488, 'Raquel Moreira', 21, 932547859),
(45124587, 'Miguel Casanova', 25, 965785871),
(12423547, 'Inês José Silva', 18, 965847578),
(36258747, 'António Miranda', 33, 915247896),
(62548759, 'Manuel Sousa', 39, 925647784),
(51246597, 'João Tavares', 25, 935458695),
(65475847, 'Marcelo Salgado', 18, 925687487),
(12546989, 'Mariana Arruda', 32, 923548759),
(32545784, 'Paulo Ventos', 21, 912547887),
(85847857, 'Lara Rios', 24, 934584785),

(78485878, 'Gonçalo Gonçalves', 26, 912547589),
(12548532, 'Nuno Martins', 19, 923658748),
(14256989, 'Miguel Santos', 25, 965478589),
(12452899, 'Carina Faria', 19, 912454859),
(12545858, 'Maria Antas', 25, 932564781),
(12364689, 'Érica Antunes', 19, 912587874),
(56986698, 'Vitória Albuquerque', 32, 926589758),
(12548785, 'Bárbara Silva', 34, 965875878),
(25365489, 'Carlos Gomes', 33, 915475879),
(56369858, 'Gustavo Lima', 31, 912458759),
(12588999, 'Simone Rego', 25, 935758965),
(52548898, 'Sandro Lopes', 18, 968696878),
(62569797, 'Alexandre Walter', 19, 912547869),
(85848458, 'Filipe Babo', 36, 965875874),
(21245899, 'Tatiana Pires', 33, 967858747),
(12457889, 'Yolanda Ferreira', 31, 925654785),

(78485558, 'Andreia Gonçalves', 21, 932547589),
(12548578, 'Nuno Alves', 18, 921558748),
(14256691, 'Matilde Santos', 24, 965474589),
(12452545, 'Ana Tavares', 19, 915487587),
(12545845, 'Maria Antónia Ramos', 28, 932548587),
(15422364, 'Olga Ramos', 32, 912589698),
(56984156, 'Bruno Albuquerque', 31, 926586968),
(15262548, 'Bárbara Lopes', 36, 965874857),
(45225365, 'Carlos Corceiro', 23, 925452879),
(56385469, 'Joana Lima', 30, 915258568),
(12588956, 'Tiago Marques', 27, 965458758),
(52456548, 'Sandra Lucas', 18, 912965145),
(65622569, 'Daniela Miguel', 19, 968658785),
(85845668, 'Carolina Carneiro', 26, 912547587),
(21522245, 'Glória Figueira', 35, 935785876),
(12457153, 'Fátima Trigo', 32, 965878587);

INSERT INTO Discoteca (nome, localizacao, proprietario, areaTotal) VALUES
('Forte S.João', 'Póvoa de Varzim', 'Sérgio Magalhães', 1000.0),
('Via Rápida', 'Porto', 'Pedro Trindade', 2400.0),
('Pacha', 'Ofir', 'José Vieira', 7500.0),
('Pedra do Couto', 'Santo Tirso', 'Paulo Martins', 3000.0),
('Gare', 'Porto', 'Len Faki', 500.0);

INSERT INTO Membro (BI, idDiscoteca, nrMembro, tipo) VALUES 

-- Membros Forte S. João
(14693657, 1, 1, 'VIP'),
(14963658, 1, 2, 'VIP'),
(14693659, 1, 3, 'VIP'),
(25475859, 1, 4, 'regular'),
(14967659, 1, 5, 'regular'),
(24957641, 1, 6, 'VIP'),
(15377234, 1, 7, 'regular'),
(34587458, 1, 8, 'regular'),
(15930134, 1, 9, 'VIP'),
(18539412, 1, 10, 'regular'),
(12994213, 1, 11, 'VIP'),
(19636493, 1, 12, 'regular'),
(47542369, 1, 13, 'regular'),
(12456978, 1, 14, 'regular'),
(29543593, 1, 15, 'regular'),
(44353213, 1, 16, 'regular'),
(25425478, 1, 17, 'regular'),
(31231495, 1, 18, 'regular'),
(57457623, 1, 19, 'regular'),
(31526457, 1, 20, 'regular'),
(34959324, 1, 21, 'regular'),
(12547856, 1, 22, 'regular'),
(12457484, 1, 23, 'regular'),
(12457558, 1, 24, 'regular'),
(35478488, 1, 25, 'regular'),
(45124587, 1, 26, 'regular'),
(12423547, 1, 27, 'regular'),
(36258747, 1, 28, 'regular'),
(62548759, 1, 29, 'regular'),
(51246597, 1, 30, 'regular'),
(65475847, 1, 31, 'regular'),
(12546989, 1, 32, 'regular'),
(32545784, 1, 33, 'regular'),
(85847857, 1, 34, 'regular'),
(12548532, 1, 35, 'regular'),
(14256989, 1, 36, 'regular'),
(12452899, 1, 37, 'regular'),
(12545858, 1, 38, 'regular'),
(12364689, 1, 39, 'regular'),
(56986698, 1, 40, 'regular'),
(12548785, 1, 41, 'regular'),
(25365489, 1, 42, 'regular'),
(56369858, 1, 43, 'regular'),
(12588999, 1, 44, 'regular'),
(52548898, 1, 45, 'regular'),
(62569797, 1, 46, 'regular'),
(85848458, 1, 47, 'regular'),
(21245899, 1, 48, 'regular'),
(12457889, 1, 49, 'regular'),
(78485558, 1, 50, 'regular'),
(12548578, 1, 51, 'regular'),
(14256691, 1, 52, 'regular'),
(12452545, 1, 53, 'regular'),
(12545845, 1, 54, 'regular'),
(15422364, 1, 55, 'regular'),
(56984156, 1, 56, 'regular'),
(15262548, 1, 57, 'regular'),
(45225365, 1, 58, 'regular'),
(56385469, 1, 59, 'regular'),
(12588956, 1, 60, 'regular'),
(52456548, 1, 61, 'regular'),
(65622569, 1, 62, 'regular'),
(85845668, 1, 63, 'regular'),
(21522245, 1, 64, 'regular'),
(12457153, 1, 65, 'regular'),

-- Membros Via Rápida 
(14693657, 2, 1, 'VIP'),
(14963658, 2, 2, 'VIP'),
(14693659, 2, 3, 'VIP'),
(47542369, 2, 4, 'regular'),
(12456978, 2, 5, 'VIP'),
(29543593, 2, 6, 'VIP'),
(44353213, 2, 7, 'regular'),
(25425478, 2, 8, 'VIP'),
(31231495, 2, 9, 'regular'),
(57457623, 2, 10, 'regular'),
(31526457, 2, 11, 'regular'),
(34959324, 2, 12, 'regular'),
(12547856, 2, 13, 'VIP'),
(12457484, 2, 14, 'regular'),
(12457558, 2, 15, 'regular'),
(35478488, 2, 16, 'regular'),
(45124587, 2, 17, 'regular'),
(12423547, 2, 18, 'regular'),
(36258747, 2, 19, 'regular'),
(62548759, 2, 20, 'regular'),
(51246597, 2, 21, 'regular'),
(65475847, 2, 22, 'regular'),
(12546989, 2, 23, 'regular'),
(32545784, 2, 24, 'regular'),
(85847857, 2, 25, 'regular'),
(12548532, 2, 26, 'regular'),
(14256989, 2, 27, 'regular'),
(12452899, 2, 28, 'regular'),
(12545858, 2, 29, 'regular'),
(12364689, 2, 30, 'regular'),
(56986698, 2, 31, 'regular'),
(12548785, 2, 32, 'regular'),
(25365489, 2, 33, 'regular'),
(56369858, 2, 34, 'regular'),
(12588999, 2, 35, 'regular'),
(52548898, 2, 36, 'regular'),
(62569797, 2, 37, 'regular'),
(85848458, 2, 38, 'regular'),
(21245899, 2, 39, 'regular'),
(12457889, 2, 40, 'regular'),
(78485558, 2, 41, 'regular'),
(12548578, 2, 42, 'regular'),
(14256691, 2, 43, 'regular'),
(12452545, 2, 44, 'regular'),
(12545845, 2, 45, 'regular'),
(15422364, 2, 46, 'regular'),
(56984156, 2, 47, 'regular'),
(15262548, 2, 48, 'regular'),
(45225365, 2, 49, 'regular'),
(56385469, 2, 50, 'regular'),
(12588956, 2, 51, 'regular'),
(52456548, 2, 52, 'regular'),
(65622569, 2, 53, 'regular'),
(85845668, 2, 54, 'regular'),
(21522245, 2, 55, 'regular'),
(12457153, 2, 56, 'regular'),

-- Membros Pacha 
(78485878, 3, 1, 'regular'),
(12548532, 3, 2, 'VIP'),
(14256989, 3, 3, 'VIP'),
(12452899, 3, 4, 'regular'),
(12545858, 3, 5, 'regular'),
(12364689, 3, 6, 'VIP'),
(56986698, 3, 7, 'VIP'),
(12548785, 3, 8, 'VIP'),
(25365489, 3, 9, 'regular'),
(56369858, 3, 10, 'regular'),
(12588999, 3, 11, 'VIP'),
(52548898, 3, 12, 'regular'),
(62569797, 3, 13, 'VIP'),
(85848458, 3, 14, 'VIP'),
(21245899, 3, 15, 'regular'),
(12457889, 3, 16, 'regular'),
(14693657, 3, 17, 'regular'),
(14963658, 3, 18, 'regular'),
(14693659, 3, 19, 'regular'),
(25475859, 3, 20, 'regular'),
(14967659, 3, 21, 'regular'),
(24957641, 3, 22, 'regular'),
(15377234, 3, 23, 'regular'),
(34587458, 3, 24, 'regular'),
(15930134, 3, 25, 'regular'),
(18539412, 3, 26, 'regular'),
(12994213, 3, 27, 'regular'),
(19636493, 3, 28, 'regular'),
(47542369, 3, 29, 'regular'),
(12456978, 3, 30, 'regular'),
(29543593, 3, 31, 'regular'),
(44353213, 3, 32, 'regular'),
(25425478, 3, 33, 'regular'),
(31231495, 3, 34, 'regular'),
(57457623, 3, 35, 'regular'),
(31526457, 3, 36, 'regular'),
(34959324, 3, 37, 'regular'),
(12547856, 3, 38, 'regular'),
(12457484, 3, 39, 'regular'),
(12457558, 3, 40, 'regular'),
(32540547, 3, 41, 'regular'),
(35478488, 3, 42, 'regular'),
(45124587, 3, 43, 'regular'),
(12423547, 3, 44, 'regular'),
(36258747, 3, 45, 'regular'),
(62548759, 3, 46, 'regular'),
(51246597, 3, 47, 'regular'),
(65475847, 3, 48, 'regular'),
(12546989, 3, 49, 'regular'),
(32545784, 3, 50, 'regular'),
(85847857, 3, 51, 'regular'),
(78485558, 3, 52, 'regular'),
(12548578, 3, 53, 'regular'),
(14256691, 3, 54, 'regular'),
(12452545, 3, 55, 'regular'),
(12545845, 3, 56, 'regular'),
(15422364, 3, 57, 'regular'),
(56984156, 3, 58, 'regular'),
(15262548, 3, 59, 'regular'),
(45225365, 3, 60, 'regular'),
(56385469, 3, 61, 'regular'),
(12588956, 3, 62, 'regular'),
(52456548, 3, 63, 'regular'),
(65622569, 3, 64, 'regular'),
(85845668, 3, 65, 'regular'),
(21522245, 3, 66, 'regular'),
(12457153, 3, 67, 'regular'),

-- Membros Pedra do Couto
(78485558, 4, 1, 'regular'),
(12548578, 4, 2, 'regular'),
(14256691, 4, 3, 'VIP'),
(12452545, 4, 4, 'regular'),
(12545845, 4, 5, 'regular'),
(15422364, 4, 6, 'VIP'),
(56984156, 4, 7, 'regular'),
(15262548, 4, 8, 'VIP'),
(45225365, 4, 9, 'regular'),
(56385469, 4, 10, 'regular'),
(12588956, 4, 11, 'regular'),
(52456548, 4, 12, 'VIP'),
(65622569, 4, 13, 'VIP'),
(85845668, 4, 14, 'regular'),
(21522245, 4, 15, 'regular'),
(12457153, 4, 16, 'regular'),
(14693657, 4, 17, 'regular'),
(14963658, 4, 18, 'regular'),
(14693659, 4, 19, 'regular'),
(25475859, 4, 20, 'regular'),
(14967659, 4, 21, 'regular'),
(24957641, 4, 22, 'regular'),
(15377234, 4, 23, 'regular'),
(34587458, 4, 24, 'regular'),
(15930134, 4, 25, 'regular'),
(18539412, 4, 26, 'regular'),
(12994213, 4, 27, 'regular'),
(19636493, 4, 28, 'regular'),
(47542369, 4, 29, 'regular'),
(12456978, 4, 30, 'regular'),
(29543593, 4, 31, 'regular'),
(44353213, 4, 32, 'regular'),
(25425478, 4, 33, 'regular'),
(31231495, 4, 34, 'regular'),
(57457623, 4, 35, 'regular'),
(31526457, 4, 36, 'regular'),
(34959324, 4, 37, 'regular'),
(12547856, 4, 38, 'regular'),
(12457484, 4, 39, 'regular'),
(12457558, 4, 40, 'regular'),
(32540547, 4, 41, 'regular'),
(35478488, 4, 42, 'regular'),
(45124587, 4, 43, 'regular'),
(12423547, 4, 44, 'regular'),
(36258747, 4, 45, 'regular'),
(62548759, 4, 46, 'regular'),
(51246597, 4, 47, 'regular'),
(65475847, 4, 48, 'regular'),
(12546989, 4, 49, 'regular'),
(32545784, 4, 50, 'regular'),
(85847857, 4, 51, 'regular'),
(78485878, 4, 52, 'regular'),
(12548532, 4, 53, 'regular'),
(14256989, 4, 54, 'regular'),
(12452899, 4, 55, 'regular'),
(12545858, 4, 56, 'regular'),
(12364689, 4, 57, 'regular'),
(56986698, 4, 58, 'regular'),
(12548785, 4, 59, 'regular'),
(25365489, 4, 60, 'regular'),
(56369858, 4, 61, 'regular'),
(12588999, 4, 62, 'regular'),
(52548898, 4, 63, 'regular'),
(62569797, 4, 64, 'regular'),
(85848458, 4, 65, 'regular'),
(21245899, 4, 66, 'regular'),
(12457889, 4, 67, 'regular'),

-- Membros Gare
(15377234, 5, 1,'regular'),
(34587458, 5, 2,'VIP'),
(15930134, 5, 3,'VIP'),
(29543593, 5, 4, 'regular'),
(44353213, 5, 5, 'regular'),
(25425478, 5, 6, 'VIP'),
(31231495, 5, 7, 'regular'),
(57457623, 5, 8, 'regular'),
(12548785, 5, 9, 'VIP'),
(25365489, 5, 10, 'VIP'),
(56369858, 5, 11, 'regular'),
(15422364, 5, 12, 'VIP'),
(56984156, 5, 13, 'regular'),
(15262548, 5, 14, 'regular'),
(14693657, 5, 15, 'regular'),
(14963658, 5, 16, 'regular'),
(14693659, 5, 17, 'regular'),
(25475859, 5, 18, 'regular'),
(14967659, 5, 19, 'regular'),
(24957641, 5, 20, 'regular'),
(18539412, 5, 21, 'regular'),
(12994213, 5, 22, 'regular'),
(19636493, 5, 23, 'regular'),
(47542369, 5, 24, 'regular'),
(12456978, 5, 25, 'regular'),
(31526457, 5, 26, 'regular'),
(34959324, 5, 27, 'regular'),
(12547856, 5, 28, 'regular'),
(12457484, 5, 29, 'regular'),
(12457558, 5, 30, 'regular'),
(32540547, 5, 31, 'regular'),
(35478488, 5, 32, 'regular'),
(45124587, 5, 33, 'regular'),
(12423547, 5, 34, 'regular'),
(36258747, 5, 35, 'regular'),
(62548759, 5, 36, 'regular'),
(51246597, 5, 37, 'regular'),
(65475847, 5, 38, 'regular'),
(12546989, 5, 39, 'regular'),
(32545784, 5, 40, 'regular'),
(85847857, 5, 41, 'regular'),
(78485878, 5, 42, 'regular'),
(12548532, 5, 43, 'regular'),
(14256989, 5, 44, 'regular'),
(12452899, 5, 45, 'regular'),
(12545858, 5, 46, 'regular'),
(12364689, 5, 47, 'regular'),
(56986698, 5, 48, 'regular'),
(12588999, 5, 49, 'regular'),
(52548898, 5, 50, 'regular'),
(62569797, 5, 51, 'regular'),
(85848458, 5, 52, 'regular'),
(21245899, 5, 53, 'regular'),
(12457889, 5, 54, 'regular'),
(78485558, 5, 55, 'regular'),
(12548578, 5, 56, 'regular'),
(14256691, 5, 57, 'regular'),
(12452545, 5, 58, 'regular'),
(12545845, 5, 59, 'regular'),
(45225365, 5, 60, 'regular'),
(56385469, 5, 61, 'regular'),
(12588956, 5, 62, 'regular'),
(52456548, 5, 63, 'regular'),
(65622569, 5, 64, 'regular'),
(85845668, 5, 65, 'regular'),
(21522245, 5, 66, 'regular'),
(12457153, 5, 67, 'regular');

INSERT INTO Reserva (dia, hora, nrGarrafas, nrSofas, BI) VALUES 
-- Reservas Membros VIP Forte S. João
('31-10-2021', '23:45', 5, 2, 14693657),
('31-10-2021', '23:45', 3, 1, 14693657), -- Reserva na mesma discoteca lounges diferentes com diferente quantidade de garrafas e sofas 
('21-06-2021', '10:00', 5, 2, 14693659),
('25-07-2021', '02:00', 1, 0, 14963658),
('05-07-2021', '01:30', 2, 1, 14693659),
('02-08-2021', '03:15', 1, 3, 24957641),
('11-07-2021', '02:30', 3, 1, 15930134),
('15-07-2021', '02:10', 9, 4, 12994213),

-- Reservas Membros VIP Via Rápida 
('20-08-2021', '01:00', 7, 3, 14693657),
('14-08-2021', '00:40', 0, 0, 14963658),
('02-09-2021', '01:30', 0, 1, 14693659),
('09-06-2021', '03:15', 1, 2, 12456978),
('18-07-2021', '02:30', 3, 4, 29543593),
('15-10-2021', '04:20', 24, 5, 25425478),
('24-09-2021', '02:00', 10, 2, 12547856),
 
-- Reservas Membros VIP Pacha 
('31-10-2021', '23:45', 10, 2, 12548532),
('17-09-2021', '22:00', 2, 1, 14256989),
('03-08-2021', '01:10', 3, 1, 12364689),
('31-07-2021', '02:45', 10, 1, 56986698),
('31-08-2021', '04:00', 12, 2, 12548785),
('21-07-2021', '03:00', 13, 3, 12588999),
('22-07-2021', '04:25', 17, 5, 62569797),
('10-12-2021', '05:00', 11, 4, 85848458),

-- Reservas Membros VIP Pedra do Couto
('25-07-2021', '02:00', 16, 5, 14256691),
('20-06-2021', '01:30', 12, 2, 15422364),
('11-08-2021', '05:00', 10, 2, 15262548),
('03-11-2021', '02:00', 5, 1, 52456548),
('07-07-2021', '03:30', 10, 3, 65622569),

-- Reservas Membros VIP Gare
('15-07-2021', '01:00', 1, 1, 34587458),
('25-08-2021', '02:45', 4, 1, 15930134),
('13-07-2021', '02:30', 5, 3, 25425478),
('25-09-2021', '23:00', 0, 2, 12548785),
('21-10-2021', '23:30', 20, 5, 25365489),
('24-06-2021', '03:00', 0, 1, 15422364);

INSERT INTO Lounge (areaEspaco, idDiscoteca) VALUES 
-- Lounges Forte S. João
(100.0, 1), 
(100.0, 1), 

-- Lounges Via Rápida
(150.0, 2), 
(150.0, 2), 
(150.0, 2), 

-- Lounges Pacha
(200.0, 3), 
(200.0, 3),
(300.0, 3),
(100.0, 3),
(100.0, 3),
(100.0, 3),

-- Lounges Pedra do Couto
(200.0, 4),
(200.0, 4),
(100.0, 4),
(100.0, 4),

-- Lounges Gare
(50.0, 5),
(25.0, 5);

INSERT INTO ReservaLounge (idReserva, idLounge) VALUES
-- Reservas Lounges Forte S. João
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 1),
(5, 1),
(6, 2),
(6, 1),
(7, 2),
(8, 2),

-- Reservas Lounges Via Rápida
(9, 3),
(9, 4),
(10, 3),
(11, 4),
(12, 5),
(13, 4),
(13, 5),
(13, 3),
(14, 5),
(15, 5),

-- Reservas Lounges Pacha
(16, 6),
(16, 10),
(17, 7),
(18, 6),
(18, 8),
(18, 11),
(19, 11),
(19, 7),
(20, 9),
(20, 8),
(21, 10),
(22, 11),
(23, 8),
(23, 10),
(23, 6),

-- Reservas Lounges Pedra do Couto
(24,12),
(25,13),
(25,15),
(26,15),
(27,14),
(27,13),
(28,12),
(28,14),

-- Reservas Lounges Gare
(29,16),
(30,16),
(31,16),
(31,17),
(32,17),
(33,16),
(34,17);

INSERT INTO CaixasPagamento (areaEspaco, dinheiroCaixa, idDiscoteca) VALUES
-- Caixas Forte S. João
(50.0, 200.0, 1),

-- Caixas Via Rápida
(70.0, 300.0, 2),
(30.0, 150.0, 2),

-- Caixas Pacha
(50.0, 150.0, 3),
(80.0, 300.0, 3),
(50.0, 300.0, 3),
(50.0, 200.0, 3),
(70.0, 500.0, 3),

-- Caixas Pedra do Couto
(50.0, 200.0, 4),
(80.0, 150.0, 4),
(70.0, 100.0, 4),

-- Caixas Gare
(45.0, 100.0, 5);

INSERT INTO Bengaleiro (areaEspaco, nrMaxCasacos, precoCasaco, idDiscoteca) VALUES
-- Bengaleiros Forte S. João
(30.0, 300, 1.5, 1),

-- Bengaleiros Via Rápida
(50.0, 500, 2.0, 2),

-- Bengaleiros Pacha
(50.0, 600, 3.0, 3),
(100.0, 800, 3.0, 3),
(50.0, 600, 3.0, 3),

-- Bengaleiros Pedra do Couto
(50.0, 600, 2.0, 4),
(50.0, 600, 2.0, 4),

-- Bengaleiros Gare
(20.0, 400, 1.5, 5);

-- Areas Livres para gastar nos outros espaços: Forte: 720 , VR: 1800, Pacha: 6150, Pedra: 2100, Gare: 360
INSERT INTO Artista (nome, nrTelemovel, cache, tipo) VALUES

-- Funk
('MC Teteu', 963434888, 1000, 'residente'),  -- 1
('PK', 939912880, 1000, 'convidado'), -- 2
('MC Kevinho', 929888232, 5000, 'convidado'), -- 3
('Anitta', 911877778, 5000, 'convidado'), -- 4
('Dj Guuga', 910444440, 1200, 'convidado'), -- 5
('MC Don Juan', 933734111, 80, 'residente'), -- 6
('MC Kevin o Chris', 931849253, 3000, 'convidado'), -- 7

-- Trance
('Vini Vici', 918998944, 4000, 'residente'), -- 8
('Timmy Trumpet', 939758213, 5000, 'convidado'), -- 9
('Mandragora', 911123423, 3000, 'convidado'), -- 10
('Blastoyz', 930095010, 800, 'convidado'), -- 11
('Aura Vortex', 915555234, 600, 'convidado'), -- 12
('Babalos', 910420696, 2000, 'residente'), -- 13
('Menumas', 918432187, 800, 'convidado'), -- 14
('Hilight Tribe', 911550430, 2000, 'convidado'), -- 15 

-- House
('Swedish House Mafia', 910858585, 10000, 'residente'), -- 16 
('Tiësto', 930505000, 4000, 'convidado'), -- 17
('Calvin Harris', 912505505, 5000, 'convidado'), -- 18
('Avicii', 924434715, 6000, 'convidado'), -- 19
('Zedd', 919583995, 4000, 'residente'), -- 20
('Dmitri Vegas & Like Mike', 939539522, 8000, 'convidado'), -- 21
('David Guetta', 937770099, 6000, 'convidado'), --22

-- 90s
('Gala', 934564568, 3000, 'convidado'), -- 23
('Spice Girls', 917523345, 5000, 'convidado'), -- 24
('blink-182', 932832382, 8000, 'convidado'), -- 25
('Daft Punk', 931134341, 5000, 'residente'), -- 26
('Da Weasel', 932211999, 1000, 'convidado'), -- 27
('Goo Goo Dolls', 911450450, 5000, 'convidado'), -- 28
('Ornatos Violeta', 930055660, 2000, 'convidado'), -- 29

-- Kizomba
('C4 Pedro', 936234234, 1500, 'residente'), -- 30
('Nelson Freitas', 916610486, 1500, 'convidado'), -- 31
('Master Jake', 939980486, 1000, 'convidado'), -- 32
('Anselmo Ralph', 916507650, 2000, 'convidado'), -- 33
('Badoxa', 925004950, 1000, 'convidado'), -- 34
('Zona 5', 913319319, 400, 'convidado'), -- 35
('G-Amado', 936355224, 300, 'convidado'), -- 36

-- Reggaetton
('Nio Garcia', 919133215, 1000, 'convidado'), -- 37
('Nicky Jam', 936677576, 2000, 'residente'), -- 38
('Ozuna', 918432924, 200, 'convidado'), -- 39
('Bad Bunny', 922300232, 800, 'convidado'), -- 40
('KAROL G', 911405888, 700, 'convidado'), -- 41
('Maluma', 939000265, 2000, 'convidado'), -- 42
('J Balvin', 932547666, 3000, 'convidado'); -- 43


-- Areas Livres para gastar nos outros espaços: Forte: 720 , VR: 1800, Pacha: 6150, Pedra: 2100, Gare: 360
-- 'funk', 'trance', 'house','90s', 'kizomba', 'reggaeton'
INSERT INTO Pista (nome, areaEspaco, generoMusica, idResidente, idDiscoteca) VALUES
-- Pistas Forte
('Old but Gold', 200.0, '90s', 26, 1), -- 1
('Gaiola', 400.0, 'funk', 1, 1), -- 2

-- Pistas Via Rápida
('Sarrar até nanar', 1000.0, 'funk', 6, 2), -- 3

-- Pistas Pacha
('Boomusic', 400.0, '90s', NULL, 3), -- 4
('Cristalina', 1000.0, 'trance', 8, 3), -- 5
('Ofir de Janeiro', 1000.0, 'funk', NULL, 3), -- 6 
('Casa abaixo', 400.0, 'house', 16, 3), -- 7
('Mel', 800.0, 'kizomba', 30, 3), -- 8
('Latin Vibez', 600.0, 'reggaeton', 38, 3), -- 9

-- Pistas Pedra do Couto
('Casa de papel', 800.0, 'house', 20, 4), -- 10
('Ajuntamentos', 600.0, 'kizomba', NULL, 4), -- 11

-- Pistas Gare
('Gnomos', 300.0, 'trance', 13, 5); -- 12

INSERT INTO Atuacao (idArtista, idPista, horaComeco, horaFim, duracao) VALUES
-- Não usar atuações de: 1, 6, 8, 13, 16, 20, 26, 30, 38
(24, 1, '01:00', '03:00', '02:00'),
(27, 1, '03:00', '05:00', '02:00'),

(2, 2, '02:00', '03:00', '01:00'),
(7, 2, '03:00', '04:30', '01:30'),
(4, 2, '04:30', '06:00', '01:30'),

(3, 3, '03:30', '05:00', '01:30'),
(2, 3, '05:00', '06:00', '01:00'),

(23, 4, '01:00', '02:30', '01:30'),
(29, 4, '02:30', '04:30', '02:30'),
(25, 4, '04:30', '06:00', '01:30'),

(9, 5, '02:30', '03:30', '01:00'),
(12, 5, '03:30', '05:00', '01:30'),
(10, 5, '05:00', '06:00', '01:10'),

(5, 6, '01:30', '03:30', '01:00'),
(7, 6, '03:30', '05:00', '01:30'),

(17, 7, '01:00', '02:30', '01:30'),
(19, 7, '02:30', '04:00', '01:30'),

(31, 8, '00:00', '01:30', '01:30'),
(36, 8, '01:30', '03:00', '01:30'),
(34, 8, '03:00', '04:00', '01:00'),

(39, 9, '01:00', '02:00', '01:00'),
(43, 9, '02:00', '03:00', '01:00'),
(41, 9, '03:00', '04:00', '01:00'),
(40, 9, '04:00', '05:00', '01:00'),

(22, 10, '02:00', '04:00', '02:00'),
(18, 10, '04:00', '06:00', '02:00'),

(35, 11, '01:30', '03:00', '01:30'),
(33, 11, '03:00', '04:00', '01:00'),
(32, 11, '04:00', '05:00', '01:00'),

(14, 12, '02:30', '04:00', '01:30'),
(15, 12, '03:00', '05:00', '02:00');

INSERT INTO Bar (idPista) VALUES
-- Bares Forte S João
(1),
(1),
(2),

-- Bares Via Rápida
(3),
(3),

-- Bares Pacha
(4),
(5),
(5),
(6),
(6),
(7),
(8),
(9),

-- Bares Pedra do Couto
(10),
(10),
(11),

-- Bares Gare
(12);

INSERT INTO Bebida (nome, marca, stock, preco, teorAlcoolico) VALUES
('Rum', 'Bacardi', 500, 5.0, 37.5),
('Rum', 'Bacardi Lemon', 200, 7.0, 32.0),
('Rum', '151 Rum', 300, 7.0, 30.0),
('Rum', 'Cacique', 100, 7.0, 37.5),
('Rum', 'Havana Club', 300, 5.0, 40.0),
('Rum', 'Antília', 100, 5.0, 37.5),

('Cachaça', '51 Cachaça', 600, 5.0,  40.0),
('Cachaça', 'Velho Barreiro',  300, 5.0, 39.0),
('Cachaça', 'Sagatiba Pura', 100, 7.0, 38.0),
('Cachaça', 'Milbar', 100, 5.0, 38.0),

('Tequila', 'Sierra Branca', 200, 5.0, 38.0),
('Tequila', 'José Cuervo', 100, 5.0, 38.0),
('Tequila', 'El Jimador', 60 , 8.0, 38.0),

('Gin', 'Bombay', 400, 8.0, 40.0),
('Gin', 'Bombay Saphire', 400, 8.0, 40.0),
('Gin', 'Beefeater', 600, 6.0, 40.0),
('Gin', 'Beefeater Pink', 600, 6.0, 40.0),
('Gin', 'Gordons', 400, 5.0, 37.5),
('Gin', 'Hendricks', 100, 12.0, 44),
('Gin', 'Tanqueray', 100, 6.0, 38),

('Vodka', 'Rodanov', 300, 9.0, 37.5),
('Vodka', 'Miss', 300, 9.0, 37.5),
('Vodka', 'Eristoff', 500, 9.0, 40.9),
('Vodka', 'Grey Goose', 200, 9.0, 40.0),
('Vodka', 'Absolut', 250, 9.0, 37.5),
('Vodka', 'Smirnoff', 100, 9.0, 42.0),

('Vodka Preta', 'Rodanov', 150, 9.0, 20.0),
('Vodka Preta', 'Miss', 400, 9.0, 17.5),
('Vodka Preta', 'Eristoff', 200, 9.0, 20.5),

('Vodka Rosa', 'Absolut', 200, 9.0, 40.0),

('Aguardente', 'Casa', 150, 9.0, 60.0),

('Absinto', 'Kosten', 400, 9.0, 75.0),
('Absinto', 'Rodniks', 400, 9.0, 75.0),

('Conhaque', 'Dreher', 60 , 5.0, 38.0),

('Bagaço', 'Lusíada', 1000, 4.0, 60.0),
('Bagaço', 'Avô da Sara', 1000 , 5.0, 70.0),


('Licor', 'Baileys', 55, 4.5, 15.7),
('Licor', 'Beirão', 100, 5.0, 22.0),
('Licor', 'Amendôa Amarga', 55, 5.0, 20.0),

('Poncha', 'J.Faria', 200, 5.0, 25.0),

('Whiskey', 'Jack Daniels', 200, 9.0, 40.0),
('Whiskey', 'J&B', 200, 9.0, 40.0),
('Whiskey', 'Jameson', 300, 8.0, 40.0),
('Whiskey', 'Red Label', 150, 10.0, 40.0),
('Whiskey', 'Cutty Sark', 150, 10.0, 40.0),
('Whiskey', 'Bushmills', 60, 12.0, 40.0),

('Caipirinha', 'Casa', 400, 5.0, 30.0),
('Caipiblack', 'Casa', 200, 5.0, 15.0),
('Caipirão', 'Casa', 100, 5.0, 30.0),
('Caipiroska', 'Casa', 300, 5.0, 30.0),
('Morangoska', 'Casa', 200, 6.0, 15.0),
('Mojito', 'Casa', 400, 5.0, 30.0),

('Martini Bianco', 'Martini', 300, 8.0, 15.0),
('Martini Rosso', 'Martini', 300, 8.0, 15.0),

('Cerveja', 'Estrella Galicia', 2000, 4.0, 7.5),
('Água', 'Luso', 2000, 1.5, 0.0),
('Cola', 'Coca-Cola', 1500, 2.0, 0.0),
('Gasosa', 'Sprite', 1000, 2.0, 0.0),
('Fanta de Laranja', 'Fanta', 1000, 2.0, 0.0),
('Fanta de Uva', 'Fanta', 200, 2.0, 0.0),
('Guaraná', 'Guaraná', 500, 2.0, 0.0),
('Jói de Laranja', 'Jói', 1000, 2.0, 0.0),
('Jói de Maracujá', 'Jói', 1000, 2.0, 0.0),
('Jói de Limão', 'Jói', 750, 2.0, 0.0);

INSERT INTO BarBebida (idBar, nome, marca) VALUES

-- Lista Bebidas Forte S João
-- Bar 1
(1, 'Rum', 'Bacardi'),
(1, 'Rum', '151 Rum'),
(1, 'Rum', 'Antília'),
(1, 'Cachaça', '51 Cachaça'),
(1, 'Cachaça', 'Velho Barreiro'),
(1, 'Tequila', 'Sierra Branca'),
(1, 'Tequila', 'José Cuervo'),
(1, 'Tequila', 'El Jimador'),
(1, 'Gin', 'Bombay'),
(1, 'Gin', 'Bombay Saphire'),
(1, 'Gin', 'Beefeater'),
(1, 'Gin', 'Beefeater Pink'),
(1, 'Vodka', 'Eristoff'),
(1, 'Vodka', 'Grey Goose'),
(1, 'Vodka Preta', 'Miss'),
(1, 'Vodka Preta', 'Eristoff'),
(1, 'Vodka Rosa', 'Absolut'),
(1, 'Absinto', 'Kosten'),
(1, 'Conhaque', 'Dreher'), 
(1, 'Bagaço', 'Lusíada'),
(1, 'Licor', 'Baileys'),
(1, 'Licor', 'Beirão'),
(1, 'Whiskey', 'Jack Daniels'),
(1, 'Whiskey', 'Bushmills'),
(1, 'Caipirinha', 'Casa'),
(1, 'Caipiblack', 'Casa'),
(1, 'Caipirão', 'Casa'),
(1, 'Mojito', 'Casa'),
(1, 'Cerveja', 'Estrella Galicia'),
(1, 'Água', 'Luso'),
(1, 'Cola', 'Coca-Cola'),
(1, 'Gasosa', 'Sprite'),
(1, 'Fanta de Laranja', 'Fanta'),
(1, 'Fanta de Uva', 'Fanta'),
(1, 'Guaraná', 'Guaraná'),
(1, 'Jói de Laranja', 'Jói'),
(1, 'Jói de Maracujá', 'Jói'),
(1, 'Jói de Limão', 'Jói'),

-- Bar 2
(2, 'Rum', 'Bacardi'),
(2, 'Rum', 'Bacardi Lemon'),
(2, 'Rum', 'Antília'),
(2, 'Cachaça', '51 Cachaça'),
(2, 'Cachaça', 'Velho Barreiro'),
(2, 'Tequila', 'El Jimador'),
(2, 'Gin', 'Bombay'),
(2, 'Gin', 'Bombay Saphire'),
(2, 'Gin', 'Beefeater'),
(2, 'Gin', 'Beefeater Pink'), 
(2, 'Gin', 'Hendricks'),
(2, 'Vodka', 'Rodanov'),
(2, 'Vodka', 'Eristoff'),
(2, 'Vodka', 'Grey Goose'),
(2, 'Vodka Preta', 'Rodanov'), 
(2, 'Vodka Preta', 'Miss'),
(2, 'Vodka Preta', 'Eristoff'),
(2, 'Aguardente', 'Casa'),
(2, 'Absinto', 'Kosten'),
(2, 'Conhaque', 'Dreher'), 
(2, 'Bagaço', 'Lusíada'),
(2, 'Bagaço', 'Avô da Sara'),
(2, 'Licor', 'Baileys'),
(2, 'Poncha', 'J.Faria'),
(2, 'Whiskey', 'Jack Daniels'),
(2, 'Whiskey', 'J&B'),
(2, 'Whiskey', 'Red Label'),
(2, 'Caipirinha', 'Casa'),
(2, 'Caipiblack', 'Casa'),
(2, 'Caipirão', 'Casa'),
(2, 'Caipiroska', 'Casa'),
(2, 'Morangoska', 'Casa'),
(2, 'Mojito', 'Casa'),
(2, 'Cerveja', 'Estrella Galicia'),
(2, 'Água', 'Luso'),
(2, 'Cola', 'Coca-Cola'),
(2, 'Gasosa', 'Sprite'),
(2, 'Fanta de Laranja', 'Fanta'),
(2, 'Guaraná', 'Guaraná'),
(2, 'Jói de Laranja', 'Jói'),
(2, 'Jói de Maracujá', 'Jói'),
(2, 'Jói de Limão', 'Jói'),

-- Bar 3
(3, 'Rum', 'Bacardi'),
(3, 'Rum', 'Bacardi Lemon'),
(3, 'Rum', 'Havana Club'),
(3, 'Cachaça', '51 Cachaça'),
(3, 'Tequila', 'Sierra Branca'),
(3, 'Tequila', 'José Cuervo'),
(3, 'Tequila', 'El Jimador'),
(3, 'Gin', 'Bombay'),
(3, 'Gin', 'Beefeater'),
(3, 'Gin', 'Beefeater Pink'),
(3, 'Gin', 'Gordons'), 
(3, 'Vodka', 'Eristoff'),
(3, 'Vodka', 'Grey Goose'),
(3, 'Vodka', 'Absolut'),
(3, 'Vodka', 'Smirnoff'),
(3, 'Vodka Preta', 'Rodanov'), 
(3, 'Vodka Preta', 'Miss'),
(3, 'Vodka Rosa', 'Absolut'),
(3, 'Aguardente', 'Casa'),
(3, 'Absinto', 'Rodniks'),
(3, 'Conhaque', 'Dreher'), 
(3, 'Bagaço', 'Lusíada'),
(3, 'Licor', 'Amendôa Amarga'),
(3, 'Whiskey', 'Jack Daniels'),
(3, 'Whiskey', 'J&B'),
(3, 'Whiskey', 'Cutty Sark'),
(3, 'Whiskey', 'Bushmills'),
(3, 'Caipirinha', 'Casa'),
(3, 'Mojito', 'Casa'),
(3, 'Martini Bianco', 'Martini'),
(3, 'Martini Rosso', 'Martini'),
(3, 'Cerveja', 'Estrella Galicia'),
(3, 'Água', 'Luso'),
(3, 'Cola', 'Coca-Cola'),
(3, 'Gasosa', 'Sprite'),
(3, 'Fanta de Laranja', 'Fanta'),
(3, 'Fanta de Uva', 'Fanta'),
(3, 'Guaraná', 'Guaraná'),
(3, 'Jói de Laranja', 'Jói'),
(3, 'Jói de Maracujá', 'Jói'),
(3, 'Jói de Limão', 'Jói'),

-- Lista Bebidas Via Rápida 
-- Bar 1
(4, 'Rum', 'Bacardi'),
(4, 'Rum', '151 Rum'),
(4, 'Rum', 'Havana Club'),
(4, 'Cachaça', '51 Cachaça'),
(4, 'Cachaça', 'Sagatiba Pura'),
(4, 'Cachaça', 'Milbar'),
(4, 'Tequila', 'Sierra Branca'),
(4, 'Tequila', 'José Cuervo'),
(4, 'Gin', 'Bombay'),
(4, 'Gin', 'Bombay Saphire'),
(4, 'Gin', 'Beefeater Pink'),
(4, 'Gin', 'Gordons'), 
(4, 'Gin', 'Hendricks'),
(4, 'Gin', 'Tanqueray'),
(4, 'Vodka', 'Miss'),
(4, 'Vodka', 'Grey Goose'),
(4, 'Vodka', 'Absolut'),
(4, 'Vodka', 'Smirnoff'),
(4, 'Vodka Preta', 'Miss'),
(4, 'Vodka Preta', 'Eristoff'), 
(4, 'Aguardente', 'Casa'),
(4, 'Absinto', 'Kosten'),
(4, 'Absinto', 'Rodniks'),
(4, 'Bagaço', 'Lusíada'),
(4, 'Bagaço', 'Avô da Sara'),
(4, 'Licor', 'Baileys'),
(4, 'Licor', 'Beirão'),
(4, 'Poncha', 'J.Faria'),
(4, 'Whiskey', 'J&B'),
(4, 'Whiskey', 'Red Label'),
(4, 'Whiskey', 'Cutty Sark'),
(4, 'Caipirinha', 'Casa'),
(4, 'Caipiblack', 'Casa'),
(4, 'Caipirão', 'Casa'),
(4, 'Mojito', 'Casa'),
(4, 'Martini Bianco', 'Martini'),
(4, 'Cerveja', 'Estrella Galicia'),
(4, 'Água', 'Luso'),
(4, 'Cola', 'Coca-Cola'),
(4, 'Gasosa', 'Sprite'),
(4, 'Fanta de Laranja', 'Fanta'),
(4, 'Fanta de Uva', 'Fanta'),
(4, 'Guaraná', 'Guaraná'),
(4, 'Jói de Laranja', 'Jói'),
(4, 'Jói de Maracujá', 'Jói'),
(4, 'Jói de Limão', 'Jói'),

-- Bar 2
(5, 'Rum', 'Bacardi'),
(5, 'Rum', '151 Rum'),
(5, 'Rum', 'Havana Club'),
(5, 'Cachaça', '51 Cachaça'),
(5, 'Cachaça', 'Sagatiba Pura'),
(5, 'Cachaça', 'Milbar'),
(5, 'Tequila', 'Sierra Branca'),
(5, 'Tequila', 'El Jimador'),
(5, 'Gin', 'Beefeater'),
(5, 'Gin', 'Beefeater Pink'),
(5, 'Gin', 'Gordons'), 
(5, 'Gin', 'Tanqueray'),
(5, 'Vodka', 'Miss'),
(5, 'Vodka', 'Eristoff'),
(5, 'Vodka', 'Grey Goose'),
(5, 'Vodka', 'Absolut'),
(5, 'Vodka Preta', 'Rodanov'), 
(5, 'Vodka Preta', 'Miss'),
(5, 'Bagaço', 'Lusíada'),
(5, 'Bagaço', 'Avô da Sara'),
(5, 'Licor', 'Beirão'),
(5, 'Licor', 'Amendôa Amarga'),
(5, 'Poncha', 'J.Faria'),
(5, 'Whiskey', 'J&B'),
(5, 'Whiskey', 'Jameson'),
(5, 'Whiskey', 'Cutty Sark'),
(5, 'Cerveja', 'Estrella Galicia'),
(5, 'Água', 'Luso'),
(5, 'Cola', 'Coca-Cola'),
(5, 'Gasosa', 'Sprite'),
(5, 'Fanta de Laranja', 'Fanta'),
(5, 'Fanta de Uva', 'Fanta'),
(5, 'Guaraná', 'Guaraná'),
(5, 'Jói de Laranja', 'Jói'),
(5, 'Jói de Maracujá', 'Jói'),
(5, 'Jói de Limão', 'Jói'),

-- Lista  Bebidas Pacha
-- Bar 1
(6, 'Rum', '151 Rum'),
(6, 'Rum', 'Bacardi Lemon'),
(6, 'Rum', 'Antília'),
(6, 'Cachaça', 'Sagatiba Pura'),
(6, 'Tequila', 'Sierra Branca'),
(6, 'Tequila', 'José Cuervo'),
(6, 'Tequila', 'El Jimador'),
(6, 'Gin', 'Bombay Saphire'),
(6, 'Gin', 'Beefeater Pink'),
(6, 'Gin', 'Hendricks'),
(6, 'Gin', 'Tanqueray'),
(6, 'Vodka', 'Eristoff'),
(6, 'Vodka', 'Grey Goose'),
(6, 'Vodka', 'Absolut'),
(6, 'Vodka Preta', 'Rodanov'), 
(6, 'Vodka Preta', 'Miss'),
(6, 'Vodka Preta', 'Eristoff'),
(6, 'Vodka Rosa', 'Absolut'),
(6, 'Absinto', 'Rodniks'),
(6, 'Conhaque', 'Dreher'), 
(6, 'Bagaço', 'Avô da Sara'),
(6, 'Licor', 'Baileys'),
(6, 'Licor', 'Beirão'),
(6, 'Licor', 'Amendôa Amarga'),
(6, 'Poncha', 'J.Faria'),
(6, 'Whiskey', 'Jack Daniels'),
(6, 'Whiskey', 'Red Label'),
(6, 'Whiskey', 'Bushmills'),
(6, 'Caipirinha', 'Casa'),
(6, 'Caipiblack', 'Casa'),
(6, 'Caipirão', 'Casa'),
(6, 'Caipiroska', 'Casa'),
(6, 'Morangoska', 'Casa'),
(6, 'Mojito', 'Casa'),
(6, 'Martini Bianco', 'Martini'),
(6, 'Martini Rosso', 'Martini'),
(6, 'Cerveja', 'Estrella Galicia'),
(6, 'Água', 'Luso'),
(6, 'Cola', 'Coca-Cola'),
(6, 'Gasosa', 'Sprite'),
(6, 'Fanta de Laranja', 'Fanta'),
(6, 'Fanta de Uva', 'Fanta'),
(6, 'Guaraná', 'Guaraná'),
(6, 'Jói de Laranja', 'Jói'),
(6, 'Jói de Maracujá', 'Jói'),
(6, 'Jói de Limão', 'Jói'),

-- Bar 2
(7, 'Cachaça', '51 Cachaça'),
(7, 'Tequila', 'Sierra Branca'),
(7, 'Gin', 'Bombay'),
(7, 'Gin', 'Bombay Saphire'),
(7, 'Gin', 'Beefeater'),
(7, 'Gin', 'Beefeater Pink'),
(7, 'Gin', 'Gordons'), 
(7, 'Vodka', 'Rodanov'),
(7, 'Vodka', 'Miss'),
(7, 'Vodka', 'Smirnoff'),
(7, 'Vodka Preta', 'Rodanov'), 
(7, 'Vodka Preta', 'Miss'),
(7, 'Aguardente', 'Casa'),
(7, 'Absinto', 'Kosten'),
(7, 'Conhaque', 'Dreher'), 
(7, 'Bagaço', 'Lusíada'),
(7, 'Bagaço', 'Avô da Sara'),
(7, 'Whiskey', 'J&B'),
(7, 'Whiskey', 'Jameson'),
(7, 'Cerveja', 'Estrella Galicia'),
(7, 'Água', 'Luso'),
(7, 'Cola', 'Coca-Cola'),
(7, 'Gasosa', 'Sprite'),
(7, 'Fanta de Laranja', 'Fanta'),
(7, 'Fanta de Uva', 'Fanta'),
(7, 'Guaraná', 'Guaraná'),
(7, 'Jói de Laranja', 'Jói'),
(7, 'Jói de Maracujá', 'Jói'),
(7, 'Jói de Limão', 'Jói'),

-- Bar 3
(8, 'Rum', 'Bacardi'),
(8, 'Rum', '151 Rum'),
(8, 'Rum', 'Antília'),
(8, 'Cachaça', '51 Cachaça'),
(8, 'Cachaça', 'Velho Barreiro'),
(8, 'Tequila', 'El Jimador'),
(8, 'Gin', 'Bombay Saphire'),
(8, 'Gin', 'Beefeater'),
(8, 'Gin', 'Gordons'), 
(8, 'Gin', 'Tanqueray'),
(8, 'Vodka', 'Eristoff'),
(8, 'Vodka', 'Grey Goose'),
(8, 'Vodka', 'Absolut'),
(8, 'Vodka Preta', 'Miss'),
(8, 'Vodka Preta', 'Eristoff'),
(8, 'Bagaço', 'Lusíada'),
(8, 'Bagaço', 'Avô da Sara'),
(8, 'Licor', 'Baileys'),
(8, 'Licor', 'Beirão'),
(8, 'Poncha', 'J.Faria'),
(8, 'Whiskey', 'Jack Daniels'),
(8, 'Whiskey', 'J&B'),
(8, 'Whiskey', 'Bushmills'),
(8, 'Caipirinha', 'Casa'),
(8, 'Caipiblack', 'Casa'),
(8, 'Cerveja', 'Estrella Galicia'),
(8, 'Água', 'Luso'),
(8, 'Cola', 'Coca-Cola'),
(8, 'Gasosa', 'Sprite'),
(8, 'Fanta de Laranja', 'Fanta'),
(8, 'Fanta de Uva', 'Fanta'),
(8, 'Guaraná', 'Guaraná'),
(8, 'Jói de Laranja', 'Jói'),
(8, 'Jói de Maracujá', 'Jói'),
(8, 'Jói de Limão', 'Jói'),

-- Bar 4
(9, 'Tequila', 'Sierra Branca'),
(9, 'Gin', 'Beefeater Pink'),
(9, 'Gin', 'Gordons'), 
(9, 'Vodka', 'Miss'),
(9, 'Vodka', 'Eristoff'),
(9, 'Vodka Preta', 'Miss'),
(9, 'Vodka Preta', 'Eristoff'),
(9, 'Bagaço', 'Avô da Sara'),
(9, 'Whiskey', 'Jack Daniels'),
(9, 'Whiskey', 'J&B'),
(9, 'Whiskey', 'Jameson'),
(9, 'Cerveja', 'Estrella Galicia'),
(9, 'Água', 'Luso'),
(9, 'Cola', 'Coca-Cola'),
(9, 'Gasosa', 'Sprite'),
(9, 'Fanta de Laranja', 'Fanta'),
(9, 'Fanta de Uva', 'Fanta'),
(9, 'Guaraná', 'Guaraná'),
(9, 'Jói de Laranja', 'Jói'),
(9, 'Jói de Maracujá', 'Jói'),
(9, 'Jói de Limão', 'Jói'),

-- Bar 5
(10, 'Rum', 'Bacardi'),
(10, 'Rum', '151 Rum'),
(10, 'Rum', 'Havana Club'),
(10, 'Cachaça', '51 Cachaça'),
(10, 'Tequila', 'José Cuervo'),
(10, 'Gin', 'Bombay'),
(10, 'Gin', 'Bombay Saphire'),
(10, 'Gin', 'Beefeater'),
(10, 'Gin', 'Hendricks'),
(10, 'Gin', 'Tanqueray'),
(10, 'Vodka', 'Rodanov'),
(10, 'Vodka', 'Miss'),
(10, 'Vodka', 'Smirnoff'),
(10, 'Vodka Preta', 'Rodanov'), 
(10, 'Vodka Preta', 'Miss'),
(10, 'Absinto', 'Rodniks'),
(10, 'Bagaço', 'Avô da Sara'),
(10, 'Licor', 'Baileys'),
(10, 'Poncha', 'J.Faria'),
(10, 'Whiskey', 'Jack Daniels'),
(10, 'Whiskey', 'J&B'),
(10, 'Caipirinha', 'Casa'),
(10, 'Caipiblack', 'Casa'),
(10, 'Caipirão', 'Casa'),
(10, 'Mojito', 'Casa'),
(10, 'Martini Bianco', 'Martini'),
(10, 'Cerveja', 'Estrella Galicia'),
(10, 'Água', 'Luso'),
(10, 'Cola', 'Coca-Cola'),
(10, 'Gasosa', 'Sprite'),
(10, 'Fanta de Laranja', 'Fanta'),
(10, 'Fanta de Uva', 'Fanta'),
(10, 'Guaraná', 'Guaraná'),
(10, 'Jói de Laranja', 'Jói'),
(10, 'Jói de Maracujá', 'Jói'),
(10, 'Jói de Limão', 'Jói'),

-- Bar 6
(11, 'Rum', '151 Rum'),
(11, 'Rum', 'Cacique'),
(11, 'Cachaça', 'Sagatiba Pura'),
(11, 'Tequila', 'Sierra Branca'),
(11, 'Gin', 'Bombay'),
(11, 'Gin', 'Hendricks'),
(11, 'Gin', 'Tanqueray'),
(11, 'Vodka', 'Rodanov'),
(11, 'Vodka', 'Miss'),
(11, 'Vodka', 'Absolut'),
(11, 'Vodka Preta', 'Rodanov'), 
(11, 'Vodka Preta', 'Miss'),
(11, 'Vodka Rosa', 'Absolut'),
(11, 'Absinto', 'Rodniks'),
(11, 'Conhaque', 'Dreher'), 
(11, 'Bagaço', 'Lusíada'),
(11, 'Licor', 'Baileys'),
(11, 'Licor', 'Amendôa Amarga'),
(11, 'Poncha', 'J.Faria'),
(11, 'Whiskey', 'Jameson'),
(11, 'Whiskey', 'Cutty Sark'),
(11, 'Caipirinha', 'Casa'),
(11, 'Caipiroska', 'Casa'),
(11, 'Martini Bianco', 'Martini'),
(11, 'Cerveja', 'Estrella Galicia'),
(11, 'Água', 'Luso'),
(11, 'Cola', 'Coca-Cola'),
(11, 'Gasosa', 'Sprite'),
(11, 'Fanta de Laranja', 'Fanta'),
(11, 'Fanta de Uva', 'Fanta'),
(11, 'Guaraná', 'Guaraná'),
(11, 'Jói de Laranja', 'Jói'),
(11, 'Jói de Maracujá', 'Jói'),
(11, 'Jói de Limão', 'Jói'),

-- Bar 7
(12, 'Rum', '151 Rum'),
(12, 'Rum', 'Bacardi Lemon'),
(12, 'Rum', 'Havana Club'),
(12, 'Cachaça', '51 Cachaça'),
(12, 'Cachaça', 'Milbar'),
(12, 'Tequila', 'El Jimador'),
(12, 'Gin', 'Gordons'), 
(12, 'Gin', 'Hendricks'),
(12, 'Gin', 'Tanqueray'),
(12, 'Vodka', 'Rodanov'),
(12, 'Vodka', 'Miss'),
(12, 'Vodka', 'Smirnoff'),
(12, 'Vodka Preta', 'Rodanov'), 
(12, 'Vodka Preta', 'Miss'),
(12, 'Aguardente', 'Casa'),
(12, 'Absinto', 'Rodniks'),
(12, 'Bagaço', 'Lusíada'),
(12, 'Bagaço', 'Avô da Sara'),
(12, 'Licor', 'Baileys'),
(12, 'Whiskey', 'J&B'),
(12, 'Whiskey', 'Jameson'),
(12, 'Whiskey', 'Red Label'),
(12, 'Caipirinha', 'Casa'),
(12, 'Caipiroska', 'Casa'),
(12, 'Morangoska', 'Casa'),
(12, 'Martini Bianco', 'Martini'),
(12, 'Cerveja', 'Estrella Galicia'),
(12, 'Água', 'Luso'),
(12, 'Cola', 'Coca-Cola'),
(12, 'Gasosa', 'Sprite'),
(12, 'Fanta de Laranja', 'Fanta'),
(12, 'Fanta de Uva', 'Fanta'),
(12, 'Guaraná', 'Guaraná'),
(12, 'Jói de Laranja', 'Jói'),
(12, 'Jói de Maracujá', 'Jói'),
(12, 'Jói de Limão', 'Jói'),

-- Bar 8
(13, 'Rum', 'Bacardi Lemon'),
(13, 'Rum', 'Cacique'),
(13, 'Rum', 'Antília'),
(13, 'Cachaça', 'Sagatiba Pura'),
(13, 'Tequila', 'José Cuervo'),
(13, 'Gin', 'Beefeater'),
(13, 'Gin', 'Beefeater Pink'),
(13, 'Gin', 'Tanqueray'),
(13, 'Vodka', 'Miss'),
(13, 'Vodka', 'Eristoff'),
(13, 'Vodka', 'Grey Goose'),
(13, 'Vodka Preta', 'Miss'),
(13, 'Vodka Preta', 'Eristoff'),
(13, 'Absinto', 'Rodniks'),
(13, 'Conhaque', 'Dreher'),
(13, 'Bagaço', 'Avô da Sara'),
(13, 'Licor', 'Baileys'),
(13, 'Licor', 'Beirão'),
(13, 'Poncha', 'J.Faria'),
(13, 'Whiskey', 'Jack Daniels'),
(13, 'Whiskey', 'Red Label'),
(13, 'Whiskey', 'Cutty Sark'),
(13, 'Caipirinha', 'Casa'),
(13, 'Caipiblack', 'Casa'),
(13, 'Morangoska', 'Casa'),
(13, 'Mojito', 'Casa'),
(13, 'Cerveja', 'Estrella Galicia'),
(13, 'Água', 'Luso'),
(13, 'Cola', 'Coca-Cola'),
(13, 'Gasosa', 'Sprite'),
(13, 'Fanta de Laranja', 'Fanta'),
(13, 'Fanta de Uva', 'Fanta'),
(13, 'Guaraná', 'Guaraná'),
(13, 'Jói de Laranja', 'Jói'),
(13, 'Jói de Maracujá', 'Jói'),
(13, 'Jói de Limão', 'Jói'),


-- Lista Bebidas Pedra do Couto
-- Bar 1
(14, 'Rum', '151 Rum'),
(14, 'Rum', 'Antília'),
(14, 'Cachaça', '51 Cachaça'),
(14, 'Cachaça', 'Sagatiba Pura'),
(14, 'Gin', 'Bombay'),
(14, 'Gin', 'Beefeater Pink'),
(14, 'Gin', 'Hendricks'),
(14, 'Gin', 'Tanqueray'),
(14, 'Vodka', 'Eristoff'),
(14, 'Vodka', 'Grey Goose'),
(14, 'Vodka', 'Absolut'),
(14, 'Vodka Preta', 'Eristoff'),
(14, 'Vodka Rosa', 'Absolut'),
(14, 'Aguardente', 'Casa'),
(14, 'Absinto', 'Kosten'),
(14, 'Absinto', 'Rodniks'),
(14, 'Conhaque', 'Dreher'), 
(14, 'Bagaço', 'Lusíada'),
(14, 'Bagaço', 'Avô da Sara'),
(14, 'Licor', 'Baileys'),
(14, 'Licor', 'Beirão'),
(14, 'Whiskey', 'Jack Daniels'),
(14, 'Whiskey', 'Jameson'),
(14, 'Whiskey', 'Bushmills'),
(14, 'Caipirinha', 'Casa'),
(14, 'Caipiblack', 'Casa'),
(14, 'Caipirão', 'Casa'),
(14, 'Caipiroska', 'Casa'),
(14, 'Morangoska', 'Casa'),
(14, 'Mojito', 'Casa'),
(14, 'Martini Bianco', 'Martini'),
(14, 'Martini Rosso', 'Martini'),
(14, 'Cerveja', 'Estrella Galicia'),
(14, 'Água', 'Luso'),
(14, 'Cola', 'Coca-Cola'),
(14, 'Gasosa', 'Sprite'),
(14, 'Fanta de Laranja', 'Fanta'),
(14, 'Fanta de Uva', 'Fanta'),
(14, 'Guaraná', 'Guaraná'),
(14, 'Jói de Laranja', 'Jói'),
(14, 'Jói de Maracujá', 'Jói'),
(14, 'Jói de Limão', 'Jói'),

-- Bar 2
(15, 'Rum', 'Bacardi'),
(15, 'Rum', 'Cacique'),
(15, 'Cachaça', '51 Cachaça'),
(15, 'Cachaça', 'Milbar'),
(15, 'Tequila', 'El Jimador'),
(15, 'Gin', 'Bombay'),
(15, 'Gin', 'Bombay Saphire'),
(15, 'Gin', 'Hendricks'),
(15, 'Vodka', 'Rodanov'),
(15, 'Vodka', 'Miss'),
(15, 'Vodka', 'Smirnoff'),
(15, 'Vodka Preta', 'Rodanov'), 
(15, 'Vodka Preta', 'Miss'),
(15, 'Aguardente', 'Casa'),
(15, 'Absinto', 'Kosten'),
(15, 'Absinto', 'Rodniks'),
(15, 'Conhaque', 'Dreher'), 
(15, 'Bagaço', 'Lusíada'),
(15, 'Bagaço', 'Avô da Sara'),
(15, 'Licor', 'Baileys'),
(15, 'Poncha', 'J.Faria'),
(15, 'Whiskey', 'Jameson'),
(15, 'Whiskey', 'Bushmills'),
(15, 'Caipirinha', 'Casa'),
(15, 'Caipiblack', 'Casa'),
(15, 'Caipirão', 'Casa'),
(15, 'Caipiroska', 'Casa'),
(15, 'Morangoska', 'Casa'),
(15, 'Martini Bianco', 'Martini'),
(15, 'Martini Rosso', 'Martini'),
(15, 'Cerveja', 'Estrella Galicia'),
(15, 'Água', 'Luso'),
(15, 'Cola', 'Coca-Cola'),
(15, 'Gasosa', 'Sprite'),
(15, 'Fanta de Laranja', 'Fanta'),
(15, 'Fanta de Uva', 'Fanta'),
(15, 'Guaraná', 'Guaraná'),
(15, 'Jói de Laranja', 'Jói'),
(15, 'Jói de Maracujá', 'Jói'),
(15, 'Jói de Limão', 'Jói'),

-- Bar 3
(16, 'Rum', '151 Rum'),
(16, 'Rum', 'Antília'),
(16, 'Cachaça', '51 Cachaça'),
(16, 'Cachaça', 'Velho Barreiro'),
(16, 'Cachaça', 'Sagatiba Pura'),
(16, 'Tequila', 'Sierra Branca'),
(16, 'Gin', 'Bombay'),
(16, 'Gin', 'Bombay Saphire'),
(16, 'Gin', 'Gordons'), 
(16, 'Vodka', 'Miss'),
(16, 'Vodka', 'Eristoff'),
(16, 'Vodka', 'Absolut'),
(16, 'Vodka Preta', 'Miss'),
(16, 'Vodka Preta', 'Eristoff'),
(16, 'Vodka Rosa', 'Absolut'),
(16, 'Aguardente', 'Casa'),
(16, 'Absinto', 'Rodniks'),
(16, 'Conhaque', 'Dreher'), 
(16, 'Bagaço', 'Lusíada'),
(16, 'Bagaço', 'Avô da Sara'),
(16, 'Licor', 'Beirão'),
(16, 'Poncha', 'J.Faria'),
(16, 'Whiskey', 'Jack Daniels'),
(16, 'Whiskey', 'J&B'),
(16, 'Whiskey', 'Bushmills'),
(16, 'Caipiroska', 'Casa'),
(16, 'Cerveja', 'Estrella Galicia'),
(16, 'Água', 'Luso'),
(16, 'Cola', 'Coca-Cola'),
(16, 'Gasosa', 'Sprite'),
(16, 'Fanta de Laranja', 'Fanta'),
(16, 'Fanta de Uva', 'Fanta'),
(16, 'Guaraná', 'Guaraná'),
(16, 'Jói de Laranja', 'Jói'),
(16, 'Jói de Maracujá', 'Jói'),
(16, 'Jói de Limão', 'Jói'),

-- Lista Bebidas Gare
-- Bar 1
(17, 'Rum', 'Havana Club'),
(17, 'Rum', 'Antília'),
(17, 'Cachaça', 'Sagatiba Pura'),
(17, 'Cachaça', 'Milbar'),
(17, 'Tequila', 'Sierra Branca'),
(17, 'Tequila', 'José Cuervo'),
(17, 'Gin', 'Beefeater'),
(17, 'Gin', 'Beefeater Pink'),
(17, 'Gin', 'Gordons'), 
(17, 'Gin', 'Tanqueray'),
(17, 'Vodka', 'Rodanov'),
(17, 'Vodka', 'Miss'),
(17, 'Vodka', 'Absolut'),
(17, 'Vodka Preta', 'Miss'),
(17, 'Vodka Rosa', 'Absolut'),
(17, 'Aguardente', 'Casa'),
(17, 'Absinto', 'Rodniks'),
(17, 'Bagaço', 'Lusíada'),
(17, 'Bagaço', 'Avô da Sara'),
(17, 'Licor', 'Baileys'),
(17, 'Licor', 'Beirão'),
(17, 'Poncha', 'J.Faria'),
(17, 'Whiskey', 'Red Label'),
(17, 'Whiskey', 'Cutty Sark'),
(17, 'Whiskey', 'Bushmills'),
(17, 'Caipirão', 'Casa'),
(17, 'Caipiroska', 'Casa'),
(17, 'Morangoska', 'Casa'),
(17, 'Mojito', 'Casa'),
(17, 'Cerveja', 'Estrella Galicia'),
(17, 'Água', 'Luso'),
(17, 'Cola', 'Coca-Cola'),
(17, 'Gasosa', 'Sprite'),
(17, 'Fanta de Laranja', 'Fanta'),
(17, 'Fanta de Uva', 'Fanta'),
(17, 'Guaraná', 'Guaraná'),
(17, 'Jói de Laranja', 'Jói'),
(17, 'Jói de Maracujá', 'Jói'),
(17, 'Jói de Limão', 'Jói');

INSERT INTO Funcionario (nome, nrTelemovel, BI, morada, salario, idDiscoteca) VALUES
-- Funcionários Forte S. João
-- Seguranças
('Rafael Ribeiro', 933384731, 18354932, 'Avenida da Boavista, Porto', 900, 1), -- 1
('João Silva', 965874785, 14254158, 'Rua das Flores, Penafiel', 1500, 1), --2
('Marta Aguiar', 916857584, 12548579, 'Rua Primeiro de Maio, Póvoa de Varzim', 900, 1), -- 3
('Francisco Tojeiro', 932456871, 12546987, 'Praça do 25 de Abril, Matosinhos', 900, 1), -- 4
('Luísa Rentes', 921458759, 14256874, 'Avenida do Ramalhete, Aveiro', 800, 1), -- 5
('Márcio Ferreira', 935869478, 12365895, 'Rua dos Tormentos, Gondomar', 900, 1), -- 6
-- Bartender
('Marlene Ramada', 917737123, 12233745, 'Avenida dos Banhos, Viana do Castelo', 1300, 1), -- 7
('Leonor Lopes', 918734561, 14562943, 'Travessa dos Santos, Guimarães', 1000, 1), -- 8
('Manuela Quinaz', 912365987, 25469874, 'Rua Dr Mário Soares, Porto', 900, 1), -- 9
('Joana Alves', 963254787, 12541578, 'Rua Dr Mário Soares, Porto', 900, 1), -- 10
('Filipa Travanca', 925468747, 14575968, 'Avenida do Pombal, Felgueiras', 1000, 1), -- 11
('Marta Andrade', 963258748, 85746958, 'Praça dos Mártires, Braga', 1000, 1), -- 12
-- Staff
('Gonçalo Antunes', 961234325, 19327358, 'Rua dos Clérigos, Póvoa de Varzim', 800, 1), -- 13
('Rita Jaime', 921478781, 14745587, 'Rua da Costa Nova, Viana do Castelo', 700, 1), -- 14
('Olga Tavares', 912457879, 12548745, 'Estrada da Bota, Lousada', 700, 1), -- 15
('Rui Elvas', 912457569, 58545875, 'Rua de Guimarães, Felgueiras', 1500, 1), -- 16
('André Gonçalves', 965823145, 14785964, 'Rua da Felicidade, Lamego', 700, 1), -- 17
 
-- Funcionários Via Rápida
-- Seguranças
('António Ulisses', 912548698, 58575968, 'Rua do Cansaço, Amarante', 900, 2), -- 18
('Marta Miranda', 921458758, 85469741, 'Travessa das Oliveiras, Paredes', 1000, 2), -- 19
('Patrícia Miranda', 965478586, 75496857, 'Praça da Nossa Senhora, Trofa', 900, 2), -- 20
-- Bartender
('Maria Andrade', 912564787, 56586975, 'Praça das Mentiras, Guimarães', 1000, 2), -- 21
('Rui Lima', 923658749, 75649857, 'Rua dos Limões, Santo Tirso', 1200, 2), -- 22
('Vasco Ribeiro', 936547895, 12536478, 'Rua da Praceta, Marco de Canaveses', 1000, 2), -- 23
('Francisco Murta', 936547897, 85698758, 'Travessa Dr Hugo Trindade, Porto', 1400, 2), -- 24
('André Tavares', 923655697, 12654789, 'Estrada da Ribeira, Penafiel', 900, 2), -- 25
('Marta Vieira', 912567489, 84764271, 'Rua da Vida, Paredes ',1000, 2), -- 26
-- Staff
('Maria Fernandes', 965425658, 85658964, 'Rua da Felicidade, Lamego', 700, 2), -- 27
('Eunice Tavares', 965485738, 85418964, 'Rua do Cansaço, Porto', 800, 2), -- 28
('Afonso Cabral', 912354785, 85645923, 'Travessa dos Infestos, Lousada', 800, 2), -- 29
('Tomás Coimbra', 932254586, 74123697, 'Avenida da Agrela, Lousada', 800, 2), -- 30
('Martim Restivo', 912546875, 12457695, 'Rua Visconde de Alentém, Paredes', 700, 2), -- 31
('Rute Albuquerque', 961586962, 25485698,'Praça dos Touros, Póvoa de Varzim', 800, 2), -- 32
('Márcia Antunes', 912865478, 75623984, 'Travessa da Igreja, Marco de Canaveses', 900, 2), -- 33
('Filipe Estêvão', 935486258, 12546847, 'Rua do Visconde do Alto, Aveiro', 700, 2), -- 34
('Núria Madruga', 921254896, 85264895, 'Rua do Monte, Valongo', 1000, 2), -- 35
('Joana Miranda', 923647858, 56235469, 'Rua do Bairral, Matosinhos', 800, 2), -- 36

-- Funcionários Pacha
-- Seguranças
('Fábio Alves', 911765431, 17845645, 'Travessa da Paz, Matosinhos', 900, 3), -- 37
('Tatiana Costa', 967715463, 11432782, 'Rua da Luz, Santo Tirso', 900, 3), -- 38
('Vasco Braga', 911249707, 48215491, 'Rua da Foz, Esposende', 900, 3), -- 39
('Luana Monte', 914765432, 15467331, 'Rua do Sol, Modivas', 900, 3), -- 40
('Luís Veloso', 915748758, 56475897, 'Praça dos Limoeiros, Marco de Canaveses', 900, 3), --41
('Vera Costa', 922575124, 85395612, 'Avenida Eiffel, Trofa', 1000, 3), --42
('Beatriz Valente', 937520082, 51485132, 'Rua da Gaivota, Vila Nova de Gaia', 1500, 3), -- 43
('Joaquim Silveira', 910166004, 29585345,'Travessa dos Pescadores, Mindelo', 950, 3), -- 44
('Rute Castro', 920458789, 52654785, 'Rua dos Cães, Braga', 950, 3), -- 45
('Silvana Guterres', 925773252, 72517512,'Rua Pacifica, Labruge', 1000, 3), -- 46
('Simão Torres', 918034051, 12412761,'Rua Cimo de Xeira, Ferreiró', 1000, 3), -- 47
('Guilherme Rodrigues', 964758157, 12541458, 'Rua da Escola, Esposende', 900, 3), -- 48
-- Bartender
('Beatriz Matos', 912657743, 12317654, 'Avenida António Ferreira, Porto', 900, 3), -- 49
('Fernando Fernandes', 913869442, 90127654, 'Largo da Feira, Leça da Palmeira', 900, 3), -- 50
('Rui Silva', 927612330, 45110782, 'Rua da Igreja, Rates', 900, 3), -- 51
('Sara Ribeiro', 923547587, 85758957, 'Avenida de Tires, Lousada', 1000, 3), -- 52
('Mateus Matias', 916875847, 52565758, 'Praça do Porto, Leça da Palmeira', 1800, 3), -- 53
('Matilde Matias', 923544587, 85257689, 'Rua dos Cordelinhos, Marco de Canaveses', 1500, 3), -- 54
('António Alves', 911525687, 84757841, 'Praça das Tristezas, Ofir', 900, 3), -- 55
('Luana Salgado', 961458748, 85645239, 'Praça do Sofrimento, Matosinhos', 1000, 3), -- 56
('Isla Trancoso', 968758787, 85417598, 'Estrada dos Mártires, Porto', 1000, 3), -- 57
('Marta Miranda', 964758157, 12458578, 'Avenida das Bolas, Paços de Ferreira', 1100, 3), -- 58
('João Rodrigues', 917546234, 43575924, 'Rua da Liberdade, Ofir', 1200, 3), -- 59
('Miguel Boavista', 927745775, 83925732, 'Avenida 27 de Fevereiro, Aver-o-mar', 1200, 3), -- 60
('David Silva', 968547342, 36235623, 'Rua dos Cravos, Apúlia', 1200, 3), -- 61
('Sofia Cunha', 911743753, 76875234, 'Rua do Sobe e Desce, Santo Tirso', 1200, 3), -- 62
('Gustavo Lima', 965862511, 70085241, 'Avenida do Senhor, Barcelos', 1200, 3), -- 63
('Hugo Gomes', 911005744, 54254125, 'Rua 31 de Janeiro, Vila do Conde', 1000, 3), -- 64
-- Staff
('Hugo Rodrigues', 912547859, 75689578, 'Praça dos Bombeiros, Gondomar', 700, 3), -- 65
('Simone Martins', 912365869, 74586924, 'Avenida Brasil, Ponte de Lima', 800, 3), -- 66
('Tiago Andrade', 965874859, 23654785, 'Rua das Tormentas, Amarante', 700, 3), -- 67
('Tânia Ramos', 936547859, 85245697, 'Rua da Amizade, Penafiel', 800, 3), -- 68
('Nilton Rodrigues', 913417865, 45637419, 'Rua da Reta, Mindelo', 800, 3), -- 69
('Sónia Ribas', 965478595, 23654789, 'Avenida da Trindade, Porto', 700, 3), -- 70
('Simão Lopes', 912564788, 75469978, 'Rua do Estádio, Póvoa de Varzim', 700, 3), -- 71
('Mariana Marques', 932458769, 41258758, 'Rua do Moinho, Ermesinde', 700, 3), -- 72
('Rogério Faguntes', 921456781, 17634521, 'Rua do Hotel, Marateca', 700, 3), -- 73
('Luciana Luís', 962547857, 25658758, 'Praça dos Bombeiros, Gondomar', 800, 3), -- 74
('Miguel Sozinho', 912326547, 52145147, 'Praça da Poça, Ermesinde', 800, 3), -- 75
('Ana Raquel Miranda', 962458758, 36547589, 'Rua dos Dados, Santo Tirso', 800, 3), -- 76
('Marcelo Sousa', 914257586, 85647569, 'Rua da Cidade, Viana do Castelo', 1200, 3), -- 77
('Tânia Couto', 961457878, 65475868, 'Rua do Souto, Porto', 700, 3), -- 78
('Vânia Morango', 924587589, 65475878, 'Rua do Carmo, Paredes', 700, 3), -- 79
('Tomás Janeiro', 934578125, 14587596, 'Rua das Melancias, Vila Praia de Âncora', 800, 3), -- 80
('Filipa Moreira', 961457859, 56124587, 'Travessa dos Sonhos, Contumil', 900, 3), -- 81
('Gonçalo Nogueira', 931256578, 41545268, 'Rua dos Amores, Famalicão', 700, 3), -- 82
('Beatriz Fernandes', 964578579, 23651458, 'Praça das Camélias, Guimarães', 700, 3), -- 83
('Fernando Madureira', 910884523, 77351248, 'Rua do Dragão, Porto', 800, 3), -- 84
('António Silva', 918883452, 22528514, 'Rua dos Sininhos, Esposende', 700, 3), -- 85
('Nelson Agra', 917421003, 17563302, 'Avenida dos Banhos, Póvoa de Varzim', 900, 3), -- 86

-- Funcionários Pedra do Couto 
-- Seguranças
('Alexandre Costa', 920437231, 51285421, 'Travessa 17 de Junho, Vilar do Pinheiro', 900, 4), -- 87
('Bruno Gonçalves', 931579931, 84124512, 'Rua Lopes da Silva, Senhora da Hora', 800, 4), -- 88
('Wilson Santos', 917845321, 45210032, 'Avenica Central, Custóias', 900, 4), -- 89
('Carla Torres', 912765432, 87120893, 'Rua Alberto Caeiro, Porto', 1100, 4), -- 90
('Álvaro de Campos', 928712330, 12034528, 'Avenida Humberto Delgado, Trofa', 800, 4), -- 91
('Nuno Ribeiro', 913821666, 15743232, 'Rua da Horta, Estela', 900, 4), -- 92
-- Bartender
('Mónica Sintra', 925478475, 25468478, 'Rua dos Prazeres, Custóias', 1000, 4), -- 93
('Edgar Moreira', 932458718, 52145965, 'Praça das Flores, Vila Nova de Gaia', 1000, 4), -- 94
('Jéssica Nogueira', 912458747, 35245857, 'Avenida da Ribeira, Vila do Conde', 1200, 4), -- 95
('André Fonte', 963214400, 12454090, 'Praça 3 de Abril, Vilar do Pinheiro' , 1000, 4), -- 96
('Luísa Costa', 913287055, 45613387, 'Rua de São Paulo, Moreira de Cónegos', 1000, 4), -- 97
('Fabiana Gomes', 910252049, 10254452, 'Estrada Longa, Longra', 1100, 4), -- 98
-- Staff
('Tómas Ferreira', 911295294, 12452636, 'Rua da Montanha, Trofa', 800, 4), -- 99
('Vasco Fernandes', 923583413, 25437134, 'Avenida 21 de Novembro, Fradelos', 700, 4), -- 100
('Fábio Moreira', 933285151, 90953420, 'Travessa D. Afonso Henriques, Lordelo', 800, 4), -- 101
('Óscar Costa', 917165421, 74357341, 'Rua Adélio Gonçalves, Ermesinde', 750, 4), -- 102
('Mariana Nunes', 924236540, 10235458, 'Rua das Varandas, Lousada', 700, 4), -- 103
('Fernando Cabral', 916500124, 31352851, 'Avenida da Nossa Senhora, Perafita', 800, 4), -- 104
('Sofia Moutinho', 921458748, 36524857, 'Rua de Braga, Braga', 1000, 5), -- 105
('Júlia Torres', 910349004, 85381231, 'Avenida dos Gatos, Póvoa de Varzim', 900, 5), -- 106 
('Matilde Mendes', 938003321, 63571234, 'Rua da Horta, Matosinhos', 900, 5), -- 107

-- Funcionários Gare
-- Seguranças
('Maria Carregosa', 920537142, 37453486, 'Avenida do Rio, Vila do Conde', 900, 5), -- 108
('Maria João Correia', 912308877, 76319890, 'Rua da Águia, Valadares', 1000, 5), -- 109
-- Bartender
('Francisco Parreira', 927713460, 12396655, 'Rua das Amoras, Navais', 1000, 5), -- 110
('Sílvia Carregosa', 911663732, 42652781, 'Avenida do Rio, Vila do Conde', 1200, 5), -- 111
-- Staff
('Jason Antunes', 910254654, 63245801, 'Estrada da Rosa dos Ventos, Paredes', 800, 5), -- 112
('Miguel Silva', 932145487, 20154587, 'Rua do Livro, Ermesinde', 800, 5), -- 113
('Rui Ferreira', 910256585, 32514578, 'Praça das Pombas, Vila do Conde', 2000, 5), -- 114
('Gonçalo Caldas', 913788211, 19880076, 'Rua do Mercado, Fão', 1000, 5), -- 115
('Diogo Leite', 921176444, 89127765, 'Avenida do Mar, Viana do Castelo', 1000, 5), -- 116
('Marco Marques', 965331020, 76231010, 'Rua do Metro, Azurara', 1000, 5); -- 117

INSERT INTO Hierarquia (idSubalterno, idGerente) VALUES
-- Funcionários Forte S. João
-- Seguranças
(1, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
-- Bartender
(8, 7),
(9, 7),
(10, 7),
(11, 7),
(12, 7),
-- Staff Geral
(13, 16),
(14, 16),
(15, 16),
(17, 16),

-- Funcionários Via Rápida
-- Seguranças
(18, 19),
(20, 19),

-- Bartender
(21, 24),
(22, 24),
(23, 24),
(25, 24),
(26, 24),

-- Staff Geral
(27, 35),
(28, 35),
(29, 35),
(30, 35),
(31, 35),
(32, 35),
(33, 35),
(34, 35),
(36, 35),

-- Funcionários Pacha
-- Seguranças
(37, 43),
(38, 43),
(39, 43),
(40, 43),
(41, 43),
(42, 43),
(44, 43),
(45, 43),
(46, 43),
(47, 43),
(48, 43),

-- Bartender
(49, 53),
(50, 53),
(51, 53),
(52, 53),
(54, 53),
(55, 53),
(56, 53),
(57, 53),
(58, 53),
(59, 53),
(60, 53),
(61, 53),
(62, 53),
(63, 53),
(64, 53),

-- Staff Geral
(65, 77),
(66, 77),
(67, 77),
(68, 77),
(69, 77),
(70, 77),
(71, 77),
(72, 77),
(73, 77),
(74, 77),
(75, 77),
(76, 77),
(78, 77),
(79, 77),
(80, 77),
(81, 77),
(82, 77),
(83, 77),
(84, 77),
(85, 77),
(86, 77),

-- Funcionários Pedra do Couto
-- Seguranças
(87, 90),
(88, 90),
(89, 90),
(91, 90),
(92, 90),

-- Bartender
(93, 95),
(94, 95),
(96, 95),
(97, 95),
(98, 95),

-- Staff Geral
(99,105),
(100,105),
(101,105),
(102,105),
(103,105),
(104,105),
(106,105),
(107,105),

-- Funcionários Gare
-- Seguranças
(108, 109),

-- Bartender
(110, 111),

-- Staff
(112, 114),
(113, 114),
(115, 114),
(116, 114),
(117, 114);

INSERT INTO StaffGeral (id) VALUES
-- Forte
(13),
(14),
(15),
(16),
(17),

-- Via Rápida
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),

-- Pacha
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),

-- Pedra do Couto
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),

-- Gare
(112),
(113),
(114),
(115),
(116),
(117);


INSERT INTO Seguranca (id, licenca) VALUES

-- Forte
(1, 456817),
(2, 245612),
(3, 931258),
(4, 835678),
(5, 157136),
(6, 137809),

-- Via Rápida
(18, 352561),
(19, 812758),
(20, 151751),

-- Pacha
(37, 123768),
(38, 912839),
(39, 123152),
(40, 346342),
(41, 832491),
(42, 102349),
(43, 831758),
(44, 875368),
(45, 736575),
(46, 812651),
(47, 241511),
(48, 439781),

-- Pedra do Couto
(87, 435235),
(88, 103901),
(89, 781273),
(90, 214127),
(91, 129419),
(92, 912849),

-- Gare
(108, 981293),
(109, 213812);

INSERT INTO Bartender (id, nivelFormacao) VALUES
-- Forte
(7, 3), -- Chefe
(8, 2),
(9, 1),
(10, 1),
(11, 2),
(12, 3),

-- Via Rápida
(21, 1),
(22, 2),
(23, 1),
(24, 3), -- Chefe
(25, 2),
(26, 1),

-- Pacha
(49, 2),
(50, 1),
(51, 2),
(52, 2),
(53, 3), -- Chefe
(54, 1),
(55, 2),
(56, 1),
(57, 1),
(58, 3),
(59, 2),
(60, 1),
(61, 2),
(62, 3),
(63, 1),
(64, 1),

-- Pedra do Couto
(93, 1),
(94, 1),
(95, 3), -- Chefe
(96, 2),
(97, 2),
(98, 2),

-- Gare
(110, 2),
(111, 3); -- Chefe

INSERT INTO LoungeStaffGeral (idStaff, idLounge) VALUES
-- Forte
(13, 1),
(14, 2),

-- Via Rápida
(27, 3),
(28, 4),
(29, 5),

-- Pacha
(65, 6),
(66, 7),
(67, 7),
(68, 8),
(69, 8),
(70, 9),
(71, 9),
(72, 10),
(73, 10),

-- Pedra do Couto
(99, 11),
(100, 12),
(101, 13),
(102, 14),

-- Gare
(112, 15),
(113, 16),
(114, 16);

INSERT INTO CaixasStaffGeral (idStaff, idCaixa) VALUES
--Forte
(15, 1),
(16, 1),

-- Via Rápida
(30, 2),
(31, 2),
(32, 2),
(33, 3),
(34, 3),

-- Pacha
(74, 4),
(75, 4),
(76, 5),
(77, 5),
(78, 6),
(79, 6),
(80, 7),
(81, 7),
(82, 8),
(83, 8),

-- Pedra do Couto
(103, 9),
(104, 10),
(105, 11),

-- Gare
(115, 12),
(116, 12);

INSERT INTO BengaleiroStaffGeral (idStaff, idBengaleiro) VALUES
-- Forte
(17, 1),

-- Via Rápida
(35, 2),
(36, 2),

-- Pacha
(84, 3),
(85, 4),
(86, 5),

-- Pedra do Couto
(106, 6),
(107, 7),

-- Gare
(117, 8);

INSERT INTO BarBartender (idBartender, idBar) VALUES
-- Forte
(7, 1),
(8, 1),
(9, 2),
(10, 2),
(11, 3),
(12, 3),

-- Via Rápida
(21, 4),
(22, 4),
(23, 4),
(24, 5),
(25, 5),
(26, 5),

-- Pacha
(49, 6),
(50, 6),
(51, 7),
(52, 7),
(53, 8),
(54, 8),
(55, 9),
(56, 9),
(57, 10),
(58, 10),
(59, 11),
(60, 11),
(61, 12),
(62, 12),
(63, 13),
(64, 13),

-- Pedra do Couto
(93, 14),
(94, 14),
(95, 15),
(96, 15),
(97, 16),
(98, 16),

-- Gare
(110, 17),
(111, 17);

INSERT INTO PistaSeguranca (idSeguranca, idPista) VALUES
-- Forte
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),

-- Via Rápida
(18, 3),
(19, 3),
(20, 3),

-- Pacha
(37, 4),
(38, 4),
(39, 5),
(40, 5),
(41, 6),
(42, 6),
(43, 7),
(44, 7),
(45, 8),
(46, 8),
(47, 9),
(48, 9),

-- Pedra do Couto
(87, 10),
(88, 10),
(89, 10),
(90, 11),
(91, 11),
(92, 11),

-- Gare
(108, 12),
(109, 12);


/*
SELECT * FROM "Pessoa";
SELECT * FROM "Discoteca";
SELECT * FROM "Membro";
SELECT * FROM "Reserva";
SELECT * FROM "Lounge";
SELECT * FROM "ReservaLounge";
SELECT * FROM "CaixasPagamento";
SELECT * FROM "Bengaleiro";
SELECT * FROM "Pista";
SELECT * FROM "Artista";
SELECT * FROM "Atuacao";
SELECT * FROM "Bar";
SELECT * FROM "Bebida";
SELECT * FROM "BarBebida";
SELECT * FROM "Funcionario";
SELECT * FROM "Hierarquia";
SELECT * FROM "StaffGeral";
SELECT * FROM "Seguranca";
SELECT * FROM "Bartender";
SELECT * FROM "LoungeStaffGeral";
SELECT * FROM "CaixasStaffGeral";
SELECT * FROM "BengaleiroStaffGeral";
SELECT * FROM "BarBartender";
SELECT * FROM "PistaSeguranca";
*/