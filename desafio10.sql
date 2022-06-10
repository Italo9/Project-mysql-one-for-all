SELECT musicas.nome_musicas AS nome, COUNT(reproducao_usuarios.musica_id)  AS reproducoes
FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.reproducao_usuarios 
ON musicas.musica_id = reproducao_usuarios.musica_id
INNER JOIN SpotifyClone.usuarios
ON reproducao_usuarios.usuario_id = usuarios.usuario_id
INNER JOIN SpotifyClone.planos
ON usuarios.plano_usuario = planos.plano_id
WHERE nome_plano = 'gratuito' OR nome_plano = 'pessoal'
GROUP BY reproducao_usuarios.musica_id
ORDER BY musicas.nome_musicas;
