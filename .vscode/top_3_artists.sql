SELECT Artist.name as Artist, SUM(InvoiceLine.UnitPrice) as Sales
FROM InvoiceLine
    INNER JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    INNER JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
    INNER JOIN Album
    ON Album.AlbumId = Track.AlbumId
    INNER JOIN Artist
    ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist
ORDER BY Sales DESC
LIMIT 3