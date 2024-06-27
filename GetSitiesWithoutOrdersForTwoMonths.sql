SELECT Customers.City FROM Customers 
	LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.City
HAVING MAX(Orders.Date) <= DATEADD(DAY, 1, EOMONTH(GETDATE(), -2))
	OR MAX(Orders.Date) IS NULL
