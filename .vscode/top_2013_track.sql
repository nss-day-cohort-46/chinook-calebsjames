SELECT COUNT(track.TrackId) as TCount, track.name
FROM InvoiceLine
    INNER JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    INNER JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId 
WHERE InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
Group BY track.name
ORDER BY TCount DESC
LIMIT 1