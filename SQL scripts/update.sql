-- increase salary of employees in 5 star hotels by 0.15
UPDATE Employee e
JOIN Department d
	ON d.Department_ID = e.Department_ID
JOIN Hotel h
	ON d.Hotel_ID = h.ID
SET e.Salary = e.Salary * 1.15
WHERE h.Rating = 5;

-- update rooms with id 6, 7 with the reservation id of 4
UPDATE Room
SET Room.Reservation_ID = 4
WHERE Room.Room_ID IN (6, 7);

-- update room prices reserved by agencies using their discount%
UPDATE Room
JOIN Reservation
    ON Room.Reservation_ID = Reservation.Reservation_ID
JOIN Booking_Agency
    ON Reservation.Reservee_ID = Booking_Agency.Reservee_ID
SET Room.Price = Room.Price * (1 - Booking_Agency.Discount);

-- update activity time of activity 1 to tommorow
UPDATE Activities a
SET a.Date = DATE_ADD(NOW(), INTERVAL 1 DAY)
WHERE a.Activity_ID = 1;

-- update manager ssn of all emplyees with manager id x to manager id y
SET @old_mngr = 1254;
SET @new_mngr = 5641;
UPDATE Employee e
SET e.Manager_SSN =  @new_mngr
WHERE e.Manager_SSN = @old_mngr;

-- increment by one the rating of hotels having
-- three or more facilities of a specefic type
UPDATE Hotel h
SET h.Rating = h.Rating + 1
WHERE h.Rating < 5 AND
	h.ID IN (
	SELECT h1.id
	FROM (SELECT Hotel.id FROM Hotel) AS h1
	JOIN Gym g
		   ON h1.ID = g.Hotel_ID
	GROUP BY h1.ID
	HAVING COUNT(*) > 2
	UNION
	SELECT h1.id
	FROM (SELECT Hotel.id FROM Hotel) AS h1
	JOIN Restaurant r
		   ON h1.ID = r.Hotel_ID
	GROUP BY h1.ID
	HAVING COUNT(*) > 2
);