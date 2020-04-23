-- increase salary of employees in 5 star hotels by 0.15
UPDATE Employee e
JOIN Department d
	ON d.Department_ID = e.Department_ID
JOIN Hotel h
	ON d.Hotel_ID = h.ID
SET Employee.Salary = Employee.Salary * 1.15
WHERE h.Rating = 5;

-- update room prices reserved by agencies using their discount%
UPDATE Room
JOIN Reservation
    ON Room.Reservation_ID = Reservation.Reservation_ID
JOIN Booking_Agency
    ON Reservation.Reservee_ID = Booking_Agency.Reservee_ID
SET Room.Price = Room.Price * (1 - Booking_Agency.Discount);

-- update activity time of activity 1 to now
UPDATE Activity
SET Activity.Date = NOW()
WHERE Activity.Activity_ID = 1;

-- update rooms with id 1, 2 with the reservation id of 1
UPDATE Room
SET Room.Reservation_ID = 1
WHERE Room.Room_ID IN (1, 2);


-- increment the rating of hotels which have 2 or more facilities by 1
-- TODO that wont work
UPDATE Hotel
SET Hotel.Rating = Hotel.Rating + 1
WHERE Hotel.Rating < 5 AND
	Hotel.ID IN (
	SELECT *
	FROM Hotel h
	JOIN Gym g
		   ON h.ID = g.Hotel_ID
	JOIN Restaurant r
		   ON h.ID = r.Hotel_ID
	HAVING COUNT(*) > 1
	)


