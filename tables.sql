DROP TABLE CDS;
DROP TABLE GAMES;
DROP TABLE BOOKS;
DROP TABLE PROVIDER;

DROP TABLE STAFF_TYPE;
DROP TABLE MEMBER_TYPE; 
DROP TABLE SHELF;
DROP TABLE KEYS;
DROP TABLE ROOM;

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

CREATE TABLE ROOM (
    ROOM_ID int NOT NULL,
    ROOM_NAME varchar(100) NOT NULL,
    FLOOR int NOT NULL,
    ROOM_TYPE varchar(100) NOT NULL,
    PRIMARY KEY (ROOM_ID)
);

INSERT INTO ROOM VALUES (1, 'AP', 2, 'Reading room');
INSERT INTO ROOM VALUES (2, 'QZ', 2, 'Reading room');
INSERT INTO ROOM VALUES (3, 'Studying room 1', 2, 'Reading room');
INSERT INTO ROOM VALUES (4, 'Studying room 3', 2 , 'Reading room');
INSERT INTO ROOM VALUES (5, 'Studying room 2', 2, 'Reading room');
INSERT INTO ROOM VALUES (6, 'Studying room 4',2, 'Reading room');
INSERT INTO ROOM VALUES (7, 'Main', 1, 'Multimedia');
INSERT INTO ROOM VALUES (8, 'Multimedia 1', 1, 'Multimedia');
INSERT INTO ROOM VALUES (9, 'Multimedia 2', 1, 'Multimedia');
INSERT INTO ROOM VALUES (10, 'Game Salon 1', 1, 'Gaming room');
INSERT INTO ROOM VALUES (11, 'Game Salon 2', 1, 'Gaming room');
INSERT INTO ROOM VALUES (12, 'Computer lab', 1, 'Multimedia');
INSERT INTO ROOM VALUES (13, 'Studying room 5', 2, 'Reading room');
INSERT INTO ROOM VALUES (14, 'Studying room 6', 2, 'Reading room');
INSERT INTO ROOM VALUES (15, 'Game Salon 3', 1, 'Gaming room');


CREATE TABLE KEYS (
    KEY_ID int NOT NULL,
    MATERIAL_ID int NOT NULL,
    ROOM_ID int NOT NULL,
    PRIMARY KEY (KEY_ID),
    FOREIGN KEY (MATERIAL_ID) REFERENCES MATERIAL(MATERIAL_ID)
);

INSERT INTO KEYS  VALUES (1, 1, 6);
INSERT INTO KEYS  VALUES (2, 5, 2);
INSERT INTO KEYS  VALUES (3, 7, 10);
INSERT INTO KEYS  VALUES (4, 3, 1);
INSERT INTO KEYS  VALUES (5, 7, 4);
INSERT INTO KEYS  VALUES (6, 6, 8);
INSERT INTO KEYS  VALUES (7, 2, 9);
INSERT INTO KEYS  VALUES (8, 4, 5);
INSERT INTO KEYS  VALUES (9, 9, 3);
INSERT INTO KEYS  VALUES (10, 12, 11);
INSERT INTO KEYS  VALUES (11, 15, 13);
INSERT INTO KEYS  VALUES (12, 14, 10);
INSERT INTO KEYS  VALUES (13, 11, 10);
INSERT INTO KEYS  VALUES (14, 13, 12);
INSERT INTO KEYS  VALUES (15, 15, 14);

CREATE TABLE SHELF (
    SHELF_ID int NOT NULL,
    CAPACITY int NOT NULL,
    CATEGORY varchar(100) NOT NULL,
    ROOM_ID int NOT NULL,
    PRIMARY KEY (SHELF_ID),
    FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID)
);

INSERT INTO SHELF VALUES (1, 10 , 'Drama', 1);
INSERT INTO SHELF VALUES (2, 10 , 'Math', 2);
INSERT INTO SHELF VALUES (3, 20 , 'History', 8);
INSERT INTO SHELF VALUES (4, 20 , 'Science', 2);
INSERT INTO SHELF VALUES (5, 20 , 'Romance', 14);
INSERT INTO SHELF VALUES (6, 20 , 'Action and Adventure', 13);
INSERT INTO SHELF VALUES (7, 50 , 'Art', 12);
INSERT INTO SHELF VALUES (8, 50 , 'Poetry', 5);
INSERT INTO SHELF VALUES (9, 50 , 'Comics', 2);
INSERT INTO SHELF VALUES (10, 80 , 'Journals', 11);
INSERT INTO SHELF VALUES (11, 80 , 'Computer Engineering', 7);
INSERT INTO SHELF VALUES (12, 20 , 'Electirical Engineering', 15);
INSERT INTO SHELF VALUES (13, 20 , 'Chemical Engineering', 9);
INSERT INTO SHELF VALUES (14, 20 , 'Biographies', 4);
INSERT INTO SHELF VALUES (15, 20 , 'Fantasy', 3);

CREATE TABLE MEMBER_TYPE (
    MEMBER_TYPE_ID int NOT NULL,
    MEMBER_TYPE varchar(100) NOT NULL,
    PRIMARY KEY (MEMBER_TYPE_ID )
);
INSERT INTO MEMBER_TYPE VALUES (1, 'Student');
INSERT INTO MEMBER_TYPE VALUES (2, 'Faculty members');
INSERT INTO MEMBER_TYPE VALUES (3, 'Researcher asistans');
INSERT INTO MEMBER_TYPE VALUES (4, 'Adminisrative staff');
INSERT INTO MEMBER_TYPE VALUES (5, 'Lecturer');
INSERT INTO MEMBER_TYPE VALUES (6, 'Part-Time Lecturer');
INSERT INTO MEMBER_TYPE VALUES (7, 'Professor');
INSERT INTO MEMBER_TYPE VALUES (8, 'Assistant Professor');
INSERT INTO MEMBER_TYPE VALUES (9, 'Associate Professor');
INSERT INTO MEMBER_TYPE VALUES (10, 'Rector');

CREATE TABLE STAFF_TYPE(
    STAFF_TYPE_ID int NOT NULL,
    STAFF_TYPE varchar(100) NOT NULL,
    PRIMARY KEY (STAFF_TYPE_ID)   
);

INSERT INTO STAFF_TYPE VALUES (1, 'Director');
INSERT INTO STAFF_TYPE VALUES (2, 'Teacher Librarian');
INSERT INTO STAFF_TYPE VALUES (3, 'Archivist');
INSERT INTO STAFF_TYPE VALUES (4, 'Systems & Reference Librarian');
INSERT INTO STAFF_TYPE VALUES (5, 'Web Services Team Leader & Reference Librarian');
INSERT INTO STAFF_TYPE VALUES (6, 'Information Resources Assistant');
INSERT INTO STAFF_TYPE VALUES (7, 'Collection Development Librarian & Reference Team Leader');
INSERT INTO STAFF_TYPE VALUES (8, 'Reference Librarian & Head of Circulation');
INSERT INTO STAFF_TYPE VALUES (9, 'Liaison Coordinator & Reference Librarian');
INSERT INTO STAFF_TYPE VALUES (10, 'Assistant of the Library');




