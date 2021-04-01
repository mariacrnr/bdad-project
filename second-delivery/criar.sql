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
drop table if exists SegurancaPista;

PRAGMA foreign_keys = ON;

create table Pessoa (
    BI INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL CHECK (idade >= 18),
    nrTelemovel INTEGER
);

create table Discoteca (
    idDiscoteca INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    localizacao TEXT NOT NULL,
    proprietario TEXT NOT NULL,
    areaTotal REAL,
    UNIQUE (nome, localizacao)
);

create table Membro (
    BI INTEGER NOT NULL REFERENCES Pessoa,
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca,
    nrMembro INTEGER NOT NULL UNIQUE,
    tipo TEXT CHECK (tipo in ('regular','VIP')),
    PRIMARY KEY (BI, idDiscoteca)
);

create table Reserva (
    idReserva INTEGER PRIMARY KEY,
    dia TEXT NOT NULL, 
    hora TEXT NOT NULL,
    nrGarrafas INTEGER DEFAULT 0 CHECK (nrGarrafas >= 0),
    nrSofas INTEGER DEFAULT 0 CHECK (nrSofas >= 0 and nrSofas <= 5),
    BI INTEGER NOT NULL REFERENCES Pessoa
);

create table Lounge (
    idLounge INTEGER PRIMARY KEY,
    areaEspaco REAL CHECK (areaEspaco > 0),
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca
);

create table ReservaLounge (
    idReserva INTEGER NOT NULL REFERENCES Reserva,
    idLounge INTEGER NOT NULL REFERENCES Lounge,
    PRIMARY KEY (idReserva, idLounge)
);

create table CaixasPagamento (
    idCaixa INTEGER PRIMARY KEY,
    areaEspaco REAL CHECK (areaEspaco > 0),
    dinheiroCaixa REAL NOT NULL,
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca
);

create table Bengaleiro (
    idBengaleiro INTEGER PRIMARY KEY,
    areaEspaco REAL CHECK (areaEspaco > 0),
    nrMaxCasacos INTEGER NOT NULL CHECK (nrMaxCasacos > 0),
    precoCasaco REAL NOT NULL CHECK (precoCasaco >= 0),
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca    
);

create table Pista (
    idPista INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    areaEspaco REAL CHECK(areaEspaco > 0),
    generoMusica TEXT CHECK(generoMusica in ('funk', 'trance', 'house','90s', 'kizomba', 'reggaeton')), 
    residente INTEGER REFERENCES Artista UNIQUE,
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca,
    UNIQUE (nome, idDiscoteca)
);

create table Artista (
    idArtista INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    nrTelemovel INTEGER NOT NULL,
    cache INTEGER,
    tipo TEXT CHECK (tipo in ('convidado','residente'))
); 

create table Atuacao (
    idArtista INTEGER NOT NULL REFERENCES Artista,
    idPista INTEGER NOT NULL REFERENCES Pista,
    horaComeco TEXT NOT NULL,
    horaFim TEXT NOT NULL,
    duracao TEXT NOT NULL CHECK (duracao >= '00:30' AND duracao <= '04:00'),
    PRIMARY KEY (idArtista, idPista)
);

create table Bar (
    idBar INTEGER PRIMARY KEY,
    idPista INTEGER REFERENCES Pista
);

create table Bebida (
    nome TEXT NOT NULL,
    marca TEXT NOT NULL,
    stock INTEGER NOT NULL CHECK (stock > 50 AND stock < 2400),
    preco REAL NOT NULL,
    teorAlcoolico REAL NOT NULL CHECK (teorAlcoolico >= 0),
    CHECK ((teorAlcoolico < 1.2 AND preco <= 4) OR (teorAlcoolico >= 1.2 AND preco > 4 AND preco < 50)),
    PRIMARY KEY (nome, marca)
);

create table BarBebida (
    idBar INTEGER NOT NULL REFERENCES Bar,
    nome TEXT NOT NULL,
    marca TEXT NOT NULL,
    FOREIGN KEY (nome, marca) REFERENCES Bebida,
    PRIMARY KEY (idBar, nome, marca)
);

create table Funcionario (
    idFuncionario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    nrTelemovel INTEGER NOT NULL,
    BI INTEGER NOT NULL, 
    morada TEXT,   
    salario INTEGER NOT NULL CHECK (salario > 665),
    idDiscoteca INTEGER NOT NULL REFERENCES Discoteca,
    UNIQUE (BI,idDiscoteca)
);

create table Hierarquia (
    idSubalterno INTEGER REFERENCES Funcionario PRIMARY KEY,
    idGerente INTEGER NOT NULL REFERENCES Funcionario
);

create table StaffGeral(
    idStaff INTEGER REFERENCES Funcionario PRIMARY KEY
);

create table Seguranca (
    idSeguranca INTEGER REFERENCES Funcionario PRIMARY KEY,
    licenca INT NOT NULL UNIQUE
);

create table Bartender (
    idBartender INTEGER REFERENCES Funcionario PRIMARY KEY,
    nivelFormacao INTEGER NOT NULL CHECK (nivelFormacao >= 1 AND nivelFormacao <= 3)
);

create table LoungeStaffGeral (
    idStaff INTEGER REFERENCES StaffGeral,
    idLounge INTEGER REFERENCES Lounge,
    PRIMARY KEY (idStaff, idLounge)
);

create table CaixasStaffGeral (
    idStaff INTEGER REFERENCES Staff,
    idCaixa INTEGER REFERENCES CaixasPagamento,
    PRIMARY KEY (idStaff, idCaixa)
);

create table BengaleiroStaffGeral (
    idStaff INTEGER REFERENCES Staff,
    idBengaleiro INTEGER REFERENCES Bengaleiro,
    PRIMARY KEY (idStaff, idBengaleiro)
);

create table BarBartender (
    idBartender INTEGER REFERENCES Bartender,
    idBar INTEGER REFERENCES Bar,   
    PRIMARY KEY (idBartender, idBar)
);

create table PistaSegurança (
    idSeguranca INTEGER REFERENCES Seguranca,
    idPista INTEGER REFERENCES Pista,
    PRIMARY KEY (idSeguranca, idPista)
);
