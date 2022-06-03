SELECT 
	u.name AS usuario,
  IF (MAX(YEAR(h.heard)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id
GROUP BY u.name
ORDER BY u.name;