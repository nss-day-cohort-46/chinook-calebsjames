SELECT COUNT(InvoiceId) as InvoiceCount, TrackId
FROM InvoiceLine
GROUP BY TrackId
ORDER BY InvoiceCount DESC
LIMIT 5