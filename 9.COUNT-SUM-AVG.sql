--9. COUNT, SUM, AVG

--SELECT COUNT(column_name)
--FROM table_name;
--Đếm số lượng dữ liệu khác NULL trong một cột
--Sử dụng COUNT(*) khi muốn đếm số lượng bản ghi

--SELECT SUM(column_name)
--FROM table_name;
--Tính tổng giá trị của một cột, nếu có giá trị NULL thì kết quả là NULL

--SELECT AVG(column_name)
--FROM table_name;
--Tính giá trị trung bình của một cột
--Nếu tất cả các giá trị trong cột là NUll thì kết quả của AVG là NULL
--Nếu chỉ có 1 vài giá trị NULL thì AVG sẽ bỏ qua các giá trị NULL và tính các giá trị khác

--Sử dụng câu lệnh đếm số lượng khách hàng có trong bảng Customers
SELECT COUNT(*) AS [NumberOfCustomers] FROM dbo.Customers;
GO

SELECT COUNT(CustomerID) AS [NumberOfCustomers] FROM dbo.Customers;
GO

--Tính tổng số tiền vận chuyển Freight của Orders
SELECT SUM(Freight) AS [SumFreight] FROM dbo.Orders;
GO

--Tính trung bình số lượng đặt hàng (Quantity) của các sản phẩm trong Order Details
SELECT AVG(Quantity) AS [AvgQuantity] FROM dbo.[Order Details];
GO

--Đếm số lượng, tính tổng số lượng trong kho và trung bình giá sản phẩm trong bảng Product
SELECT COUNT(*) AS [NumberOfProducts], SUM(UnitsInStock) AS [SumUnitsInStock], AVG(UnitPrice) AS [AvgUnitPrice] FROM dbo.Products;
GO

--Bài 1: Đếm sô lượng đơn hàng từ bảng Orders với 2 cách:
-- Cách 1: dùng dấu *
-- Cách 2: dùng mã đơn hàng

SELECT COUNT(*) AS [NumberOfOrders] FROM dbo.Orders;
GO

SELECT COUNT(OrderID) AS [NumberOfOrders] FROM dbo.Orders;
GO

--Bài 2: từ bảng [Order Detail] hãy tính trung bình cho cột UnitPrice
--và tính tổng cho cột Quantity
SELECT AVG(UnitPrice) AS [AvgUnitPrice], SUM(Quantity) AS [SumQuantity] FROM dbo.[Order Details];
GO
















