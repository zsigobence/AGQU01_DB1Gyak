CREATE TABLE AGQU01.termekek (
    tkod INT PRIMARY KEY, 
    nev VARCHAR(50) NOT NULL, 
    ear INT CHECK (EAR > 0), 
    kategoria CHAR(20)
);

INSERT INTO AGQU01.termekek VALUES(1, 'lapát', 2000, 'K1');
INSERT INTO AGQU01.termekek VALUES(2, 'seprű', 4000, 'K1');
INSERT INTO AGQU01.termekek VALUES(3, 'mosogató gél', 1500, 'K1');
INSERT INTO AGQU01.termekek VALUES(4, 'szappan', 1000, 'K1');
INSERT INTO AGQU01.termekek VALUES(5, 'pohár', 2400, 'K1');

INSERT INTO AGQU01.termekek VALUES(1, 'lapát', 2000, 'K1');       //már létezik
INSERT INTO AGQU01.termekek VALUES(8, 'NULL', 4000, 'K1');        //a név nem lehet üres 
INSERT INTO AGQU01.termekek VALUES(15, 'pohár A', 0, 'K3');       //az ár nem nagyobb, mint nulla
INSERT INTO AGQU01.termekek VALUES(15, 'pohár A', 20, 'K3');      //hibás konstans a szövegben
INSERT INTO AGQU01.termekek VALUES(15, 'pohár A', '20', 'K3');    //hibás konstans a számban