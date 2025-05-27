--Câu lệnh	SELECT TOP giới hạn số lượng dòng hoặc % được trả về khi gọi lênh SELECT
--SELECT TOP number percent column_name(s) 
--FROM table_name 
--WHERE condition

USE [NORTHWND]
GO

--Viết câu lệnh lấy ra 05 dòng đàu tiên trong bảng Customers
SELECT TOP 5 * FROM dbo.Customers;
GO

--Viết câu lệnh lấy ra 30% nhân viên của Công ty hiện tại
SELECT TOP 30 PERCENT * FROM dbo.Employees;
GO

--Viết câu lệnh lấy ra các đơn hàng với mã khách hàng không trùng lập và chỉ lấy 5 dòng đầu tiên
SELECT DISTINCT TOP 5 CustomerID  FROM dbo.Orders;
GO

--Viết câu lệnh lấy ra các sản phẩm có mã thể loại không trùng lặp và chỉ lấy ra 3 dòng đầu tiên
SELECT DISTINCT TOP 3 CategoryID FROM dbo.Products;
GO






