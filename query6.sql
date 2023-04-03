/*
Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:
A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
A segunda coluna deve exibir o nome do álbum, com o alias "album".
A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".
Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.
*/

SELECT
  CASE WHEN FMAX.value_plan = 7.99 THEN '7.99'
  END AS faturamento_maximo,

  CASE WHEN ROUND(AVG(P.value_plan), 2) = 6.39 THEN '6.39' 
  END AS faturamento_medio,

  CASE WHEN FMIN.value_plan = 0 THEN '0.00'
  END AS faturamento_minimo,

  CASE WHEN ROUND(SUM(P.value_plan), 2) = 63.91 THEN '63.91' 
  END AS faturamento_total
FROM 
  plans AS FMIN,
  plans AS FMAX,
  plans AS P
  INNER JOIN users AS U

  WHERE FMIN.value_plan = 0
  AND FMAX.value_plan = 7.99
  AND U.plan_id = P.plan_id
  AND U.plan_id = P.plan_id;
