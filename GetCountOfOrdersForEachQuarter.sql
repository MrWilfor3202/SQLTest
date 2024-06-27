SELECT DATEPART(QUARTER, Orders.Date) AS Quarter, SUM(Orders.Count) AS Counts FROM Orders 
	WHERE YEAR(Orders.Date) = YEAR(GETDATE()) - 1
	GROUP BY DATEPART(QUARTER, Orders.Date)
