--Bài 11: Các phép toán cộng, trừ, nhân, chia, chia lấy dư


USE [NORTHWND];
GO


--Tính số lượng sản phẩm còn lại trong kho (UnitsInStock) sau khi bán hết các sản phẩm đã được đặt hàng (UnitsOnStock)
-- StockReamining = UnitsInStock - UnitsOnOrder
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder, (UnitsInStock - UnitsOnOrder) AS [StockRemaining] FROM dbo.Products;
GO

--Tính giá trị đơn hàng chi tiết cho tất cả các sản phẩm trong bảng OrderDetails
-- OrderDetailValue = UnitPrice x Quantity
SELECT UnitPrice, Quantity, (UnitPrice * Quantity) AS [OrderDetailValue] FROM dbo.[Order Details];
GO

--Tính tỉ lệ giá vận chuyển đơn đặt hàng (Freight) trung bình của các đơn hàng trong bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight)
--FreightRatio = AVG(Freight)/Max(Freight)
SELECT AVG(Freight)/MAX(Freight) AS [FreightRatio] FROM dbo.Orders;
GO

--Liệt kê danh sach các sản phẩm và giá UniPrice của từng sản phẩm sẽ được giảm giá 10%
SELECT ProductName, UnitPrice, (UnitPrice * 0.9) AS [Giảm giá] FROM dbo.Products;
GO







