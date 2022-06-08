SELECT 
  U.user AS usuario, 
  IF (MAX(H.reproduction_date) LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario

FROM users AS U, history AS H
  WHERE U.user_id = H.user_id

GROUP BY U.user
ORDER BY U.user; 