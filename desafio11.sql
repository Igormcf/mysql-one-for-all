SELECT
	s.name AS nome_musica,
  CASE
		WHEN s.name LIKE '%Streets' THEN REPLACE(s.name, 'Streets', 'Code Review')
        WHEN s.name LIKE '%Her Own' THEN REPLACE(s.name, 'Her Own', 'Trybe')
        WHEN s.name LIKE '%Inner Fire' THEN REPLACE(s.name, 'Inner Fire', 'Project')
        WHEN s.name LIKE '%Silly' THEN REPLACE(s.name, 'Silly', 'Nice')
        WHEN s.name LIKE '%Circus' THEN REPLACE(s.name, 'Circus', 'Pull Request')
	END AS novo_nome
FROM SpotifyClone.song AS s
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica ASC;