--EX. 1

CREATE TABLE Products (
    ProductID int, 
    ProductName text, 
    Price float, 
    Category text 
);
INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES (1, 'Laptop', 1200.00, 'Electronics'), (2, 'Desk Chair', 250.50, 'Furniture');

SELECT * FROM Products

-- EX. 2

CREATE TABLE Employees(EmployeeID int,
FirstName text,
LastName text,
Department text);

INSERT INTO Employees (EmployeeId, FirstName, LastName, Department) VALUES (1, 'Alice', 'Johnson', 'HR'), (2, 'Bob', 'Smith', 'IT');

SELECT FirstName, LastName FROM Employees

-- EX. 3

CREATE TABLE Inventory (
    ItemId int,
    ItemName text,
    UnitsInStock int
    );
INSERT INTO Inventory (ItemID, ItemName, UnitsInStock) VALUES (1, 'Printer Paper', 15), (2, 'Staples', 30);

Select * FROM Inventory WHERE UnitsInStock < 20

--EX. 4
CREATE TABLE Books (
    BookId int,
    Title text,
    Author text,
    Price float);
INSERT INTO Books (BookID, Title, Author, Price) VALUES 
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 10.99), 
(2, '1984', 'George Orwell', 8.99), 
(3, 'The Catcher in the Rye', 'J. D. Salinger', 7.99);

SELECT * FROM Books

--EX. 5

CREATE TABLE Courses(
    CourseID int, 
    CourseName text,
    Department text, 
    Credits int
    );

INSERT INTO Courses(CourseID, CourseName, Department, Credits) VALUES 
    (101, 'Introduction to Psychology', 'Psychology', 3),
    (102, 'Principles of Economics', 'Economics', 4),
    (103, 'Introduction to Computer Science', 'Computer Science', 3);

SELECT CourseName, Department FROM Courses

--EX. 6

CREATE TABLE RestaurantReviews (
    ReviewId int,
    RestaurantName text,
    Rating text,
    Reviewer text,
    ReviewDate date
    );
INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES
    (1, 'Cafe Mocha', 'Excellent', 'John Doe', '2022-01-15'),
    (2, 'Burger Corner', 'Good', 'Jane Smith', '2022-02-20'),
    (3, 'Pasta Place', 'Excellent', 'Alice Jones', '2022-02-22');
    
SELECT RestaurantName FROM RestaurantReviews WHERE Rating = 'Excellent'

--EX. 7

CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    SaleAmount float
    );

INSERT INTO Sales (SaleId, ProductId, SaleAmount) VALUES (1, 1, 1200.00), (2, 2, 250.50);

SELECT SUM(SaleAmount) FROM Sales

--EX. 8

CREATE TABLE Products (
    ProductID int,
    ProductName text,
    Price float,
    Category text
    );
INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES 
    (1, 'Apple', 0.50, 'Fruit'),
    (2, 'Bread', 1.50, 'Bakery');
    
SELECT AVG(Price) FROM Products;

--EX. 9

CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    QuantitySold int,
    SaleDate date);
INSERT INTO Sales (SaleId, ProductId, QuantitySold, SaleDate) VALUES 
    (101, 1, 50, '2022-01-01'),
    (102, 2, 30, '2022-01-02'),
    (103, 1, 20, '2022-01-03');
    
Select Sum(QuantitySold) FROM Sales WHERE ProductId = 1

--EX. 10

CREATE TABLE WeatherData (
    RecordId int,
    Date date,
    Temperature float,
    City text
    );
INSERT INTO WeatherData
(RecordId, Date, Temperature, City) VALUES 
   (1, '2022-01-01', 35.2, 'Springfield'),
   (2, '2022-01-01', 28.4, 'Shelbyville');
   
Select min(Temperature), max(Temperature) FROM WeatherData

--EX. 11

CREATE TABLE Orders (
    OrderID int,
    ProductId int,
    OrderDate date);
CREATE TABLE Products (
    ProductID int,
    ProductName text);
INSERT INTO Orders(OrderId, ProductId, OrderDate) VALUES (1, 1, '2023-01-01'), (2, 2, '2023-01-02');
INSERT INTO Products (ProductID, ProductName) VALUES (1, 'Laptop'), (2, 'Desk Chair');

SELECT ProductName, OrderDate FROM Products INNER JOIN Orders ON Products.ProductID = Orders.ProductID;

--EX. 12

CREATE TABLE Employees (
 EmployeeID int,
 FirstName text,
 LastName text,
 DepartmentID int);
 
CREATE TABLE Departments (
 DepartmentID int,
 DepartmentName text);
 
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentId) VALUES 
    (1, 'Alice', 'Johnson', 1),
    (2, 'Bob', 'Smith', 2);
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
    (1, 'HR'),
    (2, 'IT');

SELECT FirstName, LastName, DepartmentName From Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
