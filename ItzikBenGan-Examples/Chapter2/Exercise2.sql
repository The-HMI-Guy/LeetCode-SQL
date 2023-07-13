/* Write a query against Sales.Orders table that 
reutrns orders placed on the last day of the month */
SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate = EOMONTH(orderdate)