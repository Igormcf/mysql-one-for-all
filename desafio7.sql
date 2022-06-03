SELECT
	at.name AS artista,
  al.name AS album,
  COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artist AS at
INNER JOIN SpotifyClone.album AS al
INNER JOIN SpotifyClone.follow AS f
ON at.artist_id = al.artist_id AND f.artist_id = at.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;