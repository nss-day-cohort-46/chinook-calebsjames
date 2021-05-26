SELECT MAX(Total), FirstName, lastName
    FROM (SELECT Employee.FirstName as FirstName, Employee.lastName as LastName, SUM(total) as Total
        FROM Customer
            INNER JOIN Employee
            on Employee.EmployeeId = Customer.SupportRepId
            INNER JOIN Invoice
            on Invoice.CustomerId = Customer.CustomerId
        WHERE InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
    




GROUP BY EmployeeId
ORDER BY Total DESC) 