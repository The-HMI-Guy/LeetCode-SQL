/* Write a query against Sales.Orders table that 
reutrns orders placed in June 2015 */
SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
--WHERE YEAR(orderdate) = '2015' AND MONTH(orderdate) = 6
    --Incorrect: Should not apply manipulation to filtered columns. SQL Server 
    -- can't use an index efficiently.  Best to use
WHERE orderdate >= '20150601' AND orderdate < '20150701'