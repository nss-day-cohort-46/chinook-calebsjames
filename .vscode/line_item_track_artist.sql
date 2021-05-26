SELECT InvoiceLineId, InvoiceId, T.TrackId, T.UnitPrice, Quantity, T.Name as TrackName, A.Name as ArtistName
FROM Track as T
    INNER JOIN InvoiceLine
    ON T.trackId = InvoiceLine.TrackId
    INNER JOIN Album
    ON T.AlbumId = Album.AlbumId
    INNER JOIN Artist as A
    ON Album.ArtistId = A.ArtistId