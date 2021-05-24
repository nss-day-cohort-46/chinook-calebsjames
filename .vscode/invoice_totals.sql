SELECT Customer.FirstName as CustomerFirstName, Customer.LastName as CustomerLastName, Total, Employee.FirstName as EmployeeFirstName, Employee.LastName as EmployeeLastName, BillingCountry
From Customer
    INNER JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
    INNER JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
