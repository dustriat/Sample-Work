/*
This is a basic mini-project for
the Codecademy Learn SQL course.
This code shows the requested queries
for the Lyft Trip analysis.
*/

SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

SELECT *
FROM riders
CROSS JOIN cars;

--Trip log with users
SELECT *
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;
/*
This query shows that trip 1004
had a rider with id 105, but 105 is
not shown in the rider table
*/

--Cars used on each trip
SELECT *
FROM trips
INNER JOIN cars
ON trips.car_id = cars.id;

--Show first table and secondary table with new riders
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

--Find the average cost per trip
SELECT AVG(cost)
FROM trips;

--Email campaign needs all riders with fewer than 500 trips
SELECT *
FROM riders
WHERE total_trips < 500
UNION
SELECT *
FROM riders2
WHERE total_trips < 500;

--Number of cars with active status
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

--Identify which 2 cars have the most trips to schedule their service
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
