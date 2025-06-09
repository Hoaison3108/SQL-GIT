-- 13. Toán tủ AND, OR, NOT
-- Toán tử điều kiện

-- AND/ OR
-- SELECT column1, column2,...
-- FROM table_name
-- WHERE condition1 AND/OR condition2 AND/OR condition3

-- NOT
-- SELECT column1, column2,...
-- FROM table_name
-- WHERE NOT condition;
-- Hiển thị một bản ghi nếu điều kiện có giá trị không đúng - FALSE

USE [NORTHWND];
GO

-- Liệt kê tất cả các sản phẩm có số lượng trong kho [UnitsInStock] nhỏ hơn 50 hoặc lớn hơn 100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100;
GO

-- Liệt kê các đơn hàng được giao đến brazil đã bị muộn, biết ngày phải giao hàng là [RequiredDate] ngày giao thực tế là [ShippedDate]
SELECT * 
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'Brazil' AND ([RequiredDate] < [ShippedDate]);
GO

-- Lấy ra các sản phẩm cso giá dưới 100$ và mã thể loại khác 1 dùng NOT
SELECT * 
FROM [dbo].[Products]
WHERE NOT [UnitPrice] > 100 AND [CategoryID] != 1; 
GO

-- Liệt kê các đơn hàng có giá vận chuyển [Freight] trong khoản [50, 100]
SELECT * 
FROM [dbo].[Orders]
WHERE [Freight] > 50 AND [Freight] < 100;
GO

-- Liệt kê các sản phảm có số tồn kho [UnitsInStock] > 20 và [UnitsOnOrder] < 20
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20 AND [UnitsOnOrder] < 20;
GO


