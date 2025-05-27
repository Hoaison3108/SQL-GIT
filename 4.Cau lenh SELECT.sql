-- viet cau lenh sql lay ra ten cua tat ca cac san pham
SELECT [ProductName] FROM [dbo].[Products];
GO

-- viet cau lenh lay ra ten san pham, gia ban tren moi don vi, so luong san pham
SELECT [ProductName], [UnitPrice], [QuantityPerUnit] FROM [dbo].[Products];
GO

-- viet cau lenh lay ra ten cong ty cua khach hang va quoc gia cua khach hang do
SELECT CompanyName, Country FROM dbo.Customers;
GO

--viet cau lenh lay ra ten va so dien thoai cua tat ca nha cung cap hang
SELECT ContactName, Phone FROM dbo.Suppliers;
GO




