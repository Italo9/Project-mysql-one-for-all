SELECT  usuarios.nome_usuario AS usuario,  IF(max(YEAR(DATE(reproducao_usuarios.data_reprodu))) >= '2021' , 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios 
INNER JOIN SpotifyClone.reproducao_usuarios 
ON usuarios.usuario_id = reproducao_usuarios.usuario_id
GROUP BY usuario
ORDER BY usuario;
