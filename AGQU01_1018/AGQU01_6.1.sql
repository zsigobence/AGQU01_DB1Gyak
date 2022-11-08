CREATE TABLE AGQU01.Gyarto(
    adoszam INT PRIMARY KEY,
    nev CHAR(30) NOT NULL,
    telephely VARCHAR(30) NOT NULL
);

CREATE TABLE AGQU01.Termek(
    tkod INT PRIMARY KEY,
    nev CHAR(50) NOT NULL,
    ear NUMERIC CHECK(ear > 0) NOT NULL,
    gyarto CHAR(30) NOT NULL,
    FOREIGN KEY(gyarto) REFERENCES AGQU01.Gyarto(nev)
);