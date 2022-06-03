SELECT
  ROUND(MAX(p.value), 2) AS faturamento_maximo,
  ROUND(AVG(p.value), 2) AS faturamento_medio,
	ROUND(MIN(p.value), 2) AS faturamento_minimo,
  ROUND(SUM(p.value), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.users AS u
ON p.plan_id = u.plan_id;