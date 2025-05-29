--Bài 10: ORDER BY sắp xếp kết quả trả về của truy vấn
--SELECT column1, column2,...
--FROM table_name
--ORDER BY column1, column2,... ASC|DESC;
--ASC: sắp xếp tăng dần mặc định không ghi
--DESC: sắp xếp giảm dần

USE [NORTHWND];
GO

--Liệt kê tất cả các nhà cung cấp theo thứ tự tên đơn vị CompanyName Suppliers
SELECT * FROM dbo.Suppliers ORDER BY CompanyName;
GO

--Liệt kê tất cả các sản phẩm theo thứ tự giá giảm dần Products
SELECT * FROM dbo.Products ORDER BY UnitPrice DESC;
GO

--Liệt kê tất cả các nhân viên theo thứ tự họ và tên đệm A-Z không dùng ASC|DESC Employees
SELECT *  FROM dbo.Employees ORDER BY LastName, FirstName;
GO

--Lấy ra một sản phẩm có số lượng bán cao nhất từ bảng Order Details không được dùng MAX
SELECT TOP 1 *  FROM dbo.[Order Details] ORDER BY Quantity;
GO

--Bài 1: Liệt kê danh sách các đơn đặt hàng (OrderID) trong bản Orders theo thú tự giảm dần của ngày đặt hàng (OrderDate)
SELECT OrderID FROM dbo.Orders ORDER BY OrderDate;
GO

--Bài 2: Liệt kê tên, đơn giá, số lượng tồn kho (UnitsInStock) của tất cả các sản phẩm trong bảng Products theo thứ tự giảm dần của UnitsInStock
SELECT ProductName, UnitPrice, UnitsInStock FROM dbo.Products ORDER BY UnitsInStock;
GO






