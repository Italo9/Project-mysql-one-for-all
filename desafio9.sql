SELECT COUNT(reproducao_usuarios.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducao_usuarios
WHERE reproducao_usuarios.usuario_id = 3;