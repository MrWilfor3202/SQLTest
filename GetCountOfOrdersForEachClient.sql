SELECT Customers.CustomerID, Customers.Name, COALESCE(SUM(Orders.Count), '0') AS Count
	FROM Customers LEFT JOIN Orders ON Orders.CustomerID = Customers.CustomerID
	GROUP BY Customers.CustomerID, Customers.Name
