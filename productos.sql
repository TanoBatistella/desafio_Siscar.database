CREATE DATABASE ProductosDB;
GO

USE ProductosDB;
GO

CREATE TABLE Products (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME DEFAULT GETDATE()
);
GO

-- algunos datos de prueba
INSERT INTO Products (Name, Description, Price, Stock)
VALUES 
('Producto 1', 'Descripción del producto 1', 99.99, 100),
('Producto 2', 'Descripción del producto 2', 149.99, 50),
('Producto 3', 'Descripción del producto 3', 199.99, 75);
GO