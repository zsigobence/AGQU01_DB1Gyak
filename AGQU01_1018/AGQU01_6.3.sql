CREATE TABLE AGQU01.Tanfolyam(
    tkod NUMBER PRIMARY KEY, 
    ar INT, 
    tipus VARCHAR(30), 
    megnevezes VARCHAR(30)
);

CREATE TABLE AGQU01.Résztvevő(
    tajszám NUMBER PRIMARY KEY, 
    név VARCHAR(20),
    lakcim VARCHAR(40)
);

CREATE TABLE AGQU01.Részvétel(
    tanKod NUMBER, 
    reszKod NUMBER, 
    befizetés NUMBER(10), 
    FOREIGN KEY(tanKod) REFERENCES AGQU01.Tanfolyam(tkod), 
    FOREIGN KEY(reszKod) REFERENCES AGQU01.Résztvevő(tajszám)
);