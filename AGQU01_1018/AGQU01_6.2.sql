CREATE TABLE AGQU01.GYARTO(
    adoszam INT PRIMARY KEY, 
    nev VARCHAR(30) NOT NULL, 
    telephely VARCHAR(30), 
    irsz VARCHAR(4), 
    varos VARCHAR(40), 
    utca VARCHAR(100)
);

CREATE TABLE AGQU01.TERMEK(
    tkod INT PRIMARY KEY, 
    nev VARCHAR(50), 
    ear NUMERIC CHECK(ear>0), 
    gyarto INT, 
    FOREIGN KEY(gyarto) REFERENCES AGQU01.GYARTO(nev)
);

CREATE TABLE AGQU01.Egysegek(
    aru NUMERIC, 
    FOREIGN KEY(aru) REFERENCES AGQU01.TERMEK(tkod),
    db NUMERIC CHECK(db>0)
);

CREATE TABLE AGQU01.Komponens(
    termek NUMERIC, 
    alkatresz NUMERIC, 
    FOREIGN KEY(termek) REFERENCES AGQU01.TERMEK(tkod), 
    FOREIGN KEY(alkatresz) REFERENCES AGQU01.Alkatresz(akod)
);

CREATE TABLE AGQU01.Alkatresz(
    akod NUMERIC PRIMARY KEY, 
    nev VARCHAR(50)
);