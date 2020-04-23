DROP DATABASE IF EXISTS `hotel-chain`;
CREATE DATABASE `hotel-chain`;
use `hotel-chain`;
CREATE TABLE Hotel
(
  ID INT NOT NULL,
  Location VARCHAR(64),
  Name VARCHAR(64) NOT NULL,
  Rating INT,
  PRIMARY KEY (ID)
);

CREATE TABLE Reservee
(
  ID INT NOT NULL,
  Name VARCHAR(64) NOT NULL,
  PRIMARY KEY (ID)
);


CREATE TABLE Reservation
(
  Reservation_ID INT NOT NULL,
  Board_type CHAR(20) NOT NULL,
  Start_date DATE NOT NULL,
  Duration INT NOT NULL,
  Paid_amount INT,
  Children_number INT,
  Reservee_ID INT NOT NULL,
  PRIMARY KEY (Reservation_ID),
  FOREIGN KEY (Reservee_ID) REFERENCES Reservee(ID)
);

CREATE TABLE Booking_Agency
(
  Agency_ID INT NOT NULL,
  Location VARCHAR(64),
  Discount FLOAT,
  Reservee_ID INT,
  FOREIGN KEY (Reservee_ID) REFERENCES Reservation(Reservee_ID),
  PRIMARY KEY (Agency_ID)
);

CREATE TABLE Room
(
  Room_ID INT NOT NULL,
  Room_number INT,
  Price INT,
  Hotel_ID INT NOT NULL,
  Reservation_ID INT,
  View VARCHAR(20),
  Available INT,
  Room_Type CHAR(20),
  PRIMARY KEY (Room_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID),
  FOREIGN KEY (Reservation_ID) REFERENCES Reservation (Reservation_ID)
);


CREATE TABLE Activities
(
  Activity_ID INT NOT NULL,
  Date INT NOT NULL,
  Price INT NOT NULL,
  PRIMARY KEY (Activity_ID)
);

CREATE TABLE Offers
(
  Hotel_ID INT NOT NULL,
  Activity_ID INT NOT NULL,
  PRIMARY KEY (Hotel_ID, Activity_ID),
  FOREIGN KEY (Hotel_ID) REFERENCES Hotel(ID),
  FOREIGN KEY (Activity_ID) REFERENCES Activities(Activity_ID)
);

CREATE TABLE Guest
(
  SSN INT NOT NULL,
  Reservee_ID INT,
  Gender CHAR(20),
  Date_of_birth DATE NOT NULL,
  Reservation_ID INT NOT NULL,
  PRIMARY KEY (SSN),
  FOREIGN KEY (Reservee_ID) REFERENCES Reservation(Reservee_ID),
  FOREIGN KEY (Reservation_ID) REFERENCES Reservation(Reservation_ID)
);

CREATE TABLE Participates_in
(
  Guest_SSN INT NOT NULL,
  Activity_ID INT NOT NULL,
  PRIMARY KEY (Guest_SSN , Activity_ID),
  FOREIGN KEY (Guest_SSN) REFERENCES Guest(SSN),
  FOREIGN KEY (Activity_ID) REFERENCES Activities(Activity_ID)
);