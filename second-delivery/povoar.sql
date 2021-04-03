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
(12547856, 'Joana Reis', 35, 912345786);

INSERT INTO Discoteca (id, nome, localizacao, proprietario, areaTotal) VALUES
(1, 'Forte S.João', 'Póvoa de Varzim', 'Sérgio Magalhães', 1000.0),
(2, 'Pacha', 'Ofir', 'José Vieira', 7500.0);

INSERT INTO Membro (BI, idDiscoteca, nrMembro, tipo) VALUES 
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

(14693657, 2, 1, 'VIP'),
(14963658, 2, 2, 'VIP'),
(14693659, 2, 3, 'VIP'),

(47542369, 2, 4, 'regular' ),
(12456978, 2, 5, 'VIP'),
(29543593, 2, 6, 'VIP'),
(44353213, 2, 7, 'regular'),
(25425478, 2, 8, 'VIP'),
(31231495, 2, 9, 'regular'),
(57457623, 2, 10, 'regular'),
(31526457, 2, 11, 'regular'),
(34959324, 2, 12, 'regular'),
(12547856, 2, 13, 'VIP');

INSERT INTO Reserva (id, dia, hora, nrGarrafas, nrSofas, BI) VALUES 
(1, '31-03-2020', '23:00', 5, 2, 14693657);

INSERT INTO Lounge (id, areaEspaco, idDiscoteca) VALUES 
(1, 400.0, 1);

INSERT INTO ReservaLounge (idReserva, idLounge) VALUES
(1,1);

INSERT INTO CaixasPagamento (id, areaEspaco, dinheiroCaixa, idDiscoteca) VALUES
(1, 30.0, 0.0, 1);

INSERT INTO Bengaleiro (id, areaEspaco, nrMaxCasacos, precoCasaco, idDiscoteca) VALUES
(1, 30.0, 400, 3.5, 1);

INSERT INTO Artista (id, nome, nrTelemovel, cache, tipo) VALUES
(1, 'Gala', 934564568, 3000, 'residente'),
(2, 'Spice Girls', 917523345, 2500, 'convidado');

INSERT INTO Pista (id, nome, areaEspaco, generoMusica, idResidente, idDiscoteca) VALUES
(1, 'Old but Gold', 300.0, '90s', 1, 1);

INSERT INTO Atuacao (idArtista, idPista, horaComeco, horaFim, duracao) VALUES
(2, 1, '01:00', '03:00', '02:00');

INSERT INTO Bar (id, idPista) VALUES
(1, 1),
(2, 1);

INSERT INTO Bebida (nome, marca, stock, preco, teorAlcoolico) VALUES
('Rum', 'Bacardi', 500, 15.0, 37.5), -- confirmar valores
('Rum', '151 Rum', 400, 20.0, 30); -- confirmar valores

INSERT INTO BarBebida (idBar, nome, marca) VALUES 
(1, 'Rum', 'Bacardi'),
(1, 'Rum', '151 Rum'),
(2, 'Rum', 'Bacardi');

INSERT INTO Funcionario (id, nome, nrTelemovel, BI, morada, salario, idDiscoteca) VALUES
(1, 'Gonçalo', 961234325, 19327358, 'Rua dos Clérigos, Povóa de Varzim', 800, 1),
(2, 'Marlene', 917737123, 12233745, 'Avenida dos Banhos, Viana do Castelo', 700, 1),
(3, 'Rita', 921478781, 14745587, 'Rua da Costa Nova, Viana do Castelo', 700, 1),
(4, 'Leonor', 918734561, 14562943, 'Travessa dos Santos, Guimarães', 1000, 1),
(5, 'Rafael', 933384731, 18354932, 'Avenida da Boavista, Porto', 900, 1);

INSERT INTO Hierarquia (idSubalterno, idGerente) VALUES
(1,2),
(3,2);

INSERT INTO StaffGeral (id) VALUES
(1),
(2),
(3);

INSERT INTO Seguranca (id, licenca) VALUES
(4,156875);

INSERT INTO Bartender (id, nivelFormacao) VALUES
(5,2);

INSERT INTO LoungeStaffGeral (idStaff, idLounge) VALUES
(1,1);

INSERT INTO CaixasStaffGeral (idStaff, idCaixa) VALUES
(2,1);

INSERT INTO BengaleiroStaffGeral (idStaff, idBengaleiro) VALUES
(3,1);

INSERT INTO BarBartender (idBartender, idBar) VALUES
(5,1);

INSERT INTO PistaSeguranca (idSeguranca, idPista) VALUES
(4,1);

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