CREATE TABLE Proizvod (
    [Id]          INT        NOT NULL,
    [name]        NCHAR (20) NULL,
    [description] NCHAR (45) NULL,
    [category]    NCHAR (20) NULL,
    [factory]     NCHAR (25) NULL,
    [retailer]    NCHAR (20) NULL,
    [price]       NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

INSERT INTO Proizvod (Id, name , description, category, factory, retailer, price) VALUES (1,'LG Monitor 22inch','Novi monitor rezolucije 1920x1080','Monitori','LG','Gigatron',132);
INSERT INTO Proizvod (Id, name , description, category, factory, retailer, price) VALUES (2,'HP LaserJet 1020','Stampac HP , stampa 2000 strana','Stampaci','Hewlett Packard','WinWin',99);
INSERT INTO Proizvod (Id, name , description, category, factory, retailer, price) VALUES (3,'HTC Lampa','lampa','Lampe','China Manufacture','Okov',31);
INSERT INTO Proizvod (Id, name , description, category, factory, retailer, price) VALUES (4,'Xiaomi batterija','Baterija kapaciteta 10000mAh','Gadgets','Xiaomi','Eko Petrol',12);
INSERT INTO Proizvod (Id, name , description, category, factory, retailer, price) VALUES (5,'Pionier','Zvucnicic jacine 200W','Zvucnici','Pionir Srbija','WinWin',232);

select * from Proizvod;

delete from Proizvod where Id = 1;

Drop table Proizvod;