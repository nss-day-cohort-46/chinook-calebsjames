SELECT DISTINCT PL.name, T.TrackId
FROM PlaylistTrack
    INNER JOIN Playlist AS PL
    ON PL.PlaylistId = PlaylistTrack.PlaylistId
    INNER JOIN Track AS T
    ON T.TrackId = PlaylistTrack.TrackId
GROUP BY pl.name