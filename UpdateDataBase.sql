USE CustomersAndOrders;

CREATE TABLE Customers
(
	CustomerID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(256) NOT NULL,
	Email VARCHAR(256) NOT NULL,
	City VARCHAR(256) NOT NULL
);
	
CREATE TABLE Orders
(
	OrderID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Date DATE NOT NULL,
	ItemName VARCHAR(256) NOT NULL,
	CustomerID INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerID),
	Count INT NOT NULL CHECK(Count >=0),
	Cost INT NOT NULL CHECK(Cost >=0)
)

INSERT INTO Customers VALUES
('Andrey', 'testEmail@random.ru', 'Irkutsk'),
('Sergey', 'testEmail@random.ru', 'Moscow'),
('Ivan', 'testEmail@random.ru', 'Angarsk'),
('Oleg', 'testEmail@random.ru', 'Irkutsk'),
('Olga', 'testEmail@random.ru', 'Irkutsk'),
('Sergey', 'testEmail@random.ru', 'Irkutsk'),
('noName', 'testEmail@random.ru', 'Saint Petersburg')

INSERT INTO Orders VALUES
('2021-12-31', 'testItem', 1, 5, 1000),
('2023-12-31', 'apple', 1, 6, 3000),
('2023-01-12', 'car', 2, 7, 4000),
('2023-05-11', 'beer', 4, 2, 7000),
('2023-07-31', 'laptop', 4, 3, 8000),
('2021-12-31', 'Cake', 5, 4, 9000),
('2021-12-31', 'Car', 6, 1, 10000),
('2021-12-31', 'testItem2', 1, 2, 100000)