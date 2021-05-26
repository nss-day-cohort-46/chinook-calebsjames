SELECT InvoiceLineId, IL.TrackId, InvoiceId, IL.UnitPrice, Quantity, name
FROM InvoiceLine as IL
    INNER JOIN Track
    ON IL.TrackId = Track.trackId