SELECT musicas.nome_musicas AS cancao, COUNT(reproducao_usuarios.musica_id) AS reproducoes
FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.reproducao_usuarios 
ON musicas.musica_id = reproducao_usuarios.musica_id 
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;