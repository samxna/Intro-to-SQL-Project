USE addj347;

/*
Student name: Samina Ahmed
Student username: addj347
*/

/* SECTION 1 - CREATE TABLE STATEMENTS */

/* Instructor table */
CREATE TABLE addj347_Instructor (
    InstructorID INTEGER PRIMARY KEY,
    Name CHAR(15),
    Location CHAR(50),
    WorkNumber INTEGER);

/* Car table */
CREATE TABLE addj347_Car (
    RegistrationPlate VARCHAR(7) PRIMARY KEY,
    Make CHAR(15),
    Model CHAR(10),
    Colour CHAR(10),
    FuelType CHAR(10));

/* Driver table */
CREATE TABLE addj347_Driver (
    Name CHAR(15) PRIMARY KEY,
    LicenseNumber VARCHAR(30),
    DoorNumber INTEGER,
    Postcode VARCHAR(10),
    ContactNumber BIGINT);

/* Location table */
CREATE TABLE addj347_Location (
    ShowroomName CHAR(50) PRIMARY KEY,
    City CHAR(15),
    Postcode VARCHAR(10),
    CarRegistrationPlate VARCHAR(7),
    FOREIGN KEY (CarRegistrationPlate) REFERENCES addj347_Car(RegistrationPlate));

/*  TestDriveBooking table */
CREATE TABLE addj347_TestDriveBooking (
    BookingReference INTEGER PRIMARY KEY,
    TestdriveDate DATE,
    Duration INTEGER,
    DriverName CHAR(50),
    CarRegistrationPlate VARCHAR(7),
    ShowroomName CHAR(50),
    FOREIGN KEY (DriverName) REFERENCES addj347_Driver(Name),
    FOREIGN KEY (CarRegistrationPlate) REFERENCES addj347_Car(RegistrationPlate),
    FOREIGN KEY (ShowroomName) REFERENCES addj347_Location(ShowroomName));

/* SECTION 2 - INSERT STATEMENTS */

/*  Instructor table */
INSERT INTO addj347_Instructor (InstructorID, Name, Location, WorkNumber)
VALUES
    (4001, 'Jay Das', 'York Drive Autos', 02035987642),
    (4002, 'Ryan Jones', 'Regent Park Motors', 02072136895),
    (4003, 'Javed Ali', 'Greenwich Vehicle Center', 02084762319),
    (4004, 'Leila Nguyen', 'Salford Auto Plaza', 02039145672),
    (4005, 'David Trayner', 'Cambridge Cars', 02072345678),
    (4006, 'Sophie Ghen', 'Westminster Autos', 02083456789),
    (4007, 'Tom Terin', 'Manchester Motors', 02031234567),
    (4008, 'Linda Guide', 'Mercedes Showroom', 02075678901),
    (4009, 'Jo Jin', 'Audi Center', '02086789012'),
    (4010, 'Ali Khan', 'Knightsbridge Motors', '02031234567');

/* Car table */
INSERT INTO addj347_Car (RegistrationPlate, Make, Model, Colour, FuelType)
VALUES
    ('AJ22CYE', 'Tesla', 'Model X', 'Black', 'Electric'),
    ('XY20ZBA', 'Tesla', 'Model Y', 'Red', 'Electric'),
    ('PF73JDK', 'Tesla', 'Model Y', 'Grey', 'Electric'),
    ('GV21EOY', 'Tesla', 'Model X', 'White', 'Electric'),
    ('FN23SNT', 'MG', '4 EV', 'Grey', 'Electric'),
    ('ST70BBW', 'Audi', 'e-tron', 'Blue', 'Electric'),
    ('LD22NDD', 'BMW', 'X3', 'Black', 'Diesel'),
    ('YZ71HJW', 'Mercedes', 'CLA', 'White', 'Petrol'),
    ('JA72DUY', 'Audi', 'A4', 'Black', 'Petrol'),
    ('SM23LTB', 'Volkswagen', 'Golf', 'Navy', 'Diesel');


/* Location table */
INSERT INTO addj347_Location (ShowroomName, City, Postcode, CarRegistrationPlate)
VALUES
    ('York Drive Autos', 'Leeds', 'POSTA', 'AJ22CYE'),
    ('Regent Park Motors', 'London', 'POSTB', 'XY20ZBA'),
    ('Greenwich Vehicle Center', 'London', 'SE11 7TL', 'PF73JDK'),
    ('Salford Auto Plaza', 'Manchester', 'M16 0TT', 'GV21EOY'),
    ('Cambridge Cars', 'Cambridge', 'CB1 0AA', 'FN23SNT'),
    ('Westminster Autos', 'London', 'SW1A 1AA', 'ST70BBW'),
    ('Manchester Motors', 'Manchester', 'M16 0TT', 'LD22NDD'),
    ('Mercedes Showroom', 'London', 'WC1B 9KH', 'YZ71HJW'),
    ('Audi Center', 'London', 'SE11 7TL', 'JA72DUY'),
    ('Knightsbridge Motors', 'London', 'WC1B 9KH', 'SM23LTB');


/* Driver table */
INSERT INTO addj347_Driver (Name, LicenseNumber, DoorNumber, Postcode, ContactNumber)
VALUES
    ('John Smith', 'DL001', 5, 'SE10 0TL', 07123456789),
    ('Emma Johnson', 'DL002', 202, 'N17 2JB', 07234567890),
    ('Daniel Williams', 'DL003', 56, 'W12 8QT', 07345678901),
    ('Sophie Davis', 'DL004', 24, 'NW3 6LU', 07456789011),
    ('Mohammed Patel', 'DL005', 57, 'SW19 3RZ', 07567890123),
    ('Olivia Brown', 'DL006', 21, 'EC2N 2DB', 07678907249),
    ('Bryan Wilson', 'DL007', 27, 'N7 9AB', 07789012345),
    ('Ava Taylor', 'DL008', 411, 'WC1X  9HH', 07890123441),
    ('Leo Robinson', 'DL009', 36, 'E2 9DG', 07901234597),
    ('Isabella Wright', 'DL010', 21, 'SW8 1TN', 07912345678);

/* TestDriveBooking table */
INSERT INTO addj347_TestDriveBooking (BookingReference, TestdriveDate, Duration, CarRegistrationPlate, ShowroomName, DriverName)
VALUES
    (77001, '2022-01-01', 30, 'AJ22CYE', 'York Drive Autos', 'John Smith'),
    (77002, '2022-02-01', 45, 'XY20ZBA', 'Regent Park Motors', 'Emma Johnson'),
    (77003, '2022-03-01', 60, 'PF73JDK', 'Greenwich Vehicle Center', 'Daniel Williams'),
    (77004, '2022-04-01', 30, 'GV21EOY', 'Salford Auto Plaza', 'Sophie Davis'),
    (77005, '2022-05-01', 45, 'FN23SNT', 'Cambridge Cars', 'Mohammed Patel'),
    (77006, '2022-06-01', 60, 'ST70BBW', 'Westminster Autos', 'Olivia Brown'),
    (77007, '2022-07-01', 30, 'LD22NDD', 'Manchester Motors', 'Bryan Wilson'),
    (77008, '2022-08-01', 45, 'YZ71HJW', 'Mercedes Showroom', 'Ava Taylor'),
    (77009, '2022-09-01', 30, 'JA72DUY', 'Audi Center', 'Leo Robinson'),
    (77010, '2022-10-01', 45, 'SM23LTB', 'Knightsbridge Motors', 'Isabella Wright');


/* SECTION 3 - UPDATE STATEMENTS */

UPDATE addj347_Driver SET ContactNumber = 07937714682 WHERE Name = 'John Smith';

UPDATE addj347_TestDriveBooking SET Duration = 60 WHERE BookingReference = 77002;


/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS */

/* 1. List all of the cars available for test drives. */
SELECT * FROM addj347_Car;

/* 2. List all the names of the drivers and their license numbers. */
SELECT Name, LicenseNumber FROM addj347_Driver;

/* 3. List all the available showrooms in the city of London. */
SELECT ShowroomName FROM addj347_Location WHERE City = 'London';

/* 4. Where is the MG 4EV car available to test drive? */
SELECT DISTINCT ShowroomName, City, Postcode FROM addj347_Location WHERE CarRegistrationPlate IN (SELECT RegistrationPlate FROM addj347_Car WHERE Make = 'MG' AND Model = '4 EV');

/* 5. List the TestDriveBooking records with a duration greater than 45 minutes. */
SELECT * FROM addj347_TestDriveBooking WHERE Duration > 45;

/* 6. List all the available cars that are Electric. */
SELECT Make, Model FROM addj347_Car WHERE FuelType = 'Electric';


/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS */

/* 1. List each booking details along with showroom cities. */
SELECT TD.*, L.City AS ShowroomCity
FROM addj347_TestDriveBooking TD
INNER JOIN addj347_Location L ON TD.ShowroomName = L.ShowroomName;

/* 2. List all of booking details along with the names of the instructors. */
SELECT TD.*, I.Name AS InstructorName
FROM addj347_TestDriveBooking TD
LEFT JOIN addj347_Instructor I ON TD.ShowroomName = I.Location;

/* 3. List car details and the showrooms that they are available in. */
SELECT C.*, L.ShowroomName
FROM addj347_Car C
LEFT JOIN addj347_Location L ON C.RegistrationPlate = L.CarRegistrationPlate;

/* 4. List the details of drivers and their contact numbers for petrol car bookings. */
SELECT D.Name AS DriverName, D.ContactNumber, TD.CarRegistrationPlate, C.Make, C.Model, C.FuelType
FROM addj347_TestDriveBooking TD
JOIN addj347_Driver D ON TD.DriverName = D.Name
JOIN addj347_Car C ON TD.CarRegistrationPlate = C.RegistrationPlate
WHERE C.FuelType = 'Petrol';

/* 5. List the name and work number details of the instructor that is allocated for the Mercedes CLA car, as well as the showroom name and city it is located. */
SELECT I.Name AS InstructorName, I.WorkNumber, L.ShowroomName, L.City
FROM addj347_Instructor I
INNER JOIN addj347_Location L ON I.Location = L.ShowroomName
INNER JOIN addj347_Car C ON L.CarRegistrationPlate = C.RegistrationPlate
WHERE C.Make = 'Mercedes' AND C.Model = 'CLA';

/* 6. List the booking details of the car with registration plate LD22NDD, including the driver name and license, as well as the instructor's name and Instructor ID. */
SELECT
    TD.BookingReference, TD.TestdriveDate, TD.Duration,
    D.Name AS DriverName, D.LicenseNumber AS DriverLicense,
    I.Name AS InstructorName, I.InstructorID
FROM
    addj347_TestDriveBooking TD
    INNER JOIN addj347_Driver D ON TD.DriverName = D.Name
    INNER JOIN addj347_Car C ON TD.CarRegistrationPlate = C.RegistrationPlate
    LEFT JOIN addj347_Location L ON TD.ShowroomName = L.ShowroomName
    LEFT JOIN addj347_Instructor I ON L.ShowroomName = I.Location
WHERE
    C.RegistrationPlate = 'LD22NDD';


/* SECTION 6 - DELETE ROWS

DELETE FROM addj347_TestDriveBooking WHERE BookingReference = 77006;

DELETE FROM addj347_Driver WHERE Name = 'Olivia Brown';
*/


/* SECTION 7 - DROP TABLES 

DROP TABLE addj347_Instructor;
DROP TABLE addj347_TestDriveBooking;
DROP TABLE addj347_Driver;
DROP TABLE addj347_Location;
DROP TABLE addj347_Car;
*/