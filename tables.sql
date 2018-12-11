DROP TABLE CDS;
DROP TABLE GAMES;
DROP TABLE BOOKS;
DROP TABLE PROVIDER;
alter session set nls_language='ENGLISH';
alter session set nls_date_format='DD-MON-YYYY'; 

CREATE TABLE CDS
(CD_ID int NOT NULL,
NAME VARCHAR2(100),
CALL_NUM VARCHAR2(100),
CATEGORY VARCHAR2(50),
MATERIAL_ID int,
PRIMARY KEY (CD_ID)
);

INSERT INTO CDS VALUES
(201, 'Pablo Picasso 1881-1973 : Çarmıha geriliş', 'N6853.P5.P112 VCD', 'Documentary', 201);
INSERT INTO CDS VALUES
(202, 'Henri Matisse 1839-1906 : Kralın hüznü', 'ND553.M37.H51 VCD', 'Documentary', 202);
INSERT INTO CDS VALUES
(203, 'The square', 'PN1997.2 .S783 2018 DVD', 'Drama', 203);
INSERT INTO CDS VALUES
(204, 'The snowman', 'PN1997.2 .S674 2018 DVD', 'Fiction', 204);
INSERT INTO CDS VALUES
(205, 'Happy death day', 'PN1997.2 .H252 2018 DVD', 'Horror', 205);
INSERT INTO CDS VALUES
(206, 'It', 'PN1997.2 .I882 2018 DVD', 'Horror', 206);
INSERT INTO CDS VALUES
(207, 'Cars 3', 'PN1997.5 .C37 2017 DVD',  'Animation', 207);
INSERT INTO CDS VALUES
(208, 'Inside out', 'PN1997.5 .I57 2016 DVD',  'Animation', 208);
INSERT INTO CDS VALUES
(209, 'The zookeepers wife', 'PN1997 .Z662 2017 DVD',  'Historical', 209);
INSERT INTO CDS VALUES
(210, 'Silence', 'PN1997.2 .S574 2017 DVD', 'Historical', 210);
INSERT INTO CDS VALUES
(211, 'Crimson peak', 'PN1997.2 .C752 2017 DVD', 'Fantasy', 211);
INSERT INTO CDS VALUES
(212, 'The dark tower', 'PN1997.2 .D372 2017 DVD', 'Fantasy', 212);
INSERT INTO CDS VALUES
(213, 'Pablo Picasso 1881-1973 : Çarmıha geriliş', 'N6853.P5.P113 VCD', 'Documentary', 213);
INSERT INTO CDS VALUES
(214, 'Happy death day', 'PN1997.2 .H253 2018 DVD', 'Horror', 214);
INSERT INTO CDS VALUES
(215, 'Inside out', 'PN1997.5 .I58 2016 DVD',  'Animation', 215);
INSERT INTO CDS VALUES
(216, 'Inside out', 'PN1997.5 .I59 2016 DVD',  'Animation', 216);
INSERT INTO CDS VALUES
(217, 'Crimson peak', 'PN1997.2 .C753 2017 DVD', 'Fantasy', 217);

CREATE TABLE GAMES
(GAME_ID int NOT NULL,
NAME VARCHAR2(100),
CALL_NUM VARCHAR2(100),
CATEGORY VARCHAR2(50),
MATERIAL_ID int,
PRIMARY KEY (GAME_ID)
);

INSERT INTO GAMES VALUES
(101, '007 James Bond: Goldfinger', 'GA790', 'Adventure', 101);
INSERT INTO GAMES VALUES
(102, 'BadPlots', 'GA880', 'Card', 102);
INSERT INTO GAMES VALUES
(103, 'POTUS: Battle Inside the Trump White House', 'GB290', 'Card', 103);
INSERT INTO GAMES VALUES
(104, 'Fever', 'GC220', 'Dice', 104);
INSERT INTO GAMES VALUES
(105, 'Greed', 'GA235', 'Dice', 105);
INSERT INTO GAMES VALUES
(106, 'Spiel', 'GA237', 'Math', 106);
INSERT INTO GAMES VALUES
(107, '4th corner', 'GB233',  'Maze', 107);
INSERT INTO GAMES VALUES
(108, 'The $128,000 Question Game', 'GA255',  'Memory', 108);
INSERT INTO GAMES VALUES
(109, '1, 2, 3, Papagei', 'GB295',  'Memory', 109);
INSERT INTO GAMES VALUES
(110, 'The $tock Exchange Game', 'GC230', 'Strategy', 110);
INSERT INTO GAMES VALUES
(111, 'Chess',  'GB90', 'Strategy', 111);
INSERT INTO GAMES VALUES
(112, 'Go',  'GC28', 'Strategy', 112);
INSERT INTO GAMES VALUES
(113, '007 James Bond: Goldfinger', 'GA791', 'Adventure', 113);
INSERT INTO GAMES VALUES
(114, '007 James Bond: Goldfinger', 'GA792', 'Adventure', 114);
INSERT INTO GAMES VALUES
(115, 'Chess',  'GB91', 'Strategy', 115);
INSERT INTO GAMES VALUES
(116, '4th corner', 'GB234',  'Maze', 116);

CREATE TABLE BOOKS
(BOOK_ID int NOT NULL,
AUTHOR VARCHAR2(100),
EDITION int,
LANGUAGE VARCHAR2(50),
CALL_NUM VARCHAR2(50),
TITLE VARCHAR2(100),
ISBN VARCHAR2(100),
PUBLISHER VARCHAR2(50),
CATEGORY VARCHAR2(50),
MATERIAL_ID int,
PRIMARY KEY (BOOK_ID)
);

INSERT INTO BOOKS VALUES
(1, 'Erdogan, Asli', 9, 'Turkish', 'PL248.E736 B573 2017', 'Bir delinin guncesi', '9789752893191', 'Istanbul : Everest', 'Literature', 1);
INSERT INTO BOOKS VALUES
(2, 'London, Jack', NULL, 'English', 'PS3523 .O46 A6 2010 EB', 'The call of the wild and selected stories', '9781775419587', '[Waiheke Island] : Floating Press', 'Fiction', 2);
INSERT INTO BOOKS VALUES
(3, 'Beecher, Donald', 1, 'Italian', 'PQ4233 .R46 2008', 'Renaissance comedy : the Italian masters', '9781442688988', 'Toronto : University of Toronto Press', 'Comedy', 3);
INSERT INTO BOOKS VALUES
(4, 'Schiller, Friedrich', NULL, 'German', 'PT2473 .R3 2010 EB', 'The robbers', '9781775419730', '[Waiheke Island] : Floating Press', 'Fiction', 4);
INSERT INTO BOOKS VALUES
(5, 'Ingram, Kevin', 1, 'English', 'DS135 .S7 C583 2009 EB', 'The Conversos and Moriscos in late medieval Spain and beyond', '9789047428978', 'Leiden ; Boston : Brill', 'History', 5);
INSERT INTO BOOKS VALUES
(6, 'Burg, Mary Ann', 3, 'English', 'RA790.5', 'The behavioral health specialist in primary care : skills for integrated practice', '9780826129888', 'New York, NY : Springer Publishing Company', 'Medicine', 6);
INSERT INTO BOOKS VALUES
(7, 'Green, Keith Evan', 2, 'English', 'NA2543 .T43 G69 2016 EB', 'Architectural robotics : ecosystems of bits, bytes, and biology', '9780262334211', 'Cambridge, Massachusetts : The MIT Press', 'Biology', 7);
INSERT INTO BOOKS VALUES
(8, 'Heinz, Matthew', NULL, 'English', 'HQ77.9 .H44 2016 EB', 'Entering transmasculinity : the inevitability of discourse', '9781783205691', 'Bristol, UK : Intellect', 'Science', 8);
INSERT INTO BOOKS VALUES
(9, 'Helvétius', 5, 'French', 'B2043 .A2 1981', 'Correspondance générale d Helvétius', '9781442673502', 'Toronto : University of Toronto Press', 'Philosophy', 9);
INSERT INTO BOOKS VALUES
(10, 'Marx, Karl', 3, 'English', 'HB501.M36 1990 V.3', 'Capital : a critique of political economy', '9780140445701', 'London ; New York, N.Y., USA : Penguin Books', 'Economics', 10);
INSERT INTO BOOKS VALUES
(11, 'Helvétius', 5, 'French', 'B2043 .A3 1981', 'Correspondance générale d Helvétius', '9781442673502', 'Toronto : University of Toronto Press', 'Philosophy', 11);
INSERT INTO BOOKS VALUES
(12, 'Ingram, Kevin', 1, 'English', 'DS135 .S7 C584 2009 EB', 'The Conversos and Moriscos in late medieval Spain and beyond', '9789047428978', 'Leiden ; Boston : Brill', 'History', 12);
INSERT INTO BOOKS VALUES
(13, 'Erdogan, Asli', 9, 'Turkish', 'PL248.E736 B574 2017', 'Bir delinin guncesi', '9789752893191', 'Istanbul : Everest', 'Literature', 13);
INSERT INTO BOOKS VALUES
(14, 'Erdogan, Asli', 9, 'Turkish', 'PL248.E736 B575 2017', 'Bir delinin guncesi', '9789752893191', 'Istanbul : Everest', 'Literature', 14);

CREATE TABLE PROVIDER
(PROVIDER_ID int NOT NULL,
CONTACT VARCHAR2(50),
NAME VARCHAR2(50),
PRIMARY KEY (PROVIDER_ID)
);

INSERT INTO PROVIDER VALUES
(1, 'ALIBRIS@GMAIL.COM', 'ALIBRIS');
INSERT INTO PROVIDER VALUES
(2, 'BOOKTOPIA@GMAIL.COM', 'BOOKTOPIA');
INSERT INTO PROVIDER VALUES
(3, 'HALF@GMAIL.COM', 'HALF');
INSERT INTO PROVIDER VALUES
(4, 'ANGUSROBERTSON@GMAIL.COM', 'ANGUS & ROBERTSON');
INSERT INTO PROVIDER VALUES
(5, 'BARNESNOBLE@GMAIL.COM', 'BARNES & NOBLE');
