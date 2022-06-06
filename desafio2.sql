
SELECT 
(SELECT COUNT(musicas.nome_musicas) FROM SpotifyClone.musicas) AS cancoes,
(SELECT COUNT(artistas.nome_artista) FROM SpotifyClone.artistas) AS artistas,
(SELECT COUNT(albuns.nome_album) FROM SpotifyClone.albuns) AS albuns
;
