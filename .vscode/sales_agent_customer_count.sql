SELECT Employee.FirstName as FirstName, Employee.LastName as LastName, COUNT(CustomerId)
FROM Employee
    INNER JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY (EmployeeId)