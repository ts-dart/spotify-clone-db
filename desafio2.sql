SELECT 
  COUNT(DISTINCT S.song) AS cancoes,
  COUNT(DISTINCT A.artist) AS artistas,
  COUNT(DISTINCT AL.album) AS albuns
FROM songs AS S
INNER JOIN artists AS A
INNER JOIN albums AS AL;

