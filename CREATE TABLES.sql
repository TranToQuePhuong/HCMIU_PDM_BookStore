CREATE TABLE USER(
	ID nvarchar(50) NOT NULL,
	Name nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Address nvarchar(max) NOT NULL,
	Phone nvarchar(50) NOT NULL,
	Password nvarchar(50) NOT NULL
	PRIMARY KEY (ID)
	);


CREATE TABLE STATUS(
	StatusName nvarchar(50) NOT NULL,
	StatusID nvarchar(50) NOT NULL,
	PRIMARY KEY (StatusID)
	);


CREATE TABLE PUBLISHER(
	PID nvarchar(50) NOT NULL,
	Name nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Address nvarchar(max) NOT NULL,
	Phone nvarchar(50) NOT NULL,
	URL nvarchar(50) NOT NULL,
	PRIMARY KEY (PID)
 );


CREATE TABLE ORDER(
	OID nvarchar(50) NOT NULL,
	Date datetime NOT NULL,
	TotalAmount numeric(18, 0) NOT NULL,
	PRIMARY KEY (OID)
);

CREATE TABLE GENRE(
	GenreName nvarchar(50) NOT NULL,
	GenreID nvarchar(50) NOT NULL,
	PRIMARY KEY (GenreID)
);

CREATE TABLE BOOK(
	ISBN nvarchar(50) NOT NULL,
	Title nvarchar(50) NOT NULL,
	PublishDate datetime NULL,
	Price money NOT NULL,
	PRIMARY KEY (ISBN)
) ;

CREATE TABLE AUTHOR(
	AID nvarchar(50) NOT NULL,
	Name nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Address nvarchar(max) NOT NULL,
	Phone nvarchar(50) NOT NULL,
	URL nvarchar(50) NOT NULL,
	PRIMARY KEY (AID)
);