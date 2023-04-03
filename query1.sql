/*
Crie uma QUERY que exiba três colunas:
A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".
A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".
A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".
*/

SELECT 
  COUNT(DISTINCT S.song) AS cancoes,
  COUNT(DISTINCT A.artist) AS artistas,
  COUNT(DISTINCT AL.album) AS albuns
FROM songs AS S
INNER JOIN artists AS A
INNER JOIN albums AS AL;

