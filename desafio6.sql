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
