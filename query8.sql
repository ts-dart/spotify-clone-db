/*
Mostre uma relação dos álbuns produzidos por um artista específico, neste caso "Walter Phoenix". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:
O nome da pessoa artista, com o alias "artista".
O nome do álbum, com o alias "album".
Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.
*/

SELECT
  A.artist AS artista,
  AL.album AS album
FROM artists AS A
INNER JOIN albums AS AL
  ON A.artist_id = AL.artist_id
  WHERE A.artist_id = 1;

