CREATE DATABASE veterinary_database;

-- feat/create-table-owners
CREATE TABLE owners(
	ownerid INT PRIMARY KEY,
	ofirstname VARCHAR(50) NOT NULL,
	olastname VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone VARCHAR(50) NOT NULL
);

CREATE TABLE animals(
	animalid INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	species VARCHAR(50) NOT NULL,
	breed VARCHAR(50) NOT NULL,
	dateofbirth DATE,
	gender VARCHAR(10) NOT NULL,
	color VARCHAR(50) NOT NULL,
	ownerid INT,
	foreign key (ownerid) references owners(ownerid)
);

