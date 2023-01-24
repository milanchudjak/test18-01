SELECT Orders.CustomerID, SUM(Quantity*Price) AS PriceForOrderID
FROM  OrderDetails
INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Products
ON Products.ProductID = OrderDetails.ProductID
GROUP BY CustomerID
ORDER BY PriceForOrderID DESC
