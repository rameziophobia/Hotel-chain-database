
INSERT INTO Hotel
	VALUES (1, "Fifth settlement", "Hilton", 3),
		   (2, "Sixth settlement", "Fermont", 4),
           (DEFAULT, "Seventh settlement", "Plaza", 3),
		   (DEFAULT, "Eighth settlement", "New Soul", 3);

INSERT INTO Reservee
	VALUES (11);
    
INSERT INTO Room
	VALUES (4, 237, 6000, 1,"view3", 0, "Suite"),
           (5, 237, 6000, 2,"swimming pool", 0, "Suite"),
		   (6, 137, 6500, 3, "view2", 1, "double"),
		   (7, 337, 6500,  4, "view3", 1, "double"),
           (8, 137, 6500, 2, "view2", 1, "double"),
		   (9, 337, 6500,  1, "view3", 1, "double");
		  
INSERT INTO Reservation
	VALUES  (1, "Full board", "2020-12-30", 7, 3000, 0, 11,7);

INSERT INTO Reservee()
	VALUES ();
SET @last_reservee_id = LAST_INSERT_ID();

INSERT INTO Booking_Agency(Discount, Reservee_ID)
	VALUES (0.4, @last_reservee_id);

INSERT INTO Reservation(Board_type, Start_date, Duration, 
						Paid_amount, children_number, Reservee_ID,Room_ID)
	VALUES  ("Half board", "2020-10-13", 5, DEFAULT, DEFAULT, @last_reservee_id,5),
			("Full board", "2020-6-30", 5, 5000, DEFAULT, @last_reservee_id,6),
			("Half board", "2020-7-4", 7, 3000, DEFAULT, @last_reservee_id,7),
			("Full board", "2019-8-6", 7, 3000, 2, @last_reservee_id,8),
			("Half board", "2019-12-30", 7, 3000, 1, @last_reservee_id,9);

INSERT INTO Guest
	VALUES ("653298653", "JOHN WICK", 11, "Male", "1999-12-30", 3);
    
INSERT INTO Guest(SSN , Name, Gender,Date_of_birth, Reservation_ID)
	VALUES  ("123456789", "Hla", "Male", "1997-12-30", 1),
			("546516515", "Ahmed", "Male", "1997-12-30", 4),
			("123452169", "Mansour", "Male", "1996-1-30", 4),
			("123151645", "Ramez", "Male", "1995-1-20", 5),
			("123449841", "Noshy", "Male", "1997-1-20", 2),
			("763456789", "Weissa", "Female", "1992-12-20", 4),
			("125166789", "Samer", "Male", "1989-12-2", 3),
			("345616678", "Mariam", "Female", "1967-12-30", 5),
			("678945411", "Said", "Female", "1996-12-30", 2);
    
INSERT INTO Room
	VALUES (DEFAULT, 237, 8500, 1, "swimming pool", 0, "Suite");
    
INSERT INTO Activities
	VALUES (DEFAULT, 'party', DATE_ADD(NOW(), INTERVAL 4 DAY), 450),
			(DEFAULT, 'event2', DATE_ADD(NOW(), INTERVAL 2 DAY), 200),
			(DEFAULT, 'event3', DATE_ADD(NOW(), INTERVAL 2 WEEK), 700);
            
INSERT INTO participates_in
	VALUES (123456789, 1),
		   (123456789, 2),
		   (123456789, 3),
		   (125166789, 1),
		   (123151645, 2),
		   (345616678, 3),
		   (678945411, 1),
		   (546516515, 2),
		   (123151645, 3),
		   (345616678, 1),
		   (546516515, 1),
		   (546516515, 3);

-- auto generated
INSERT INTO `hotel-chain`.`gym` (`Facility_ID`, `Hotel_ID`, `Name`, `Working_hours`) VALUES ('1', '1', 'MuscleGym', '24h');
INSERT INTO `hotel-chain`.`gym` (`Facility_ID`, `Hotel_ID`, `Name`, `Working_hours`) VALUES ('2', '1', 'gym2', '24h');
INSERT INTO `hotel-chain`.`gym` (`Facility_ID`, `Hotel_ID`, `Name`, `Working_hours`) VALUES ('3', '1', 'gym3', '24h');
INSERT INTO `hotel-chain`.`gym` (`Facility_ID`, `Hotel_ID`, `Name`, `Working_hours`) VALUES ('4', '3', 'gym4', '8 am - 4 am');
INSERT INTO `hotel-chain`.`gym` (`Facility_ID`, `Hotel_ID`, `Name`, `Working_hours`) VALUES ('5', '2', 'gym5', '8 am - 4 am');
INSERT INTO `hotel-chain`.`gym` (`Facility_ID`, `Hotel_ID`, `Name`, `Working_hours`) VALUES ('6', '2', 'gym6', '8 am - 4 am');
    
INSERT INTO `hotel-chain`.`restaurant` (`Facility_ID`, `Hotel_ID`, `Name`, `Rating`, `Price_range`, `Food_type`) VALUES ('1', '2', 'Panda', '5', '$$', 'chinese');
INSERT INTO `hotel-chain`.`restaurant` (`Facility_ID`, `Hotel_ID`, `Name`, `Rating`, `Price_range`, `Food_type`) VALUES ('2', '2', 'sausagespot', '5', '$$', 'italian');
INSERT INTO `hotel-chain`.`restaurant` (`Facility_ID`, `Hotel_ID`, `Name`, `Rating`, `Price_range`, `Food_type`) VALUES ('3', '3', 'burger joint', '4', '$$$', 'burger');
INSERT INTO `hotel-chain`.`restaurant` (`Facility_ID`, `Hotel_ID`, `Name`, `Rating`, `Price_range`, `Food_type`) VALUES ('4', '1', 'cheese lovers', '2', '$$$', 'pizza');
INSERT INTO `hotel-chain`.`restaurant` (`Facility_ID`, `Hotel_ID`, `Name`, `Rating`, `Price_range`, `Food_type`) VALUES ('5', '2', 'abdo natana', '1', '$', 'masri');
INSERT INTO `hotel-chain`.`restaurant` (`Facility_ID`, `Hotel_ID`, `Name`, `Rating`, `Price_range`, `Food_type`) VALUES ('6', '3', 'zozo talawoth', '5', '$', 'masri');

INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('1', 'Jump rope ');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('2', 'Squat rack ');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('1', 'Push up bars ');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('1', 'Punching bag ');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('3', 'Chest press machine');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('3', 'Punching bag ');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('4', 'Pull up bar ');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('5', 'Leg press machine');
INSERT INTO `hotel-chain`.`equipment` (`F_ID`, `Equipment`) VALUES ('2', 'Chest press machine');

INSERT INTO `hotel-chain`.`department` (`Department_ID`, `Name`, `Hotel_ID`) VALUES ('1', 'Maintenance', '1');
INSERT INTO `hotel-chain`.`department` (`Department_ID`, `Name`, `Hotel_ID`) VALUES ('2', 'dep2', '2');
INSERT INTO `hotel-chain`.`department` (`Department_ID`, `Name`, `Hotel_ID`) VALUES ('3', 'dep3', '3');
INSERT INTO `hotel-chain`.`department` (`Department_ID`, `Name`, `Hotel_ID`) VALUES ('4', 'Maintenance', '2');
INSERT INTO `hotel-chain`.`department` (`Department_ID`, `Name`, `Hotel_ID`) VALUES ('5', 'dep6', '1');

INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('1254', 'David', '1', '5000','1');
INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Management_ESSN`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('7984', 'Khaled', '1254', '2', '5000','2');
INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Management_ESSN`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('3759', 'Roshdy', '1254', '1', '5000','3');
INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Management_ESSN`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('6561', 'Abaza', '1254', '1', '5000','1');
INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Management_ESSN`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('1356', 'Katkoot', '1254', '3', '5000','2');
INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('5641', 'Jacket', '4', '5000','2');
INSERT INTO `hotel-chain`.`employee` (`ESSN`, `Name`, `Management_ESSN`, `Department_ID`, `Salary`,`Hotel_ID`) VALUES ('1532', 'Amees', '5641', '2', '5000','3');
