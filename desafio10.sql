SELECT
	s.name AS nome,
  COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u
ON s.song_id = h.song_id AND u.user_id = h.user_id
WHERE u.plan_id IN (1, 4)
GROUP BY nome
ORDER BY nome ASC;