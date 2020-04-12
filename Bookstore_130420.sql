CREATE DATABASE bookstore;

CREATE TABLE Customers(
	ID  varchar(55) NOT NULL,
	Name   varchar(55),
	Password  varchar(55),
	Address  varchar(55),
	Email varchar(55),
	Phone varchar(55) NOT NULL,
    Primary key (ID)
);
  
INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('22','Nicki','Clifford','88 south lotts' ,'Nickiclif@hotmail.com','0876662222');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('23','Lyn','Russell' ,'87 Claremont ave' ,'lyna@hotmail.com','0877777222');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('24','fay','Allen' ,'88 Serpentine ave' ,'fay@hotmail.com','0877777111');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('25','Rose','Curry' ,'203 Glennmore road' ,'Rose@gmail.com','0871118930');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('26','Geraldine','Allen' ,'233 Farney Park','Geraldine@gmail.com','0868302810');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('27','Len','Allen' ,'15 Waterside road' ,'len@gmail.com','0871113940');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('29','Nick','Burridge' ,'333 bayside ave','NickB@gmail.com','00531118930');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('30','Paul','Weldon' ,'33 Golden Point road','Paulyweldon@gmail.com','0512003421 ');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('32','Ben','Freeney' ,'22 Bow lane' ,'BenFoom@gmail.com','0044 74738930');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('57','Mike','Start' ,'203 Kreuzberg ZOSSENER STR 33','start@gmail.com','0041118930');

INSERT INTO Customers (ID, Name, Password, Address, Email, Phone)
VALUES ('68','Cian','Ellis' ,'apt 301 tower street' ,'Scian@gmail.com','00647456575930');


CREATE TABLE Genres( 
	ID INT Identity(1,1) ,
	Name NVARCHAR(50),
	PRIMARY KEY(Name)
);

INSERT INTO Genres(Name)
VALUES ('Fantasy Fiction');
INSERT INTO Genres(Name)
VALUES ('Speculative Fiction');
INSERT INTO Genres(Name)
VALUES ('Science Fiction');
INSERT INTO Genres(Name)
VALUES ('Adventure Fiction');
INSERT INTO Genres(Name)
VALUES ('Crime Fiction');
INSERT INTO Genres(Name)
VALUES ('Literary Fiction');
INSERT INTO Genres(Name)
VALUES ('Horror Fiction');
INSERT INTO Genres(Name)
VALUES ('Historical Fiction');
INSERT INTO Genres(Name)
VALUES ('Mystery');
INSERT INTO Genres(Name)
VALUES ('Biography');








CREATE TABLE Cashiers (
	Name nvarchar(50) NOT NULL,
	Sid nvarchar(50) NOT NULL,
	Phone nvarchar(50) NOT NULL,
	Email nvarchar(50),
	Password nvarchar(50) NOT NULL,
	Primary key (Sid)
);

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Aysha Mathis', '0001', '0285729471', 'ayshamathis@mail.com', 'nono123');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Bonnie Jennings', '0002', '09284457238', 'bonniebonbon@mail.com', 'kewtiekewtie');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Imogen Robinson', '0003', '0941223412', 'imotional93@mail.com', '123123123');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Tom John', '0004', '01234567889', 'tomthecat1998@mail.com', 'blackferrari123');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Luis Terry', '0005', '0412314834', 'luisterry@mail.com', 'territerri22');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Claudia Glenn', '0006', '0987352533', 'glenn.claudia@mail.com','hello2000');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Connor Lynch', '0007', '0779231235', 'connorthebest88@mail.com', '12345678');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Lee Contreras', '0008', '0982712351', 'thecontreras@mail.com', 'hahahahaha');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Teddy Smith', '0009', '0252423142', 'teddy123@mail.com', 'yoyobig');

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Tiana Dorsay', '0010', '01623231625', 'tiana@mail.com', '99999999' );

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Fleur Chandler', '0011', '0821512312', 'fleur@mail.com', 'chandler' );

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Sienna Zuniga', '0012', '0555111333', 'sienna@mail.com', 'zunigasienna' );

INSERT INTO Cashiers (Name, Sid, Phone, Email, Password) 
VALUES ('Troy Molina', '0013', '0544222333', 'troytroy@mail.com', '987654321' );


CREATE TABLE Books(
	ISBN varchar(55) NOT NULL,
	Author_name varchar(55),
	Title_name varchar(55),
	Genre_name NVARCHAR(50),
	Publisher_name varchar(55),
	Published_year varchar(55),
	Retail_price varchar (55) NULL,
	Primary key (ISBN),
	CONSTRAINT FK_Genre FOREIGN KEY (Genre_name)
    REFERENCES Genres(Name),

);

INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)  
VALUES ('0-332-3233-4','J.R.R Tolken','The Hobbit', 'Fantasy Fiction', 'Allen & Unwin','1937' , '16.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-3113-443-4','J.R.R Tolken','The Lord of the Rings : Fellowship of the ring','Fantasy Fiction','Allen & Unwin','2000','26.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-113-473-8','J.R.R Tolken','The Lord of the Rings : The two towers','Fantasy Fiction','Allen & Unwin','2006', '20.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-993-433-3','J.R.R Tolken','The Lord of the Rings : Return of the King','Fantasy Fiction','Allen & Unwin','2014', '29.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-293-333-6','Tanith Lee','The Castle of Dark','Speculative Fiction','Macmilla','1987', '29.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-023-179-4','Tanith Lee','The Winter Players','Science Fiction','Macmilla','1977', '29.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-023-179-3','Edgar Rice Burroughs','Tarzan and the forbidden city','Adventure Fiction','New English Library','1914','28.99');
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-113-139-6','Edgar Rice Burroughs','Tarzan of the Apes','Adventure Fiction','New English Library','1999','19.99');
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-444-139-6','Robert Ludlum','The Gemini Contenders','Crime Fiction','Dial Press','2009','21.99');                     
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-433-439-6','Robert Ludlum','Chancellor Manuscript','Horror Fiction','Dial Press','1999','29.99');
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-430-131-6','James Clavel','Dragon Flight','Science Fiction','Atheneum','2007','16.95');    
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-410-121-1','Venessa Walters','Summer Return','Literary Fiction','Penguin','2016', '16.99');      
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-230-166-1','Anne Rice','Tale of the Thief','Horror Fiction','Penguin','2016', '26.99');			
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-090-881-1','Mark Stevenson','Prince and the Pauper','Historical Fiction','American Pushlishing Co','2011', '22.99'); 
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-22-121-1','Ribbly Scott','Alien','Science Fiction','Morpheus','1996', '20.99');	
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-413-331-1','James Clavell','Gone Girl','Horror Fiction','Paramount','2015', '29.99');  
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('9-330-121-1','Megan Miranda','All the Missing Girls','Mystery','H & R','2016','29.99');  
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-410-9921-1','Sarah Mass','Empire of Storms','Fantasy Fiction','Pearson Plc','2006','28.99'); 
    
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-413-121-1','J.D Vance','Hillbilly Elegy','Biography','Wiley publisher','2012','19.99'); 
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('0-310-331-1','Joe Hill','The Fire Man','Fantasy Fiction','Scholastic','2016', '21.99'); 
   
INSERT INTO Books (ISBN, Author_name, Title_name, Genre_name, Publisher_name, Published_Year, Retail_price)
VALUES ('5-110-121-1','Lee Child','Night School','Mystery','Pearson publisher','2015','29.99'); 
 

CREATE TABLE Orders (
	ID nvarchar(50) NOT NULL,
	Date datetime NOT NULL,
	ISBN varchar(55) NOT NULL,
	Cid varchar(55) NOT NULL,
	Status nvarchar(50) NOT NULL,
	PRIMARY KEY (ID),
	CONSTRAINT FK_ISBN FOREIGN KEY (ISBN)
    REFERENCES Books(ISBN),
	CONSTRAINT FK_Cid FOREIGN KEY (Cid)
    REFERENCES Customers(ID)
) ;

ALTER TABLE Orders ADD  CONSTRAINT [DF_Orders_Date]  DEFAULT (getdate()) FOR Date

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A01','2020-01-01', '0-332-3233-4', '32', 'Completed');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A02','2020-02-14', '0-3113-443-4', '29', 'Completed');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A03','2020-01-23', '0-113-473-8', '22', 'Cancelled');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A04','2020-03-27', '0-993-433-3', '23', 'Pending Payment');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A05','2019-12-23', '0-293-333-6', '24', 'Completed');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A06','2020-01-01', '0-023-179-4', '25', 'Shipped');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A07','2020-03-29', '0-023-179-3', '26', 'Processing');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A08','2020-03-22', '0-113-139-6', '27', 'Shipped');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A09','2019-11-03', '0-444-139-6', '30', 'Refunded');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A10','2020-02-14', '0-433-439-6', '32', 'Shipped');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A11','2020-01-12', '0-410-121-1', '57', 'Failed');

INSERT INTO Orders (ID, Date, ISBN, Cid, Status)
VALUES ('A12','2020-03-25', '0-230-166-1', '68', 'On hold');



