-- 12. Mệnh Đề WHERE
-- Lọc dữ liệu trong truy vấn

-- SELECT column1, column2....
-- FROM table_name
-- WHERE codition;
-- Mệnh đề WHERE được sử dụng để lọc các bản ghi, được sử dụng để trích các bản ghi đáp ứng một điều kiện cụ thể

USE [NORTHWND];
GO

-- Liệt kê tất cả các nhân viên đến từ thành phố London 
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London';
GO

-- Liệt kê tất cả các nhân viên đến từ thành phố London, sắp xếp kết quả theo class name AZ 
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London'
ORDER BY [LastName] ASC;
GO

-- liệt kê các đơn hàng bị giao muộn biết rằng ngày cần giao hàng là [RequiredDate] ngày giao thực tế [ShippedDate]
SELECT  *
FROM [dbo].[Orders]
WHERE [RequiredDate] < [ShippedDate];
GO

-- Đếm số lượng đơn muộn
SELECT  COUNT (*) AS [COUNT]
FROM [dbo].[Orders]
WHERE [RequiredDate] < [ShippedDate];
GO

-- Liệt kê các đơn hàng được giảm giá hơn 10%
SELECT * 
FROM [dbo].[Order Details]
WHERE [Discount] > 0.1;
GO

-- Liệt kê các đơn hàng được gửi từ quốc gia "France"
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'France';
GO

-- Liệt kê các sản phẩm có số lượng trong kho hơn 20
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20;
GO



















