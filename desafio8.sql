SELECT
  A.artist AS artista,
  AL.album AS album
FROM artists AS A
INNER JOIN albums AS AL
  ON A.artist_id = AL.artist_id
  WHERE A.artist_id = 1;

