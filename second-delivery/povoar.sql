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
--Membros Forte S. João
(14693657, 1, 1, 'VIP'),
(14963658, 1, 2, 'VIP'),
(14693659, 1, 3, 'VIP'),
(25475859, 1, 4,'regular'),
(14967659, 1, 5,'regular'),
(24957641, 1, 6,'VIP'),
(15377234, 1, 7,'regular'),
(34587458, 1, 8,'regular'),
(15930134, 1, 9,'VIP'),
(18539412, 1, 10,'regular'),
(12994213, 1, 11,'VIP'),
(19636493, 1, 12,'regular'),

--Membros Via Rápida 
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

--Membros Pacha 
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

--Membros Pedra do Couto
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

--Membros Gare
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
(15262548, 5, 14, 'regular');

INSERT INTO Reserva (dia, hora, nrGarrafas, nrSofas, BI) VALUES 
--Reservas Membros VIP Forte S. João
('31-10-2021', '23:45', 5, 2, 14693657),
('31-10-2021', '23:45', 3, 1, 14693657), --Reserva na mesma discoteca lounges diferentes com diferente quantidade de garrafas e sofas 
('21-06-2021', '10:00', 5, 2, 14693659),
('25-07-2021', '02:00', 1, 0, 14963658),
('05-07-2021', '01:30', 2, 1, 14693659),
('02-08-2021', '03:15', 1, 3, 24957641),
('11-07-2021', '02:30', 3, 1, 15930134),
('15-07-2021', '02:10', 9, 4, 12994213),

--Reservas Membros VIP Via Rápida 
('20-08-2021', '01:00', 7, 3, 14693657),
('14-08-2021', '00:40', 0, 0, 14963658),
('02-09-2021', '01:30', 0, 1, 14693659),
('09-06-2021', '03:15', 1, 2, 12456978),
('18-07-2021', '02:30', 3, 4, 29543593),
('15-10-2021', '04:20', 24, 5, 25425478),
('24-09-2021', '02:00', 10, 2, 12547856),
 
--Reservas Membros VIP Pacha 
('31-10-2021', '23:45', 10, 2, 12548532),
('17-09-2021', '22:00', 2, 1, 14256989),
('03-08-2021', '01:10', 3, 1, 12364689),
('31-07-2021', '02:45', 10, 1, 56986698),
('31-08-2021', '04:00', 12, 2, 12548785),
('21-07-2021', '03:00', 13, 3, 12588999),
('22-07-2021', '04:25', 17, 5, 62569797),
('10-12-2021', '05:00', 11, 4, 85848458),

--Reservas Membros VIP Pedra do Couto
('25-07-2021', '02:00', 16, 5, 14256691),
('20-06-2021', '01:30', 12, 2, 15422364),
('11-08-2021', '05:00', 10, 2, 15262548),
('03-11-2021', '02:00', 5, 1, 52456548),
('07-07-2021', '03:30', 10, 3, 65622569),

--Reservas Membros VIP Gare
('15-07-2021', '01:00', 1, 1, 34587458),
('25-08-2021', '02:45', 4, 1, 15930134),
('13-07-2021', '02:30', 5, 3, 25425478),
('25-09-2021', '23:00', 0, 2, 12548785),
('21-10-2021', '23:30', 20, 5, 25365489),
('24-06-2021', '03:00', 0, 1, 15422364);

INSERT INTO Lounge (areaEspaco, idDiscoteca) VALUES 
--Lounges Forte S. João
(100.0, 1),
(100.0, 1),

--Lounges Via Rápida
(150.0, 2),
(150.0, 2),
(150.0, 2),

--Lounges Pacha
(200.0, 3),
(200.0, 3),
(300.0, 3),
(100.0, 3),
(100.0, 3),
(100.0, 3),

--Lounges Pedra do Couto
(200.0, 4),
(200.0, 4),
(100.0, 4),
(100.0, 4),

--Lounges Gare
(50.0, 5),
(25.0, 5);

INSERT INTO ReservaLounge (idReserva, idLounge) VALUES
--Reservas Lounges Forte S. João
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

--Reservas Lounges Via Rápida
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

--Reservas Lounges Pacha
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

--Reservas Lounges Pedra do Couto
(24,12),
(25,13),
(25,15),
(26,15),
(27,14),
(27,13),
(28,12),
(28,14),

--Reservas Lounges Gare
(29,16),
(30,16),
(31,16),
(31,17),
(32,17),
(33,16),
(34,17);

INSERT INTO CaixasPagamento (areaEspaco, dinheiroCaixa, idDiscoteca) VALUES
--Caixas Forte S. João
(50.0, 200.0, 1),

--Caixas Via Rápida
(70.0, 300.0, 2),
(30.0, 150.0, 2),

--Caixas Pacha
(50.0, 150.0, 3),
(80.0, 300.0, 3),
(50.0, 300.0, 3),
(50.0, 200.0, 3),
(70.0, 500.0, 3),

--Caixas Pedra do Couto
(50.0, 200.0, 4),
(80.0, 150.0, 4),
(70.0, 100.0, 4),

--Caixas Gare
(45.0, 100.0, 5);

INSERT INTO Bengaleiro (areaEspaco, nrMaxCasacos, precoCasaco, idDiscoteca) VALUES
--Bengaleiros Forte S. João
(30.0, 300, 1.5, 1),

--Bengaleiros Via Rápida
(50.0, 500, 2.0, 2),

--Bengaleiros Pacha
(50.0, 600, 3.0, 3),
(100.0, 800, 3.0, 3),
(50.0, 600, 3.0, 3),

--Bengaleiros Pedra do Couto
(50.0, 600, 2.0, 4),
(50.0, 600, 2.0, 4),

--Bengaleiros Gare
(20.0, 400, 1.5, 5);

--Areas Livres para gastar nos outros espaços: Forte: 720 , VR: 1800, Pacha: 6150, Pedra: 2100, Gare: 360
INSERT INTO Artista (nome, nrTelemovel, cache, tipo) VALUES

--Funk
('MC Teteu', 963434888, 1000, 'residente'),  -- 1
('PK', 939912880, 1000, 'convidado'), -- 2
('MC Kevinho', 929888232, 1000, 'convidado'), -- 3
('Anitta', 911877778, 1000, 'convidado'), -- 4
('Dj Guuga', 910444440, 1000, 'residente'), -- 5
('MC Don Juan', 933734111, 1000, 'convidado'), -- 6
('MC Kevin o Chris', 931849253, 1000, 'convidado'), -- 7
 -- 
--Trance -- 
('Vini Vici', 918998944, 1000, 'residente'), -- 8
('Timmy Trumpet', 939758213, 1000, 'convidado'), -- 9
('Mandragora', 911123423, 1000, 'convidado'), -- 10
('Blastoyz', 930095010, 1000, 'residente'), -- 11
('Aura Vortex', 915555234, 1000, 'convidado'), -- 12
('Babalos', 910420696, 1000, 'residente'), -- 13
('Menumas', 918432187, 1000, 'convidado'), -- 14
('Hilight Tribe', 911550430, 1000, 'convidado'), -- 15 
 -- 
--House -- 
('Swedish House Mafia', 910858585, 1000, 'residente'), -- 16 
('Tiësto', 930505000, 1000, 'convidado'), -- 17
('Calvin Harris', 912505505, 1000, 'convidado'), -- 18
('Avicii', 924434715, 1000, 'convidado'), -- 19
('Zedd', 919583995, 1000, 'residente'), -- 20
('Dmitri Vegas & Like Mike', 939539522, 1000, 'convidado'), -- 21
('David Guetta', 937770099, 1000, 'convidado'), --22

--90s
('Gala', 934564568, 3000, 'residente'), -- 23
('Spice Girls', 917523345, 2500, 'convidado'), -- 24
('Nightcrawlers', 932832382, 1000, 'convidado'), -- 25
('Daft Punk', 931134341, 1000, 'residente'), -- 26
('Sash!', 932211999, 1000, 'convidado'), -- 27
('Kris Kross', 911450450, 1000, 'convidado'), -- 28
('The Prodigy', 930055660, 1000, 'convidado'), -- 29

--Kizomba
('C4 Pedro', 936234234, 1000, 'residente'), -- 30
('Nelson Freitas', 916610486, 1000, 'convidado'), -- 31
('Master Jake', 939980486, 1000, 'convidado'), -- 32
('Anselmo Ralph', 916507650, 1000, 'convidado'), -- 33
('Badoxa', 925004950, 1000, 'convidado'), -- 34
('Zona 5', 913319319, 1000, 'convidado'), -- 35
('G-Amado', 936355224, 1000, 'residente'), -- 36

--Reggaetton
('Nio Garcia', 919133215, 1000, 'convidado'), -- 37
('Nicky Jam', 936677576, 1000, 'residente'), -- 38
('Ozuna', 918432924, 1000, 'convidado'), -- 39
('Bad Bunny', 922300232, 1000, 'residente'), -- 40
('KAROL G', 911405888, 1000, 'convidado'), -- 41
('Maluma', 939000265, 1000, 'residente'), -- 42
('J Balvin', 932547666, 1000, 'convidado'); -- 44


--Areas Livres para gastar nos outros espaços: Forte: 720 , VR: 1800, Pacha: 6150, Pedra: 2100, Gare: 360
--'funk', 'trance', 'house','90s', 'kizomba', 'reggaeton'
INSERT INTO Pista (nome, areaEspaco, generoMusica, idResidente, idDiscoteca) VALUES
--Pistas Forte
('Old but Gold', 200.0, '90s', NULL, 1),
('Gaiola', 400.0, 'funk', 1, 1),

--Pistas Via Rápida
('In our hearts', 1000.0, 'trance', 11, 2),

--Pistas Pacha
('Boomusic', 400.0, '90s', NULL, 3),
('Cristalina', 1000.0, 'trance', 8, 3),
('Ofir de Janeiro', 1000.0, 'funk', NULL, 3),
('Casa abaixo', 400.0, 'house', 16, 3),
('Rosso', 800.0, 'kizomba', NULL, 3),
('Jamal', 600.0, 'reggaeton', 38, 3),


--Pistas Pedra do Couto

('Casa de papel', 800.0, 'house', 20, 4),
('Ajuntamentos', 600.0, 'kizomba', NULL, 4),

--Pistas Gare

('Venda nova', 300.0, 'trance', 13, 5);

INSERT INTO Atuacao (idArtista, idPista, horaComeco, horaFim, duracao) VALUES
(2, 1, '01:00', '03:00', '02:00');

INSERT INTO Bar (idPista) VALUES
--Bares Forte S João
(1),
(1),
(2),

--Bares Via Rápida
(3),
(3),

--Bares Pacha
(4),
(5),
(5),
(6),
(6),
(7),
(8),
(9),

--Bares Pedra do Couto
(10),
(10),
(11),

--Bares Gare
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
(1, 'Rum', 'Bacardi'),
(1, 'Rum', '151 Rum'),
(1, 'Rum', 'Bacardi Lemon'),
(1, 'Rum', 'Cacique'),
(1, 'Rum', 'Havana Club'),
(1, 'Rum', 'Antília'),
(1, 'Cachaça', '51 Cachaça'),
(1, 'Cachaça', 'Velho Barreiro'),
(1, 'Cachaça', 'Sagatiba Pura'),
(1, 'Cachaça', 'Milbar'),
(1, 'Tequila', 'Sierra Branca'),
(1, 'Tequila', 'José Cuervo'),
(1, 'Tequila', 'El Jimador'),
(1, 'Gin', 'Bombay'),
(1, 'Gin', 'Bombay Saphire'),
(1, 'Gin', 'Beefeater'),
(1, 'Gin', 'Beefeater Pink'),
(1, 'Gin', 'Gordons'), 
(1, 'Gin', 'Hendricks'),
(1, 'Gin', 'Tanqueray'),
(1, 'Vodka', 'Rodanov'),
(1, 'Vodka', 'Miss'),
(1, 'Vodka', 'Eristoff'),
(1, 'Vodka', 'Grey Goose'),
(1, 'Vodka', 'Absolut'),
(1, 'Vodka', 'Smirnoff'),
(1, 'Vodka Preta', 'Rodanov'), 
(1, 'Vodka Preta', 'Miss'),
(1, 'Vodka Preta', 'Eristoff'),
(1, 'Vodka Rosa', 'Absolut'),
(1, 'Aguardente', 'Casa'),
(1, 'Absinto', 'Kosten'),
(1, 'Absinto', 'Rodniks'),
(1, 'Conhaque', 'Dreher'), 
(1, 'Bagaço', 'Lusíada'),
(1, 'Bagaço', 'Avô da Sara'),
(1, 'Licor', 'Baileys'),
(1, 'Licor', 'Beirão'),
(1, 'Licor', 'Amendôa Amarga'),
(1, 'Poncha', 'J.Faria'),
(1, 'Whiskey', 'Jack Daniels'),
(1, 'Whiskey', 'J&B'),
(1, 'Whiskey', 'Jameson'),
(1, 'Whiskey', 'Red Label'),
(1, 'Whiskey', 'Cutty Sark'),
(1, 'Whiskey', 'Bushmills'),
(1, 'Caipirinha', 'Casa'),
(1, 'Caipiblack', 'Casa'),
(1, 'Caipirão', 'Casa'),
(1, 'Caipiroska', 'Casa'),
(1, 'Morangoska', 'Casa'),
(1, 'Mojito', 'Casa'),
(1, 'Martini Bianco', 'Martini'),
(1, 'Martini Rosso', 'Martini'),
(1, 'Cerveja', 'Estrella Galicia'),
(1, 'Água', 'Luso'),
(1, 'Cola', 'Coca-Cola'),
(1, 'Gasosa', 'Sprite'),
(1, 'Fanta de Laranja', 'Fanta'),
(1, 'Fanta de Uva', 'Fanta'),
(1, 'Guaraná', 'Guaraná'),
(1, 'Jói de Laranja', 'Jói'),
(1, 'Jói de Maracujá', 'Jói'),
(1, 'Jói de Limão', 'Jói');

INSERT INTO Funcionario (nome, nrTelemovel, BI, morada, salario, idDiscoteca) VALUES
--Funcionários Forte S. João
--Seguranças (2)
('Rafael Ribeiro', 933384731, 18354932, 'Avenida da Boavista, Porto', 900, 1),
('João Silva', 965874785, 14254158, 'Rua das Flores, Penafiel', 800, 1),
('Marta Aguiar', 916857584, 12548579, 'Rua Primeiro de Maio, Póvoa de Varzim', 900, 1),
('Francisco Tojeiro', 932456871, 12546987, 'Praça do 25 de Abril, Matosinhos', 900, 1),
('Luísa Rentes', 921458759, 14256874, 'Avenida do Ramalhete, Aveiro', 800, 1),
('Márcio Ferreira', 935869478, 12365895, 'Rua dos Tormentos, Gondomar', 900, 1),
--Bartender (3)
('Marlene Ramada', 917737123, 12233745, 'Avenida dos Banhos, Viana do Castelo', 1300, 1),
('Leonor Lopes', 918734561, 14562943, 'Travessa dos Santos, Guimarães', 1000, 1),
('Manuel Quinaz', 912365987, 25469874, 'Rua Dr Mário Soares, Porto', 900, 1),
('Joana Alves', 963254787, 12541578, 'Rua Dr Mário Soares, Porto', 900, 1),
('Filipa Travanca', 925468747, 14575968, 'Avenida do Pombal, Felgueiras', 1100, 1),
('Marta Andrade', 963258748, 85746958, 'Praça dos Mártires, Braga', 1000, 1),

--Staff (4)
('Gonçalo Antunes', 961234325, 19327358, 'Rua dos Clérigos, Póvoa de Varzim', 800, 1),
('Rita Jaime', 921478781, 14745587, 'Rua da Costa Nova, Viana do Castelo', 700, 1),
('Olga Tavares', 912457879, 12548745, 'Estrada da Bota, Lousada', 700, 1),
('Rui Elvas', 912457569, 58545875, 'Rua de Guimarães, Felgueiras', 1500, 1),
('André Gonçalves', 965823145, 14785964, 'Rua da Felicidade, Lamego', 700, 1),

--Funcionários Via Rápida
--Seguranças
--Bartender
('Maria Andrade', 912564787, 56586975, 'Praça das Mentiras, Guimarães', 1000, 2),
('Rui Lima', 923658749, 75649857, 'Rua dos Limões, Santo Tirso', 1200, 2),
('Vasco Ribeiro', 936547895, 12536478, 'Rua da Praceta, Marco de Canaveses', 1000, 2),
('Francisco Murta', 936547897, 85698758, 'Travessa Dr Hugo Trindade, Porto', 1000, 2),
('André Tavares', 923655697, 12654789, 'Estrada da Ribeira, Penafiel', 900, 2),
('Marta Vieira', 912567489, 84764271, 'Rua da Vida, Paredes ',1000, 2),
--Staff
('Maria Fernandes', 965425658, 85658964, 'Rua da Felicidade, Lamego', 700, 2),
('Afonso Cabral', 912354785, 85645923, 'Travessa dos Infestos, Lousada', 800, 2),
('Tomás Coimbra', 932254586, 74123697, 'Avenida da Agrela, Lousada', 800, 2),
('Martim Restivo', 912546875, 12457695, 'Rua Visconde de Alentém, Paredes', 700, 2),
('Rute Albuquerque', 961586962, 25485698,'Praça dos Touros, Póvoa de Varzim', 800, 2),
('Márcia Antunes', 912865478, 75623984, 'Travessa da Igreja, Marco de Canaveses', 900, 2),
('Filipe Estêvão', 935486258, 12546847, 'Rua do Visconde do Alto, Aveiro', 700, 2),
('Núria Madruga', 921254896, 85264895, 'Rua do Monte, Valongo', 700, 2),
('Joana Miranda', 923647858, 56235469, 'Rua do Bairral, Matosinhos', 800, 2);

--Funcionários Pacha
--Seguranças
--Bartender
--Staff

--Funcionários Pedra do Couto
--Seguranças
--Bartender
--Staff

--Funcionários Gare
--Seguranças
--Bartender
--Staff

INSERT INTO Hierarquia (idSubalterno, idGerente) VALUES
(1, 2),
(3, 2);

INSERT INTO StaffGeral (id) VALUES
(1),
(2),
(3);

INSERT INTO Seguranca (id, licenca) VALUES
(4, 156875);

INSERT INTO Bartender (id, nivelFormacao) VALUES
(5, 2);

INSERT INTO LoungeStaffGeral (idStaff, idLounge) VALUES
(1, 1);

INSERT INTO CaixasStaffGeral (idStaff, idCaixa) VALUES
(2, 1);

INSERT INTO BengaleiroStaffGeral (idStaff, idBengaleiro) VALUES
(3, 1);

INSERT INTO BarBartender (idBartender, idBar) VALUES
(5, 1);

INSERT INTO PistaSeguranca (idSeguranca, idPista) VALUES
(4, 1);

--SELECT * FROM "Pessoa";
--SELECT * FROM "Discoteca";
--SELECT * FROM "Membro";
--SELECT * FROM "Reserva";
--SELECT * FROM "Lounge";
--SELECT * FROM "ReservaLounge";
--SELECT * FROM "CaixasPagamento";
--SELECT * FROM "Bengaleiro";
--SELECT * FROM "Pista";
--SELECT * FROM "Artista";
--SELECT * FROM "Atuacao";
--SELECT * FROM "Bar";
--SELECT * FROM "Bebida";
--SELECT * FROM "BarBebida";
--SELECT * FROM "Funcionario";
--SELECT * FROM "Hierarquia";
--SELECT * FROM "StaffGeral";
--SELECT * FROM "Seguranca";
--SELECT * FROM "Bartender";
--SELECT * FROM "LoungeStaffGeral";
--SELECT * FROM "CaixasStaffGeral";
--SELECT * FROM "BengaleiroStaffGeral";
--SELECT * FROM "BarBartender";
--SELECT * FROM "PistaSeguranca";