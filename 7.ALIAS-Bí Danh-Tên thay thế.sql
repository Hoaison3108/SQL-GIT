--ALIAS Bí danh, tên thay thế
--SELECT column_name AS alias_name
--FROM table_name
--Đặt tên thay thế các cột giúp cho việc đọc hiểu câu lệnh dễ hơn

USE [NORTHWND]
GO

--Viết câu lệnh lấy "CompanyName" và đặt tên thay thế là "công ty"
-- "PostalCode" đặt tên là "Mã bưu điện"
SELECT CompanyName AS [Công ty], PostalCode AS [Mã bưu điện] FROM dbo.Customers;
GO

--Viết câu lệnh ra "LastName" và đặt têm thay thế là "Họ" và "FirstName" thay thế "Tên"
SELECT LastName AS [Họ], FirstName AS [Tên] FROM dbo.Employees;
GO

--Viết câu lệnh lấy ra 15 dòng đầu tiên của các cột trong bảng Orders, đặt tên thay thế cho bảng Orders là "O"
SELECT TOP 15 [O].* FROM dbo.Orders AS [O];
GO

--Viết câu lệnh lấy ra các cột và đặt tên thay thế
--ProductName => Tên sản phẩm
--SupplierID => Mã nhà cung cấp
--CategoryID => Mã thể loại
--đặt tên thay thế cho Product là "P" sử dụng tên thay thế khi truy cấn các cột bên trênn và lấy ra 5 sản phầm
SELECT TOP 5 p.ProductName AS [Tên sản phẩm],
p.SupplierID AS [Mã nhà cung cấp],
p.CategoryID AS [Mã thể loại]
FROM dbo.Products AS [p];
GO
























