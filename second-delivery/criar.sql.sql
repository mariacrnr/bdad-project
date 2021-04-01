PRAGMA foreign_keys = on;

.mode columns
.headers on
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

create table Pessoa (
    idPessoa INTEGER PRIMARY KEY,
    nome TEXT,
    idade INTEGER,
    nrTelemovel INTEGER
);

create table Discoteca (
    idDiscoteca INTEGER PRIMARY KEY,
    nome TEXT,
    localizacao TEXT,
    proprietário TEXT,
    areaTotal FLOAT
);

create table Membro (
    idPessoa INTEGER REFERENCES Pessoa,
    idDiscoteca INTEGER REFERENCES Discoteca,
    nrMembro INTEGER,
    tipo TEXT, -- Ter em conta restrição aqui
    PRIMARY KEY (idPessoa, idDiscoteca)
);

create table Reserva (
    idReserva INTEGER PRIMARY KEY,
    dia TEXT, -- mudei de data para dia aqui 
    hora TEXT,
    nrGarrafas INTEGER,
    nrSofas INTEGER,
    idPessoa INTEGER REFERENCES Pessoa -- Não devia ser REFERENCES Membro aqui?
);

create table Lounge (
    idLounge INTEGER PRIMARY KEY,
    areaEspaco FLOAT,
    idDiscoteca INTEGER REFERENCES Discoteca
);

create table ReservaLounge (
    idReserva INTEGER REFERENCES Reserva,
    idLounge INTEGER REFERENCES Lounge,
    PRIMARY KEY (idReserva, idLounge)
);

create table CaixasPagamento (
    idCaixa INTEGER PRIMARY KEY,
    areaEspaco FLOAT,
    dinheiroCaixa FLOAT,
    idDiscoteca INTEGER REFERENCES  Discoteca
);

create table Bengaleiro (
    idBengaleiro INTEGER PRIMARY KEY,
    areaEspaco FLOAT,
    nrMaxCasacos INTEGER,
    -- podiamos por a quantidade atual de casacos depositados
    precoCasaco FLOAT,
    idDiscoteca INTEGER REFERENCES Discoteca    
);

create table Pista (
    idPista INTEGER PRIMARY KEY,
    nome TEXT,
    areaEspaco FLOAT,
    generoMusica TEXT, -- Ter em conta restrição aqui
    residente INTEGER REFERENCES Artista,
    idDiscoteca INTEGER REFERENCES Discoteca
);

create table Artista (
    idArtista INTEGER PRIMARY KEY,
    nome TEXT,
    nrTelemovel INTEGER,
    cache INTEGER,
    tipo -- wtf is this? 
); 

create table Atuacao (
    idArtista INTEGER REFERENCES Artista,
    idPista INTEGER REFERENCES Pista,
    horaComeco TEXT,
    horaFim TEXT,
    duracao INTEGER
);

create table Bar (
    idBar INTEGER PRIMARY KEY,
    idPista INTEGER REFERENCES Pista
);

create table Bebida (
    nome TEXT,
    marca TEXT,
    stock INTEGER, -- restriçao aqui
    preco FLOAT, -- restriçao aqui
    teorAlcoolico FLOAT,
    PRIMARY KEY (nome, marca)
);

create table BarBebida (
    idBar INTEGER REFERENCES Bar,
    nomeBebida TEXT,
    marcaBebida TEXT,
    PRIMARY KEY (idBar, nomeBebida, marcaBebida),
    FOREIGN KEY (nomeBebida, marcaBebida) REFERENCES Bebida
);

create table Funcionario (
    idFuncionario INTEGER PRIMARY KEY,
    nome TEXT,
    BI TEXT, -- text?
    morada TEXT,
    nrTelemovel INTEGER,
    salario FLOAT,
    idDiscoteca INTEGER REFERENCES Discoteca
);

create table Hierarquia (
    idGerente INTEGER REFERENCES Funcionario,
    idSubalterno INTEGER REFERENCES Funcionario PRIMARY KEY
);

create table StaffGeral(
    idStaff INTEGER REFERENCES Funcionario PRIMARY KEY
)

create table Seguranca (
    idSeguranca INTEGER REFERENCES Funcionario PRIMARY KEY,
    licença INTEGER -- unique key?
);

create table Bartender (
    idBartender INTEGER REFERENCES Funcionario PRIMARY KEY,
    nivelFormacao INTEGER
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
    idBar INTEGER REFERENCES Bar,
    idBartender INTEGER REFERENCES Bartender,
    PRIMARY KEY (idBar, idBartender)
);

create table SegurancaPista (
    idSeguranca INTEGER REFERENCES Seguranca,
    idPista INTEGER REFERENCES Pista,
    PRIMARY KEY (idSeguranca, idPista)
);