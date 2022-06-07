SELECT artistas.nome_artista AS artista, albuns.nome_album AS album, COUNT(usuarios_artista.artista_id) AS seguidores
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns 
ON artistas.artista_id = albuns.artista_id
INNER JOIN SpotifyClone.usuarios_artista
ON artistas.artista_id = usuarios_artista.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album;