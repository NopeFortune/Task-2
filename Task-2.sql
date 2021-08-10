CREATE TABLE Product (
	ID INT PRIMARY KEY,
	ProductName nvarchar(50) NOT NULL
);

INSERT INTO Product
VALUES
	(1, 'M6'),
	(2, 'X3'),
	(3, 'Land Cruiser 200'),
	(4, 'Camry'),
	(5, 'Solaris'),
	(6,'Tucson');

CREATE TABLE Category (
	ID INT PRIMARY KEY,
	CategoryName nvarchar(50) NOT NULL 
);

INSERT INTO Category
VALUES
	(1, 'BMW'),
	(2, 'Toyota'),
	(3, 'Hyundai');


CREATE TABLE ProductCategory (
	Product_Id INT FOREIGN KEY REFERENCES Product(ID),
	Category_Id INT FOREIGN KEY REFERENCES Category(ID),
PRIMARY KEY (Product_Id, Category_Id)

);

INSERT INTO ProductCategory
VALUES
	(1,1),
	(2,1),
	(3,2),
	(4,2),
	(5,3),
	(6,3);

Select ProductName, CategoryName
FROM Product 
	LEFT JOIN ProductCategory 
ON Product.ID=ProductCategory.Product_Id
	LEFT JOIN Category 
ON ProductCategory.Category_Id = Category.ID;
