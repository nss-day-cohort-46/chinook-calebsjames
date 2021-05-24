SELECT Employee.FirstName, Employee.LastName, InvoiceId
FROM Customer
    INNER JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
    INNER JOIN Invoice
    on Customer.CustomerId = Invoice.CustomerId
ORDER BY InvoiceId ASC