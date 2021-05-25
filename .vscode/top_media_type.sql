SELECT COUNT(InvoiceLine.InvoiceLineId) as SalesCount, MediaType.Name
FROM MediaType
    INNER JOIN Track
    ON Track.MediaTypeId = MediaType.MediaTypeId
    INNER JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
GROUP BY MediaType.Name
ORDER BY SalesCount DESC
LIMIT 1