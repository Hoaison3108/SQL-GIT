--SELECT MIN(...) nhỏ nhất
--SELECT MAX(...) lớn nhất
--Tìm giá trị nhỏ nhất và lớn nhất 

--SELECT MIN(column_name)
--FROM table_name;

--SELECT MAX(column_name)
--FROM table_name;
USE [NORTHWND];
GO

--Viết câu lệnh tìm giá trị thấp nhất cảu các sản phẩm trong Products
SELECT MIN (UnitPrice) AS [MinPrice] FROM dbo.Products;
GO

--Viết câu lệnh lấy ra ngày đặt hàng gần đây nhất từ bảng Orders
SELECT MAX (OrderDate)  AS [MaxOrderDate] FROM dbo.Orders;
GO

--Viết cấu lệnh lấy ra sản phẩm ( lấy mã và tên) có số lượng tồn kho (UnitsInStock) lớn nhất
SELECT MAX (UnitsInStock) FROM [dbo].[Products];
GO

--Bài 1: Hãy cho biết tuổi đời của nhân viên lớn nhất công ty
SELECT MIN(BirthDate) FROM dbo.Employees;
GO




