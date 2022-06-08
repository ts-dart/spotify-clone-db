SELECT
  /* value_plan AS faturamento_minimo,
  value_plan AS faturamento_maximo */
  IF(value_plan = 0, 0.00, NULL) AS faturamento_minimo,
  IF(value_plan = 0, 7.99, NULL) AS faturamento_maximo,
  IF(AVG(value_plan) = , 0.00, NULL) AS faturamento_medio,
FROM 
  plans AS P,
  users AS U;



/* WHERE FMIN.value_plan = 0
WHERE FMAX.value_plan = 7.99 */

select avg(value_plan) from plans;

/* INNER JOIN plans AS FMAX
ON FMAX.value_plan = 7.99; */



