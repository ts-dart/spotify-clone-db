SELECT
  COUNT(song_id) AS quantidade_musicas_no_historico
FROM
  history
  WHERE
    user_id = 3;