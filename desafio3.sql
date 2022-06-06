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
