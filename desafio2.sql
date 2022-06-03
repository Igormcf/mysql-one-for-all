SELECT 
	COUNT(c.song_id) AS cancoes,
  COUNT(DISTINCT at.artist_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.song AS c
INNER JOIN SpotifyClone.album AS al
ON c.album_id = al.album_id
INNER JOIN SpotifyClone.artist AS at
ON al.artist_id = at.artist_id;