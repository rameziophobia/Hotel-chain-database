INSERT INTO Hotel
	VALUES (1, "Fifth settlement", "Hilton", 5),
		   (2, "Sixth settlement", "Fermont", 4),
           (DEFAULT, "Seventh settlement", "Plaza", 5);

INSERT INTO Room
	VALUES (5, 237, 6000, 1, 3, "swimming pool", 0, "Suite"),
		   (DEFAULT, 137, 6500, 2, DEFAULT, "view2", 1, "double"),
		   (DEFAULT, 337, 6500, 1, DEFAULT, "view3", 1, "double"),
		   (DEFAULT, 437, 6000, 1, DEFAULT, "view2", 1, "double");
    
INSERT INTO Reservee
	VALUES (11, "JOHN WICK");

INSERT INTO Reservation
	VALUES  (3, "Full board", "2020-12-30", 7, 3000, 0, 11);

INSERT INTO Reservee
	VALUES ("The Agency");
SET @last_reservee_id = LAST_INSERT_ID();

INSERT INTO Booking_Agency(Discount, Reservee_ID)
	VALUES (0.4, last_reservee_id);

INSERT INTO Reservation(Board_type, Start_date, Duration, 
						Paid_amount, children_number, Reservee_ID)
	VALUES  ("Half board", "2020-10-13", 5, DEFAULT, DEFAULT, last_reservee_id),
			("Full board", "2020-9-17", 5, 5000, DEFAULT, last_reservee_id),
			("Half board", "2020-7-4", 7, 3000, DEFAULT, last_reservee_id),
			("Full board", "2019-8-6", 7, 3000, 2, last_reservee_id),
			("Half board", "2019-12-30", 7, 3000, 1, last_reservee_id);

INSERT INTO Guest
	VALUES ("653298653", 11, "Male", "1999-12-30", 3);
    
INSERT INTO Guest(SSN , Reservee_ID, Gender,Date_of_birth, Reservation_ID)
	VALUES ("123456789", DEFAULT, "Male", "1997-12-30", 3),
			("546516515", DEFAULT, "Male", "1997-12-30", 1),
			("123452169", DEFAULT, "Male", "1996-1-30", 1),
			("123151645", DEFAULT, "Male", "1995-1-20", 1),
			("123449841", DEFAULT, "Male", "1997-1-20", 2),
			("763456789", DEFAULT, "Female", "1992-12-20", 4),
			("125166789", DEFAULT, "Female", "1989-12-2", 5),
			("3456166789", DEFAULT, "Female", "1967-12-30", 5),
			("6789454111", DEFAULT, "Female", "1996-12-30", 6);
    
INSERT INTO Room
	VALUES (5, 237, 8500, 1, 3, "swimming pool", 0, "Suite");
    
INSERT INTO Activity
	VALUES (5, 237, 8500, 1, 3, "swimming pool", 0, "Suite");
