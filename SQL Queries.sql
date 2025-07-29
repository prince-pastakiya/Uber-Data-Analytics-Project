CREATE DATABASE Uber;
USE Uber;

CREATE VIEW Successfull_Bookings AS 
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

CREATE VIEW Ride_Distance_For_Each_Vahicle_Type AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance FROM bookings GROUP BY Vehicle_Type;

CREATE VIEW Number_of_Canceled_Rides_By_Cusomer AS
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Canceled by Customer';

CREATE VIEW Top_5_Customer_With_Highest_Rides AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides FROM bookings
GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;

CREATE VIEW Cancled_Rides_by_Driver_Due_To_Perssonal_Or_CarRelated_Issues AS
SELECT COUNT(*) FROM bookings WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

CREATE VIEW Min_And_Max_Driver_Ratings AS
SELECT MAX(Driver_Ratings) AS max_ratings, MIN(Driver_Ratings) AS min_ratings FROM bookings WHERE Vehicle_type = 'Prime Sedan';

CREATE VIEW UPI_Payment_Rides AS
SELECT * FROM bookings WHERE Payment_Method = 'UPI';

CREATE VIEW Average_Customer_Rating_by_Vehicle_Type AS
SELECT Vehicle_type, AVG(Customer_Rating) AS Average_Customer_Rating FROM bookings GROUP BY Vehicle_Type;

CREATE VIEW Booking_Value_by_Successful_Rides AS
SELECT SUM(Booking_Value) AS total_successful_value FROM bookings WHERE Booking_Status = 'Success';

CREATE VIEW Incomplete_Rides_With_Reasons AS
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'Yes';





#1. Retrieve all Successfull Bookings:
SELECT * FROM Successfull_Bookings;

#2. Find a average ride distance for each vahicle type:
SELECT * FROM Ride_Distance_For_Each_Vahicle_Type;

#3. Get the total number of cancelled rides by customer:
SELECT * FROM Number_of_Canceled_Rides_By_Cusomer;

#4. List the top 5 Customers who booked the highest number of rides:
SELECT * FROM Top_5_Customer_With_Highest_Rides;

#5. Get the number of rides canceled by drivers due to personal or car-related issues:
SELECT * FROM Cancled_Rides_by_Driver_Due_To_Perssonal_Or_CarRelated_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM Min_And_Max_Driver_Ratings;

#7. Retriev all rides where payment was made using UPI:
SELECT * FROM UPI_Payment_Rides;

#8. Find the average customer rating per vehicle type:
SELECT * FROM Average_Customer_Rating_by_Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
SELECT * FROM Booking_Value_by_Successful_Rides;

#10. List all incomplete rides along with the reason:
SELECT* FROM Incomplete_Rides_With_Reasons;





