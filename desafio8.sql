SELECT
  at.name AS artista,
  al.name AS album
FROM SpotifyClone.artist AS at
INNER JOIN SpotifyClone.album AS al
ON at.artist_id = al.artist_id
WHERE at.name = 'Walter Phoenix'
ORDER BY album ASC;