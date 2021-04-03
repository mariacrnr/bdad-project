.mode columns
.headers on

PRAGMA foreign_keys = OFF;

drop table if exists Pessoa;
drop table if exists Discoteca;
drop table if exists Membro;
drop table if exists Reserva;
drop table if exists Lounge;
drop table if exists ReservaLounge;
drop table if exists CaixasPagamento;
drop table if exists Bengaleiro;
drop table if exists Pista;
drop table if exists Artista;
drop table if exists Atuacao;
drop table if exists Bar;
drop table if exists Bebida;
drop table if exists BarBebida;
drop table if exists Funcionario;
drop table if exists Hierarquia;
drop table if exists StaffGeral;
drop table if exists Seguranca;
drop table if exists Bartender;
drop table if exists LoungeStaffGeral;
drop table if exists CaixasStaffGeral;
drop table if exists BengaleiroStaffGeral;
drop table if exists BarBartender;
drop table if exists PistaSeguranca;

PRAGMA foreign_keys = ON;

create table Pessoa (
    BI INTEGER NOT NULL CONSTRAINT BIInvalido CHECK ( BI <= 99999999),
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL CONSTRAINT Maioridade CHECK (idade >= 18),
    nrTelemovel INTEGER NrTelemovelInvalido CHECK ((nrTelemovel >= 910000000 AND nrTelemovel <= 939999999) OR (nrTelemovel >= 960000000 AND nrTelemovel <= 969999999)),
    PRIMARY KEY (BI)
);

create table Discoteca (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    localizacao TEXT NOT NULL,
    proprietario TEXT NOT NULL,
    areaTotal REAL,
    UNIQUE (nome, localizacao),
    PRIMARY KEY (id)
);

create table Membro (
    BI INTEGER NOT NULL REFERENCES Pessoa 
                        ON DELETE CASCADE ON UPDATE CASCADE,
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca 
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    nrMembro INTEGER NOT NULL,
    tipo TEXT CONSTRAINT TipoMembroInvalido CHECK (tipo in ('regular','VIP')),
    UNIQUE (nrMembro, idDiscoteca),
    PRIMARY KEY (BI, idDiscoteca)
);

create table Reserva (
    id INTEGER NOT NULL,
    dia TEXT NOT NULL, 
    hora TEXT NOT NULL,
    nrGarrafas INTEGER DEFAULT 0 CONSTRAINT NrGarrafasForaLimite CHECK (nrGarrafas >= 0),
    nrSofas INTEGER DEFAULT 0 CONSTRAINT NrSofasForaLimite CHECK (nrSofas >= 0 and nrSofas <= 5),
    BI INTEGER NOT NULL REFERENCES Pessoa 
                        ON DELETE SET NULL ON UPDATE CASCADE,
    PRIMARY KEY (id)
);

create table Lounge (
    id INTEGER NOT NULL,
    areaEspaco REAL CONSTRAINT AreaEspacoForaLimite CHECK (areaEspaco > 0),
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id)
);

create table ReservaLounge (
    idReserva INTEGER NOT NULL REFERENCES Reserva
                                ON DELETE CASCADE ON UPDATE CASCADE,
    idLounge INTEGER NOT NULL REFERENCES Lounge
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idReserva, idLounge)
);

create table CaixasPagamento (
    id INTEGER NOT NULL,
    areaEspaco REAL CONSTRAINT AreaEspacoForaLimite CHECK (areaEspaco > 0),
    dinheiroCaixa REAL NOT NULL,
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id)
);

create table Bengaleiro (
    id INTEGER NOT NULL,
    areaEspaco REAL CONSTRAINT AreaEspacoForaLimite CHECK (areaEspaco > 0),
    nrMaxCasacos INTEGER NOT NULL CONSTRAINT NrMaxCasacosForaLimite CHECK (nrMaxCasacos > 0),
    precoCasaco REAL NOT NULL CONSTRAINT PrecoCasacoForaLimite CHECK (precoCasaco >= 0),
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id)
);

create table Artista (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    nrTelemovel INTEGER NOT NULL CONSTRAINT NrTelemovelInvalido CHECK ((nrTelemovel >= 910000000 AND nrTelemovel <= 939999999) OR (nrTelemovel >= 960000000 AND nrTelemovel <= 969999999)),
    cache INTEGER,
    tipo TEXT CONSTRAINT TipoArtistaInvalido CHECK (tipo in ('convidado','residente')),
    PRIMARY KEY (id)
); 

create table Pista (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    areaEspaco REAL CHECK (areaEspaco > 0),
    generoMusica TEXT CONSTRAINT GeneroMusicaInvalido CHECK (generoMusica in ('funk', 'trance', 'house','90s', 'kizomba', 'reggaeton')), 
    idResidente INTEGER UNIQUE REFERENCES Artista 
                        ON DELETE SET NULL ON UPDATE CASCADE,
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (nome, idDiscoteca),
    PRIMARY KEY (id)
); 

create table Atuacao (
    idArtista INTEGER NOT NULL REFERENCES Artista 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    idPista INTEGER NOT NULL REFERENCES Pista 
                                ON DELETE SET NULL ON UPDATE CASCADE,
    horaComeco TEXT NOT NULL,
    horaFim TEXT NOT NULL,
    duracao TEXT NOT NULL CONSTRAINT DuracaoForaLimite CHECK (duracao >= '00:30' AND duracao <= '04:00'),
    PRIMARY KEY (idArtista, idPista)
);

create table Bar (
    id INTEGER NOT NULL,
    idPista INTEGER REFERENCES Pista 
                    ON DELETE SET NULL ON UPDATE CASCADE,
    PRIMARY KEY (id)                
);

create table Bebida (
    nome TEXT NOT NULL,
    marca TEXT NOT NULL,
    stock INTEGER NOT NULL CONSTRAINT StockForaLimite CHECK (stock > 50 AND stock < 2400),
    preco REAL NOT NULL,
    teorAlcoolico REAL NOT NULL CONSTRAINT TeorAlcoolicoForaLimite CHECK (teorAlcoolico >= 0),
    CONSTRAINT PrecoEmFuncaoTeor CHECK ((teorAlcoolico < 1.2 AND preco < 4.0) OR (teorAlcoolico >= 1.2 AND preco >= 4.0 AND preco < 50.0)),
    PRIMARY KEY (nome, marca)
);

create table BarBebida (
    idBar INTEGER NOT NULL REFERENCES Bar 
                            ON DELETE CASCADE ON UPDATE CASCADE,
    nome TEXT NOT NULL,
    marca TEXT NOT NULL,
    FOREIGN KEY (nome, marca) REFERENCES Bebida
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idBar, nome, marca)
);

create table Funcionario (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    nrTelemovel INTEGER NOT NULL CONSTRAINT NrTelemovelInvalido CHECK((nrTelemovel >= 910000000 AND nrTelemovel <= 939999999) OR (nrTelemovel >= 960000000 AND nrTelemovel <= 969999999)),
    BI INTEGER NOT NULL CONSTRAINT BIInvalido CHECK ( BI <= 99999999), 
    morada TEXT,   
    salario INTEGER NOT NULL CONSTRAINT SalarioMinimo CHECK (salario > 665),
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (BI,idDiscoteca),
    PRIMARY KEY (id)
);

create table Hierarquia (
    idSubalterno INTEGER NOT NULL REFERENCES Funcionario
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    idGerente INTEGER NOT NULL REFERENCES Funcionario 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idSubalterno)                            
);

create table StaffGeral(
    id INTEGER NOT NULL REFERENCES Funcionario  
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id)                                
);

create table Seguranca (
    id INTEGER NOT NULL REFERENCES Funcionario
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    licenca INT NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

create table Bartender (
    id INTEGER NOT NULL REFERENCES Funcionario 
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    nivelFormacao INTEGER NOT NULL CONSTRAINT NivelFormacaoForaLimite CHECK (nivelFormacao >= 1 AND nivelFormacao <= 3),
    PRIMARY KEY (id)
);

create table LoungeStaffGeral (
    idStaff INTEGER NOT NULL REFERENCES StaffGeral
                            ON DELETE CASCADE ON UPDATE CASCADE,
    idLounge INTEGER NOT NULL REFERENCES Lounge 
                            ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idStaff, idLounge)
);

create table CaixasStaffGeral (
    idStaff INTEGER NOT NULL REFERENCES StaffGeral
                            ON DELETE CASCADE ON UPDATE CASCADE,
    idCaixa INTEGER NOT NULL REFERENCES CaixasPagamento
                            ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idStaff, idCaixa)
);

create table BengaleiroStaffGeral (
    idStaff INTEGER NOT NULL REFERENCES StaffGeral 
                            ON DELETE CASCADE ON UPDATE CASCADE,
    idBengaleiro INTEGER NOT NULL REFERENCES Bengaleiro 
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idStaff, idBengaleiro)
);

create table BarBartender (
    idBartender INTEGER NOT NULL REFERENCES Bartender 
                                ON DELETE CASCADE ON UPDATE CASCADE,
    idBar INTEGER NOT NULL REFERENCES Bar 
                            ON DELETE CASCADE ON UPDATE CASCADE,   
    PRIMARY KEY (idBartender, idBar)
);

create table PistaSeguranca (
    idSeguranca INTEGER NOT NULL REFERENCES Seguranca
                                ON DELETE CASCADE ON UPDATE CASCADE,
    idPista INTEGER NOT NULL REFERENCES Pista
                                ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idSeguranca, idPista)
);

