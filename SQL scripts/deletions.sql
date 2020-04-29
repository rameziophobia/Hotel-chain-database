DELETE FROM Guest
WHERE  SSN = "653298653";

DELETE FROM Reservation
WHERE  Reservee_ID = 3;

DELETE FROM Activities
WHERE  Date < CURDATE();

DELETE FROM Employee
WHERE  Salary = 5000;

DELETE FROM Equipment
WHERE  Equipment = 'Chest press machine';
