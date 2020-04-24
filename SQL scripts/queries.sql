-- List the guests participating in activities in the next week
SELECT g.Name as guest, a.Name as activity, a.Price, a.Date
FROM Activities a
JOIN Participates_in part
       ON a.Activity_ID = part.Activity_ID
JOIN Guest g
       ON g.SSN = part.guest_SSN
WHERE
       a.Date BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 1 WEEK);

-- List all the reservations in the next 3 months
SELECT *
FROM Reservation
WHERE Reservation.Start_date BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 3 MONTH);

-- List all facilities for each hotel .. el 2 ma3 ba3d fe 
-- table wa7ed manfe3sh 3ashan fihom info mo5talifa

-- List all gyms with their equipment for all hotels
SELECT h.Name AS 'hotel name', g.Name AS 'gym name', 
	   g.Working_hours, eq.Equipment_name
FROM Hotel h
LEFT JOIN Gym g
	ON h.ID = g.Hotel_ID
LEFT JOIN Equipment_name eq
	ON eq.F_ID = g.Facility_ID;
       
-- List all restaurants for each hotel 
SELECT  h.Name AS 'hotel name', r.Name AS 'restaurant name', 
		r.Food_type, r.Price_range
FROM Hotel h
LEFT JOIN Restaurant r
       ON h.ID = r.Hotel_ID;

-- List all the available rooms with the discounted price for agencies

-- note i added semicolon ba3d kol query 8er kda byedi error el dr alet 3aliha bardo 
-- List all the available rooms of type double
-- suggestion: name bta3 min ?, nzawid 7war el dates??
SELECT price, view, Name
FROM   Room, Hotel
WHERE  Available=1 AND Room Type="double" AND Hotel_ID=ID;

-- List all Employees working in the Maintenance Department
-- suggestion: add managers
SELECT ESSN, Salary
FROM   Employee, Department
WHERE  Employee.Department_ID = Department.Department_ID AND   
       Department.Name="Maintenance";

-- suggestion: idk ana kaselt afham el query bte3ml eh bas i deleted reservee ... so xD
SELECT Name
FROM   Reservee, Reservation, Room
WHERE  ID = Reservee_ID AND 
       Room.Reservation_ID=Reservation.Reservation_ID
       AND Hotel_ID=1;
