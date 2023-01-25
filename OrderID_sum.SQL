SELECT OrderDetails.OrderDetailID, OrderDetails.Quantity, Products.Price, SUM(Quantity*Price) AS PriceForOrderDetailID
FROM  OrderDetails
INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Products
ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetailID
