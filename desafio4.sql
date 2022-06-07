/* SELECT
  DISTINCT U.user AS usuario,
  IF (DISTINCT H.reproduction_date LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario
FROM users AS U

INNER JOIN history AS H
  ON U.user_id = H.user_id

ORDER BY U.user; */

/* SELECT
  DISTINCT IF (H.reproduction_date LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario,
  U.user AS usuario
FROM history AS H
INNER JOIN users AS U
ON H.user_id = U.user_id
ORDER BY U.user; */

SELECT 
  U.user AS usuario, 
  IF (MAX(H.reproduction_date) LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario

FROM users AS U, history AS H
  WHERE U.user_id = H.user_id

GROUP BY U.user
ORDER BY U.user; 