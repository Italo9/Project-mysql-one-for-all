-- SELECT usuarios.nome_usuario AS usuario, IF(YEAR(DATE(reproducao_usuarios.data_reprodu)) = (YEAR(CURRENT_DATE()) -1), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
-- FROM SpotifyClone.usuarios 
-- INNER JOIN SpotifyClone.reproducao_usuarios 
-- ON usuarios.usuario_id = reproducao_usuarios.usuario_id 

-- ORDER BY usuario;

-- SELECT usuarios.nome_usuario AS usuario, IF(YEAR(DATE(reproducao_usuarios.data_reprodu)) = (YEAR(CURRENT_DATE()) -1), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
-- FROM SpotifyClone.usuarios 
-- INNER JOIN SpotifyClone.reproducao_usuarios 
-- ON usuarios.usuario_id = reproducao_usuarios.usuario_id

-- ORDER BY usuario;