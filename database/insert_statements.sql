-- Insert data into the Users table
INSERT INTO `roomio`.Users (username, first_name, last_name, DOB, gender, email, Phone, passwd)
VALUES
  ('johndoe', 'John', 'Doe', '1990-01-01', 1, 'johndoe@example.com', '555-1234', 'password123'),
  ('janesmith', 'Jane', 'Smith', '1985-05-15', 2, 'janesmith@example.com', '555-5678', 'password456'),
  ('bobmiller', 'Bob', 'Miller', '1992-11-20', 1, 'bobmiller@example.com', '555-9012', 'password789');

-- Insert data into the Pets table
INSERT INTO `roomio`.Pets (PetName, PetType, PetSize, username)
VALUES
  ('Buddy', 'Dog', 'Medium', 'johndoe'),
  ('Whiskers', 'Cat', 'Small', 'janesmith'),
  ('Rocky', 'Hamster', 'Small', 'bobmiller');

-- Insert data into the ApartmentBuilding table
INSERT INTO `roomio`.ApartmentBuilding (CompanyName, BuildingName, AddrNum, AddrStreet, AddrCity, AddrState, AddrZipCode, YearBuilt)
VALUES
  ('ABC Apartments', 'Main Street', 123, 'Main Street', 'Anytown', 'CA', '12345', 2015),
  ('XYZ Rentals', 'Riverside Apartments', 456, 'Riverside Drive', 'Othertown', 'NY', '67890', 2020),
  ('Uptown Properties', 'Skyline Apartments', 789, 'Uptown Avenue', 'Bigcity', 'TX', '54321', 2018);

-- Insert data into the ApartmentUnit table
INSERT INTO `roomio`.ApartmentUnit (UnitRentID, CompanyName, BuildingName, unitNumber, MonthlyRent, squareFootage, AvailableDateForMoveIn)
VALUES
  (1, 'ABC Apartments', 'Main Street', '101', 1500, 800, '2023-06-01'),
  (2, 'ABC Apartments', 'Main Street', '102', 1800, 1000, '2023-08-15'),
  (3, 'XYZ Rentals', 'Riverside Apartments', '201', 2200, 1200, '2024-01-01'),
  (4, 'Uptown Properties', 'Skyline Apartments', '301', 2500, 1500, '2023-12-01');

-- Insert data into the Rooms table
INSERT INTO `roomio`.Rooms (name, squareFootage, description, UnitRentID)
VALUES
  ('Living Room', 300, 'Spacious living room', 1),
  ('Bedroom', 200, 'Cozy bedroom', 1),
  ('Kitchen', 150, 'Modern kitchen', 1),
  ('Living Room', 350, 'Bright and airy living room', 2),
  ('Bedroom', 250, 'Master bedroom', 2),
  ('Bathroom', 100, 'Ensuite bathroom', 2);

-- Insert data into the PetPolicy table
INSERT INTO `roomio`.PetPolicy (CompanyName, BuildingName, PetType, PetSize, isAllowed, RegistrationFee, MonthlyFee)
VALUES
  ('ABC Apartments', 'Main Street', 'Dog', 'Small', true, 100, 25),
  ('ABC Apartments', 'Main Street', 'Cat', 'Small', true, 50, 15),
  ('XYZ Rentals', 'Riverside Apartments', 'Dog', 'Medium', true, 150, 30),
  ('Uptown Properties', 'Skyline Apartments', 'Cat', 'Small', false, NULL, NULL);

-- Insert data into the Amenities table
INSERT INTO `roomio`.Amenities (aType, Description)
VALUES
  ('Swimming Pool', 'Outdoor swimming pool'),
  ('Fitness Center', 'Fully-equipped fitness center'),
  ('Laundry Room', 'On-site laundry facilities'),
  ('Parking', 'Covered parking available');

-- Insert data into the Interests table
INSERT INTO `roomio`.Interests (username, UnitRentID, RoommateCnt, MoveInDate)
VALUES
  ('johndoe', 1, 0, '2023-06-01'),
  ('janesmith', 2, 1, '2023-08-15'),
  ('bobmiller', 3, 2, '2024-01-01');

-- Insert data into the AmenitiesIn table
INSERT INTO `roomio`.AmenitiesIn (aType, UnitRentID)
VALUES
  ('Swimming Pool', 1),
  ('Fitness Center', 1),
  ('Laundry Room', 1),
  ('Swimming Pool', 2),
  ('Parking', 2),
  ('Fitness Center', 3),
  ('Laundry Room', 3),
  ('Parking', 3);

-- Insert data into the Provides table
INSERT INTO `roomio`.Provides (aType, CompanyName, BuildingName, Fee, waitingList)
VALUES
  ('Swimming Pool', 'ABC Apartments', 'Main Street', 0, 10),
  ('Fitness Center', 'ABC Apartments', 'Main Street', 50, 5),
  ('Laundry Room', 'ABC Apartments', 'Main Street', 25, 0),
  ('Swimming Pool', 'XYZ Rentals', 'Riverside Apartments', 0, 15),
  ('Parking', 'XYZ Rentals', 'Riverside Apartments', 100, 8),
  ('Fitness Center', 'Uptown Properties', 'Skyline Apartments', 75, 3),
  ('Laundry Room', 'Uptown Properties', 'Skyline Apartments', 30, 2),
  ('Parking', 'Uptown Properties', 'Skyline Apartments', 120, 10);