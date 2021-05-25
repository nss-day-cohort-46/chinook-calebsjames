SELECT BillingCountry, MAX(Total)
    FROM (SELECT DISTINCT BillingCountry, SUM(total) AS Total
    FROM Invoice
    GROUP BY BillingCountry)