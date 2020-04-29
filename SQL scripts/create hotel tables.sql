DROP DATABASE IF EXISTS `hotel-chain`;
CREATE DATABASE `hotel-chain`;
use `hotel-chain`;
CREATE TABLE Hotel
(
  ID INT NOT NULL AUTO_INCREMENT,
  Location VARCHAR(64),
  Name VARCHAR(64) NOT NULL,
  Rating INT,
  PRIMARY KEY (ID)
);

CREATE TABLE Reservee
(
	ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(ID)
);
CREATE TABLE Room
(
  Room_ID INT NOT NULL AUTO_INCREMENT,
  Room_number INT,
  Price INT,
  Hotel_ID INT NOT NULL,
  View VARCHAR(20),
  Available INT,
  Room_Type CHAR(20),
  PRIMARY KEY (Room_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);
CREATE TABLE Reservation
(
  Reservation_ID INT NOT NULL AUTO_INCREMENT,
  Board_type CHAR(20) DEFAULT 'Full board',
  Start_date DATE NOT NULL,
  Duration INT NOT NULL,
  Paid_amount INT DEFAULT 0,
  Children_number INT DEFAULT 0,
  Reservee_ID INT NOT NULL,
  Room_ID INT NOT NULL,
  PRIMARY KEY (Reservation_ID),
  FOREIGN KEY (Reservee_ID) REFERENCES Reservee(ID)
	ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
	ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE Booking_Agency
(
  Agency_ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(64),
  Location VARCHAR(64),
  Discount FLOAT DEFAULT 0,
  Reservee_ID INT,
  PRIMARY KEY (Agency_ID),
  FOREIGN KEY (Reservee_ID) REFERENCES Reservee(ID)
	ON DELETE RESTRICT
    ON UPDATE CASCADE
);




CREATE TABLE Activities
(
  Activity_ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(32),
  Date DATE NOT NULL,
  Price INT NOT NULL,
  PRIMARY KEY (Activity_ID)
);

CREATE TABLE Offers
(
  Hotel_ID INT NOT NULL,
  Activity_ID INT NOT NULL,
  PRIMARY KEY (Hotel_ID, Activity_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (Activity_ID) REFERENCES Activities(Activity_ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Guest
(
  SSN INT NOT NULL,
  Name VARCHAR(64),
  Reservee_ID INT DEFAULT NULL,
  Gender CHAR(20),
  Date_of_birth DATE NOT NULL,
  Reservation_ID INT NOT NULL,
  PRIMARY KEY (SSN),
  FOREIGN KEY (Reservee_ID) REFERENCES Reservee(ID)
	ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (Reservation_ID) REFERENCES Reservation(Reservation_ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Participates_in
(
  Guest_SSN INT NOT NULL,
  Activity_ID INT NOT NULL,
  PRIMARY KEY (Guest_SSN , Activity_ID),
  FOREIGN KEY (Guest_SSN) REFERENCES Guest(SSN)
	ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (Activity_ID) REFERENCES Activities(Activity_ID)
	ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE Department
(
  Department_ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(64) NOT NULL,
  Hotel_ID INT NOT NULL,
  PRIMARY KEY (Department_ID,Hotel_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Employee
(
  ESSN INT NOT NULL,
  Name VARCHAR(64) NOT NULL,
  Management_ESSN INT,
  Department_ID INT NOT NULL,
  Hotel_ID INT NOT NULL,
  Salary INT NOT NULL,
  PRIMARY KEY (ESSN),
  FOREIGN KEY (Management_ESSN) REFERENCES Employee(ESSN)
	ON DELETE SET NULL
    ON UPDATE CASCADE,
  FOREIGN KEY (Department_ID, Hotel_ID) REFERENCES Department(Department_ID, Hotel_ID)
	ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE Gym
(
  Facility_ID INT NOT NULL AUTO_INCREMENT,
  Hotel_ID INT NOT NULL,
  Name VARCHAR(64),
  Working_hours varchar(16),
  PRIMARY KEY (Facility_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Equipment
(
  F_ID INT NOT NULL,
  Equipment VARCHAR(64) NOT NULL,
  PRIMARY KEY (F_ID , Equipment),
  FOREIGN KEY (F_ID) REFERENCES Gym(Facility_ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Restaurant
(
  Facility_ID INT NOT NULL AUTO_INCREMENT,
  Hotel_ID INT NOT NULL,
  Name VARCHAR(64),
  Rating INT,
  Price_range VARCHAR(64) DEFAULT 'Normal',
  Food_type VARCHAR(64),
  PRIMARY KEY (Facility_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID)
	ON DELETE CASCADE
    ON UPDATE CASCADE
);

