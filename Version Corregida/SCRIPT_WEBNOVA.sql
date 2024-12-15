DROP DATABASE IF EXISTS WEBNOVA;

CREATE DATABASE WEBNOVA;
 
 USE WEBNOVA;
 
 DROP TABLE IF EXISTS CLIENTE;
 
CREATE TABLE CLIENTE (
    ID_CLIENTE INT AUTO_INCREMENT,
    NOMBRE_USER VARCHAR(40) NOT NULL UNIQUE,
    CORREO_ELECTRONICO VARCHAR(40) NOT NULL UNIQUE,
    RUN VARCHAR(10) NOT NULL UNIQUE CHECK (RUN REGEXP '^[0-9]+-[0-9kK]$'), -- Validación RUN
    NOMBRES VARCHAR(80) NOT NULL,
    APELLIDOS VARCHAR(60) NOT NULL,
    EDAD INT NOT NULL CHECK (EDAD > 0), 
    TELEFONO VARCHAR(15) NOT NULL, 
    DIRECCION VARCHAR(120),
    CONTRASENIA VARCHAR(255) NOT NULL,
    FECHA_REGISTRO TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (ID_CLIENTE)
);

INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES('RASH', 'RASH.26@gmail.com', '25679256-8', 'Cristhoper Jose', 'Leal Leal', 23, '+56933402506', 'calle sin salida 1234', 'RASH.SINSALIDA');

INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ("Nov","sit.amet@aol.couk","1932680-2","Stephanie","Mcdowell",21,"+56974345369","Ap #680-6089 Aliquam Av.","CKG35FOV8YH"),
  ("Jugador cuántico8","luctus@google.couk","33612682-7","Colleen","Hammond",21,"+56919685160","P.O. Box 489, 9637 Vivamus St.","WGB54MQN4LE"),
  ("Río Místico42 4","nam.nulla@outlook.ca","37306157-3","Malcolm","Graham",66,"+56938110868","8008 Ipsum. Road","NBS47LKD7TT"),
  ("Caminar celestial","pharetra.felis.eget@yahoo.net","25765479-6","Farrah","Mays",37,"+56958561402","Ap #486-2949 Felis, Avenue","VSJ01JGT7UZ"),
  ("Zorro Trueno17","nulla.interdum.curabitur@protonmail.net","837877-0","Marshall","Wright",53,"+56917456447","985-5325 Malesuada Rd.","KEI31RDV5UB"),
  ("Silencioso","metus.sit.amet@yahoo.ca","10982835-1","Nehru","Patton",52,"+56901507466","P.O. Box 833, 8609 Vel Street","OFL31IMN0XN"),
  ("Soñador eléctrico","maecenas@hotmail.edu","7750623-3","Lacy","Rollins",79,"+56986341333","243 Ligula. Road","YLR55LGO1RQ"),
  ("Nómada cósmico77","orci@yahoo.edu","44102373-1","Montana","Camacho",45,"+56986483664","898-4889 Lectus. St.","ULT48INN9OC"),
  ("Escarchado","diam@yahoo.com","32797948-5","Clark","Campbell",41,"+56941566711","Ap #645-3863 Lacinia. Rd.","BWB68OFE1WV"),
  ("Halcón Dorado31","nam.tempor.diam@outlook.org","38922634-3","Quinn","Rosa",58,"+56965518563","9588 Aliquam Av.","HFH82UHW8VV");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ("Atrapasueños54","varius.ultrices@icloud.ca","49277920-2","Raven","Santos",38,"+56911162578","861-5163 Sagittis St.","VVQ34RUN7DE"),
  ("UrbanSe","enim.suspendisse@aol.net","10356274-0","Charity","Castillo",71,"+56949743378","766-3643 Cubilia St.","HKN61NQP1UV"),
  ("Caballero estrellado84","erat.volutpat@hotmail.com","34308362-9","Hunter","Perkins",7,"+56986349303","Ap #214-5363 Elit, Rd.","DCP16LCS6FS"),
  ("En","congue@yahoo.org","37949596-6","Finn","Hutchinson",31,"+56984600480","P.O. Box 807, 9083 Fringilla Ave","OYQ43VYG1ER"),
  ("Sistema solar E","ipsum.primis.in@google.ca","22231382-1","Victor","Hurley",91,"+56928124866","532-8806 Penatibus Rd.","VEL52YSB0WQ"),
  ("Marea Esmeralda02","mauris.suspendisse@aol.ca","1986789-7","Baxter","Owens",20,"+56960648264","Ap #823-5169 Consectetuer, Rd.","FTP34DCS6GX"),
  ("Radiante","purus.sapien@protonmail.net","25404929-8","John","Weber",74,"+56905732548","Ap #415-7797 Vel St.","IKW64ICB5MO"),
  ("TerciopeloMística16","magna@yahoo.com","13255729-2","Leonard","Drake",72,"+56977215278","Ap #472-3816 Orci. Road","SLF87IJL2CG"),
  ("Aventurero enérgico99","interdum.ligula@google.couk","3457690-4","Montana","Graham",43,"+56978568101","446-6210 Metus. Ave","YOO42DBW0CO"),
  ("Céfiro D","elit.nulla.facilisi@outlook.couk","30999845-6","Driscoll","Mcclure",45,"+56956311357","1297 Pede. St.","VFM55GXE0CK");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Helada',"semper.pretium@icloud.edu","16797128-8","Melinda","Thomas",52,"+56951769256","877-8738 Risus, Rd.","XGJ21DPC7MI"),
  ('Gema oculta46',"ipsum.cursus.vestibulum@hotmail.couk","751851-K","Hall","Atkinson",69,"+56944837068","P.O. Box 217, 2773 Sit Avenue","DNQ08FUD5MR"),
  ('InfinityQuest33 24',"ac@outlook.net","36831708-K","Jade","Duke",46,"+56981688931","Ap #536-8158 Natoque Rd.","BWQ53CSC0PU"),
  ('AzureEcho22',"egestas.a.dui@yahoo.com","44996294-K","William","Molina",99,"+56947742868","Ap #463-4846 Suspendisse St.","SBS27GRF6JQ"),
  ('Serenata',"mauris.sapien@hotmail.com","40198869-6","Hedda","Conley",34,"+56984680455","Ap #919-8268 Bibendum Ave","FKR64KIE7MY"),
  ('Pasión viajes míticos',"laoreet.lectus.quis@icloud.com","18418138-K","Alexandra","Ingram",32,"+56982239347","901-2452 In Avenue","IKO45DYJ6NR"),
  ('Rebelde lunar39',"quis.diam.luctus@aol.edu","81915-8","Inga","Potter",69,"+56994466145","1310 Ut Avenue","HYV44FJG5FJ"),
  ('CuánticoSpr',"sapien@outlook.net","32985720-4","Harding","Mccoy",3,"+56937484139","202-4616 Eget Ave","FUP53XLR0UT"),
  ('Horizonte Radiante',"eu@outlook.net","3267451-8","Ann","Haynes",96,"+56931447485","474-334 Nisi Rd.","WUD74QJC8ZD"),
  ('Transmisión exterior',"scelerisque@google.org","30826633-8","Kadeem","Holman",18,"+56963668298","Ap #711-4632 Nulla Street","YJQ44FLZ7FC");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Viajero cósmico',"scelerisque.mollis.phasellus@aol.net","5402224-7","Lacota","Becker",63,"+56976776354","271-4209 Non St.","COP58IIB2EX"),
  ('Místico Wh',"phasellus.at@outlook.couk","45766161-4","Brody","Neal",55,"+56904986351","Ap #853-7976 Est. Rd.","VEJ58DPT2MP"),
  ('Ele',"mollis.nec.cursus@icloud.com","15604791-0","Callum","Lynch",3,"+56984417903","6781 Lacus. Rd.","PEQ87LFK8PW"),
  ('Phoe',"massa@yahoo.com","3956325-8","Ishmael","Alston",10,"+56911316676","P.O. Box 751, 4484 Interdum Ave","WVI78OZP9YJ"),
  ('Sil',"non@yahoo.net","12579603-6","Noelle","Mullen",93,"+56915824404","156-126 Orci. Road","YCD88TFV5MI"),
  ('Urbano',"velit.aliquam.nisl@yahoo.org","28849735-4","Guy","Jones",19,"+56982101050","Ap #929-8054 Eros. Avenue","KGW99SNS6XW"),
  ('Estacion',"elementum.purus.accumsan@protonmail.edu","48690561-1","Jeremy","Fletcher",67,"+56952279460","657-5219 Non St.","MMQ46UTK4LR"),
  ('Ve',"dui.fusce.diam@icloud.com","28275252-2","Stacey","Neal",90,"+56974223327","4418 Mus. St.","UOM74GHA9BM"),
  ('Sábalo',"neque.vitae.semper@icloud.ca","14475125-6","Rachel","Poole",44,"+56984645459","Ap #191-5808 Proin Street","EPO77ZIQ3KJ"),
  ('Celeste',"quis.massa.mauris@icloud.com","27914943-2","Eric","Wilkerson",11,"+56957831543","Ap #455-6176 Nibh. Ave","GOD70NTD1WX");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Susurro',"nunc@yahoo.org","48679261-2","Lana","Riley",42,"+56951135615","Ap #636-6688 Et, Rd.","ENJ56XWR9PS"),
  ('Océano',"nec@google.org","32390170-8","Charde","Copeland",89,"+56973165796","941-4966 Egestas. Avenue","XQX04TOH2KM"),
  ('Twi',"nec.euismod@aol.org","2011762-1","Jamal","Bentley",38,"+56978255642","118-2407 Quam, St.","FJL18SJT6VU"),
  ('Dre',"in.ornare.sagittis@icloud.net","21660896-8","Hiram","Schultz",28,"+56956617741","3747 Vitae St.","EKT81NCT2UG"),
  ('Gil',"vulputate@yahoo.com","17751691-0","Aiko","Moran",22,"+56997297472","Ap #812-3142 Aliquet Ave","VHF54GDF4SI"),
  ('Roronoa',"vehicula@icloud.couk","14683106-0","Tamara","Villarreal",18,"+56958949897","883-791 Eu, Street","WKM87XDV3YV"),
  ('Bailarina etérea14',"phasellus@google.org","44351899-1","Connor","Gilmore",77,"+56974457478","414-819 Urna. Avenue","HXG71EXS3OF"),
  ('Secreto',"sapien.cras@google.edu","21364791-1","Castor","Dunn",28,"+56985081125","8726 Felis Street","FRY52XFW3GI"),
  ('Viajero del tiempo',"tellus.sem@outlook.couk","726856-4","Addison","Hess",92,"+56976702376","448-8568 Mauris. St.","ISC76YSC0HF"),
  ('Armonía',"integer@aol.couk","25138311-1","Macon","Lynn",22,"+56937054774","281-858 Imperdiet St.","XPZ40FOX2BR");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Nómada neón',"nibh.dolor@yahoo.edu","37899855-7","Conan","Holcomb",5,"+56933344812","Ap #405-9698 Lorem Ave","FKV55PSE3BG"),
  ('Resplandor de ascuas',"a.malesuada@hotmail.edu","47601275-9","Kamal","Coffey",51,"+56958678318","436-9769 Magna. Rd.","KSH67PYT1LE"),
  ('Co',"placerat.orci@outlook.org","5783168-5","Aquila","Burt",15,"+56945064778","661-7998 Erat. Street","ALL74UFD9EF"),
  ('Explorador fabuloso',"vulputate.posuere.vulputate@aol.ca","30907723-7","Holly","Dyer",88,"+56971563736","Ap #965-5420 Augue. St.","JQO05QYM5YN"),
  ('MaravillosoW',"pede.sagittis@icloud.net","47317428-6","Jessica","Woodard",80,"+56942073884","Ap #675-6848 Non Avenue","QOU18DBH1JI"),
  ('Sueños eco',"mauris.sapien@aol.edu","37970910-9","Baxter","Donaldson",70,"+56953342585","P.O. Box 762, 7716 Dictum Avenue","OEW17XES7AM"),
  ('Cel',"neque.tellus.imperdiet@protonmail.com","42844980-0","Libby","Mcmahon",74,"+56926823833","2898 Felis St.","HFA61YBD6BD"),
  ('EnigmaVoyager',"accumsan@hotmail.edu","22425940-9","Kylan","Greer",58,"+56966030724","175-7878 Dictum Street","HCB54QFM2GF"),
  ('Llamarada solar85',"adipiscing.enim.mi@protonmail.net","15719280-9","Patience","David",89,"+56948250275","6723 Mauris Ave","GNJ37CHT6PF"),
  ('Polvo de estrellas',"sociis@protonmail.com","44372239-4","Carolyn","Booker",36,"+56981151725","Ap #884-7740 Lectus Avenue","PVQ42DHL8HY");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Terciopelo',"metus.vitae.velit@hotmail.edu","39916184-3","Price","Beard",7,"+56965871176","P.O. Box 492, 4408 Lacus. St.","PPW54SNG9GP"),
  ('Pionero místico26',"vitae.orci@yahoo.edu","9374823-9","Brooke","Beasley",32,"+56912950713","5680 Neque St.","LBT46JGU8SW"),
  ('Estrella errante64',"ac.orci.ut@protonmail.com","4336867-2","Giacomo","Castillo",61,"+56916888754","804-5263 Risus, St.","SFW73XLH1BO"),
  ('Nómada etéreo23',"in.tincidunt@aol.net","782875-6","Eric","Grant",50,"+56978024763","Ap #722-5331 Nascetur Rd.","WUN68WFG4UN"),
  ('Viajero fantasma19',"proin@google.org","18420249-2","Henry","Osborn",49,"+56940733675","5843 Vel St.","ZXO27TVO9KW"),
  ('SueñoNosotros',"pellentesque@icloud.com","10931555-9","Vera","Reeves",4,"+56987860694","824-4018 Cras St.","QWN60HZC9DC"),
  ('Horizontes Infinitos76',"pellentesque@yahoo.ca","31865266-K","Barrett","Gilbert",28,"+56983733371","582-3609 Etiam Avenue","UMP11SNF8QE"),
  ('Crepúsculo Ninja',"fringilla@outlook.edu","50400975-0","Lynn","Fox",63,"+56973467122","3755 Natoque Avenue","SHL13PKG6PM"),
  ('Ondulación mística',"mauris.nulla@aol.net","1997156-2","Shay","Franco",32,"+56918881034","188-6522 Laoreet, Ave","BHJ58RRD4TX"),
  ('BrillanteW',"accumsan@icloud.org","48895946-8","Illana","Barnes",3,"+56974472494","759-6425 Sit Rd.","JOV32MGS4PL");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Vegeta',"sit.amet.risus@outlook.com","1224562-9","Inez","Howard",67,"+56903212481","Ap #633-8058 Nec Rd.","EYW16HML3CG"),
  ('Eclipse urbano30',"et.ultrices@yahoo.edu","34442117-K","Jonah","Owens",59,"+56925824771","7960 Ullamcorper. Ave","QWS77DIX7NN"),
  ('Oculto',"duis.ac@yahoo.net","4271133-0","Henry","Holcomb",69,"+56985296702","P.O. Box 593, 8092 Laoreet Rd.","BXT21MPH1XG"),
  ('soñadorah',"aptent.taciti@outlook.net","49490671-6","Karyn","Witt",55,"+56937252474","1507 Cras Street","CYD03HFV8WK"),
  ('SilenciosoP',"in@aol.ca","18137557-4","Harding","Austin",87,"+56958712418","P.O. Box 205, 9493 Sed Avenue","ARD67DBB9DD"),
  ('HeladoBr',"dignissim@protonmail.org","653687-5","Rinah","Mann",50,"+56913632638","179-8433 Dolor Ave","WTQ09UCD2FJ"),
  ('Gol',"ipsum.phasellus.vitae@outlook.net","38644297-5","Barclay","Flynn",61,"+56933478719","2885 Proin St.","OCR23KQV1WT"),
  ('LunarEc',"nulla@aol.org","19547411-7","Winter","Garcia",23,"+56911155511","Ap #183-7907 Imperdiet Ave","XKU77VFH2WL"),
  ('Sir',"diam.duis@icloud.com","154963-4","Callum","Frazier",60,"+56928478832","Ap #642-2123 Libero Ave","CJS17XDN6YG"),
  ('Encantar',"dolor.dapibus.gravida@yahoo.ca","23469871-0","Mira","Palmer",3,"+56978616244","Ap #136-3661 In St.","RVN35SQG2VZ");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Explosión cósmica',"magna.nam.ligula@yahoo.ca","2088344-8","Ezra","Houston",10,"+56919134814","Ap #372-8501 Urna. Street","EHH31VFE2GL"),
  ('Ippo',"orci.quis@hotmail.couk","3594392-7","Helen","Melton",83,"+56993427966","446-1574 Ipsum Ave","UTL71VBB0PX"),
  ('Mi soñadora',"ac.sem.ut@aol.com","18608448-9","Anastasia","Reilly",20,"+56976753933","463-1443 Magna. Street","VBT55DWY7CC"),
  ('Takamura',"risus@aol.com","4595889-2","Aristotle","Norman",39,"+56993338879","P.O. Box 891, 9329 Lacus. St.","CHP96UNJ6KZ"),
  ('Chamán urbano',"ornare.tortor@hotmail.net","42965692-3","Raja","Dejesus",18,"+56972632413","Ap #121-6554 Mus. St.","OEO73RPJ8EI"),
  ('Errante',"vestibulum.ut@hotmail.com","3624388-0","Kessie","Barlow",100,"+56918174634","954-3812 Ac St.","IDP34QNW9ZU"),
  ('Mis',"egestas.fusce@protonmail.couk","33258778-1","Thor","Fuentes",66,"+56958386546","P.O. Box 559, 5803 Id, Road","EDY97UME9QN"),
  ('Este',"gravida.nunc@hotmail.net","3919993-9","Lee","Bryant",51,"+56965841849","1036 Auctor, Av.","HQD63GNN7CU"),
  ('Elec',"nulla@google.ca","44980373-6","Fleur","Meyer",92,"+56929463292","P.O. Box 890, 9446 Elit Avenue","CIO97HSY7WD"),
  ('Rock',"sit.amet@protonmail.com","32397710-0","Raya","Garza",12,"+56915389214","1048 Purus. Avenue","JPH27JYL8HM");
  
INSERT INTO CLIENTE(NOMBRE_USER, CORREO_ELECTRONICO, RUN, NOMBRES, APELLIDOS, EDAD, TELEFONO, DIRECCION, CONTRASENIA)
VALUES
  ('Monkey',"justo@protonmail.net","35204156-4","Daryl","Rutledge",97,"+56977895524","P.O. Box 670, 2705 Morbi Road","RFI55MCL9TZ"),
  ('Sereno',"eu.ultrices.sit@aol.net","27692621-7","Hannah","Gilmore",27,"+56914361775","P.O. Box 583, 4646 Libero Av.","OKJ84AKK5VJ"),
  ('Explorador sombras',"sed@aol.org","17241642-K","Hayley","Justice",99,"+56982396161","P.O. Box 121, 156 Neque. St.","OBY88CHD3ML"),
  ('Misterio',"aliquet@icloud.org","1847199-K","Norman","Marshall",63,"+56986735152","Ap #633-1000 Vulputate, Rd.","JUT46JMT5KL"),
  ('Doradol',"libero.lacus@hotmail.edu","49566460-0","Talon","Watson",73,"+56955763156","318-3499 Sed, Avenue","FRN51EEO3AS"),
  ('Sueño',"ullamcorper@outlook.edu","32114321-0","Salvador","Hunter",60,"+56932269854","Ap #399-7145 Quam Av.","GLR76KCB2DV"),
  ('Vibrante',"ultrices.duis@google.org","15318332-5","Ezra","Griffin",63,"+56937552487","413-3419 Tristique Ave","GDS16EXN0TB"),
  ('Ph cósmico',"ac@yahoo.org","7466982-4","Scarlett","Cruz",100,"+56932455662","984-4349 Maecenas Av.","IVJ42ELV1PI"),
  ('Ussop',"luctus.felis.purus@google.couk","16562248-0","Calvin","Dillard",3,"+56975975632","3766 Ridiculus Ave","PUZ67IBA8TT"),
  ('Zoro',"nec.mauris@google.org","25448731-7","Connor","Massey",73,"+56907377751","311-9819 Etiam Ave","LJK14TDI2NT");

 CREATE TABLE ADMIN (
	ID_ADMIN INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_COMPLETO VARCHAR(250),
    USER_NAME VARCHAR(50) NOT NULL UNIQUE,
	CORREO_ELECTRONICO VARCHAR(40),
    TELEFONO VARCHAR(15) NOT NULL, 
	CONTRASENIA VARCHAR(255) NOT NULL,
	FECHA_REGISTRO TIMESTAMP NOT NULL DEFAULT (NOW())
);

CREATE TABLE PROVEEDORES (
	ID_PROVEEDOR INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_COMPLETO VARCHAR(250),
	ID_ADMIN INT,
    CORREO_ELECTRONICO VARCHAR(40),
	TELEFONO VARCHAR(15) NOT NULL, 
    DIRECCION VARCHAR(120),
    FECHA_REGISTRO TIMESTAMP NOT NULL DEFAULT (NOW()),
	FOREIGN KEY (ID_ADMIN) REFERENCES ADMIN(ID_ADMIN)
    
);


 DROP TABLE IF EXISTS CATEGORIAS;

CREATE TABLE CATEGORIAS (
    ID_CATEGORIA INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_CATEGORIA VARCHAR(100) NOT NULL,
    DESCRIPCION_CATEG VARCHAR(250)
); 

 DROP TABLE IF EXISTS PRODUCTOS;
 
 CREATE TABLE PRODUCTOS (
    ID_PRODUCTO INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_PRODUCTO VARCHAR(100) NOT NULL,
    ID_PROVEEDOR INT,
	DESCRIPCION VARCHAR(250),
    PRECIO DECIMAL(10, 2) NOT NULL,
    STOCK INT NOT NULL,
    ID_CATEGORIA INT,
    FECHA_AGREGADO TIMESTAMP NOT NULL DEFAULT (NOW()),
    FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS(ID_CATEGORIA),
    FOREIGN KEY (ID_PROVEEDOR) REFERENCES PROVEEDORES(ID_PROVEEDOR)
);

DROP TABLE IF EXISTS PEDIDOS;

CREATE TABLE PEDIDOS (
    ID_PEDIDO INT AUTO_INCREMENT PRIMARY KEY,
    ID_CLIENTE INT,
    FECHA_PEDIDO TIMESTAMP NOT NULL DEFAULT NOW(),
    ESTADO_PEDIDO ENUM('PENDIENTE', 'ENVIADO', 'ENTREGADO', 'CANCELADO') DEFAULT 'PENDIENTE',
    TOTAL DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);

DROP TABLE IF EXISTS DETALLE_PEDIDOS;

CREATE TABLE DETALLE_PEDIDOS (
    ID_DETALLE INT AUTO_INCREMENT PRIMARY KEY,
    ID_PEDIDO INT,
    ID_PRODUCTO INT,
    CANTIDAD INT NOT NULL CHECK (CANTIDAD > 0), 
    PRECIO_UNITARIO DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_PEDIDO) REFERENCES PEDIDOS(ID_PEDIDO),
    FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS(ID_PRODUCTO),
    INDEX(ID_PEDIDO),
    INDEX(ID_PRODUCTO)
);

DROP TABLE IF EXISTS REVIEWS;

CREATE TABLE REVIEWS (
    ID_REVIEW INT AUTO_INCREMENT PRIMARY KEY,
    ID_PRODUCTO INT,                      
    ID_CLIENTE INT,                            
    RATING INT CHECK (RATING BETWEEN 1 AND 5),       
    COMMENT VARCHAR(300),                                    
    FECHA_REVIEW TIMESTAMP NOT NULL DEFAULT (NOW()),
    STATUS ENUM('pending', 'approved', 'rejected') DEFAULT 'pending',
    FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS(ID_PRODUCTO),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);

DROP TABLE IF EXISTS CARRITO;

CREATE TABLE CARRITO (
    ID_CARRITO INT AUTO_INCREMENT PRIMARY KEY,  
    ID_CLIENTE INT,                     
    ID_PRODUCTO INT,                     
    QUANTITY INT NOT NULL CHECK (QUANTITY > 0), 
    FECHA_REGISTRO TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS(ID_PRODUCTO),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);

DROP TABLE IF EXISTS PAGOS;

CREATE TABLE PAGOS (
    ID_PAGO INT AUTO_INCREMENT PRIMARY KEY,
    ID_CLIENTE INT,               
    TOTAL_PAGO DECIMAL(10, 2) NOT NULL,  
    METODO_PAGO ENUM('credit_card', 'paypal', 'bank_transfer') NOT NULL,
    FECHA_PAGO TIMESTAMP NOT NULL DEFAULT (NOW()),
    ESTADO_PAGO ENUM('pending', 'completed', 'failed') DEFAULT 'pending', 
    ID_TRANSACCION VARCHAR(255) UNIQUE NOT NULL,        
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);


 
