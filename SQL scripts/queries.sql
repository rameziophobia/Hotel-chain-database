SELECT price, view, Name
FROM   Room, Hotel
WHERE  Available=1 AND Room Type="double" AND Hotel_ID=ID;


SELECT ESSN, Salary
FROM   Employee, Department
WHERE  Employee.Department_ID = Department.Department_ID AND   
       Department.Name="Maintenance";


SELECT Name
FROM   Reservee, Reservation, Room
WHERE  ID=Reservee_ID AND 
       Room.Reservation_ID=Reservation.Reservation_ID
       AND Hotel_ID=1;
