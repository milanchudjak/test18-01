SELECT OrderDetails.OrderDetailID, OrderDetails.OrderID, Orders.CustomerID, OrderDetails.ProductID, OrderDetails.Quantity, Products.Price, SUM(Quantity*Price) AS PriceForOrderDetailID
FROM  OrderDetails
INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Products
ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetailID