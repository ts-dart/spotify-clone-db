/*
Crie uma QUERY que deverá ter apenas três colunas:
A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
A segunda coluna deve possuir o alias "qtde_musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.
Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.
*/

SELECT 
  U.user AS usuario,
  COUNT(H.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(S.duration_seconds / 60), 2) AS total_minutos
FROM users AS U

INNER JOIN history AS H
  ON U.user_id = H.user_id

INNER JOIN songs AS S
  ON H.user_id = U.user_id
  AND H.song_id = S.song_id

GROUP BY U.user
ORDER BY U.user ASC;
