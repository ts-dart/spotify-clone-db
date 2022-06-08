SELECT 
  A.artist AS artista,
  AL.album AS album,
  COUNT(F.artist_id) AS seguidores
FROM artists AS A

INNER JOIN albums AS AL
  ON A.artist_id = AL.artist_id

INNER JOIN followers AS F
  ON A.artist_id = F.artist_id

GROUP BY A.artist_id, AL.album

ORDER BY
  COUNT(F.artist_id) DESC, 
  A.artist ASC, 
  AL.album ASC;

