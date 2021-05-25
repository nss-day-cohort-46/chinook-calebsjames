SELECT Invoice.invoiceid, COUNT (InvoiceLine.InvoiceLineId) AS LineItems, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total
FROM Invoice
    INNER JOIN InvoiceLine
    ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId
