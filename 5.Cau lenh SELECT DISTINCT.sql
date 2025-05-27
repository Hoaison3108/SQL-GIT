-- Lấy ra các dữ liệu riêng biệt, không trùng lập
-- SELECT DISTINCT column1, column2 FROM table_name;

USE NORTHWND
GO

--Viết câu lệnh lấy ra tên các quốc gia (country) từ bảng customers
SELECT DISTINCT Country FROM dbo.Customers;
GO

--Viết câu lệnh lấy ra tên mã bưu điện (postalCode) khác nhau 
SELECT DISTINCT PostalCode FROM dbo.Customers
GO

--Viết câu lệnh lấy rta các dữ liệu khác nhau về họ của nhân vien (LastName) 
-- và cách gọi danh hiệu lịch sự (TitleOfCourtery)
SELECT DISTINCT LastName, TitleOfCourtesy FROM dbo.Employees;
GO

--Viết câu lênh lấy ra mã đơn vị vận chuyển (ShipVia) khác nhau của các đơn hàng - Orders
SELECT DISTINCT ShipVia FROM dbo.Orders
GO







































