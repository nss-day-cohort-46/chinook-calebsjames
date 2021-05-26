SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
INNER JOIN Customer
    ON Invoice.CustomerID = Customer.CustomerId
WHERE BillingCountry = "Brazil"


