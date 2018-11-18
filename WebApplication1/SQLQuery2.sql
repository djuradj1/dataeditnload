CREATE TABLE Proizvod (
    [Id]          INT  IDENTITY(1,1)      NOT NULL,
    [name]        NCHAR (20) NULL,
    [description] NCHAR (45) NULL,
    [category]    NCHAR (20) NULL,
    [factory]     NCHAR (25) NULL,
    [retailer]    NCHAR (20) NULL,
    [price]       NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

INSERT INTO Proizvod (name , description, category, factory, retailer, price) VALUES ('LG Monitor 22inch','Novi monitor rezolucije 1920x1080','Monitori','LG','Gigatron',132);
INSERT INTO Proizvod ( name , description, category, factory, retailer, price) VALUES ('HP LaserJet 1020','Stampac HP , stampa 2000 strana','Stampaci','Hewlett Packard','WinWin',99);
INSERT INTO Proizvod ( name , description, category, factory, retailer, price) VALUES ('HTC Lampa','lampa','Lampe','China Manufacture','Okov',31);
INSERT INTO Proizvod ( name , description, category, factory, retailer, price) VALUES ('Xiaomi batterija','Baterija kapaciteta 10000mAh','Gadgets','Xiaomi','Eko Petrol',12);
INSERT INTO Proizvod ( name , description, category, factory, retailer, price) VALUES ('Pionier','Zvucnicic jacine 200W','Zvucnici','Pionir Srbija','WinWin',232);

Drop table proizvod