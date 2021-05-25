SELECT DISTINCT BillingCountry, COUNT(total)
FROM Invoice
GROUP BY BillingCountry