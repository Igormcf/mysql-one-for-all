SELECT
	u.name AS usuario,
  COUNT(h.song_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(s.time_song) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id AND s.song_id = h.song_id
GROUP BY u.user_id
ORDER BY u.name;