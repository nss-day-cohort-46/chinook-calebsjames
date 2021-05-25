SELECT DISTINCT A.Title AS Album, MediaType.Name as MediaType, Genre.Name as Genre, T.Name AS Track, T.Composer, T.Bytes, T.UnitPrice, T.Milliseconds
FROM Track AS T
    INNER JOIN Album AS A
    ON A.AlbumId = T.AlbumId
    INNER JOIN Genre
    ON Genre.GenreId = T.GenreId
    INNER JOIN MediaType
    ON MediaType.MediaTypeId = T.MediaTypeId
    