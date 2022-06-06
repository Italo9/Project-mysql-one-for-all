SELECT usuarios.nome_usuario AS usuario, COUNT(reproducao_usuarios.musica_id) AS qtde_musicas_ouvidas, ROUND((SUM(musicas.duracao_musica)/60),2) AS total_minutos
FROM SpotifyClone.usuarios 
INNER JOIN SpotifyClone.reproducao_usuarios  
ON usuarios.usuario_id = reproducao_usuarios.usuario_id  
INNER JOIN SpotifyClone.musicas 
ON musicas.musica_id = reproducao_usuarios.musica_id
GROUP BY usuario
ORDER BY usuario;
