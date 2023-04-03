/*
Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas no ano de 2021 se baseando na data mais recente no histórico de reprodução.
A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
A segunda coluna deve ter o alias "condicao_usuario" e exibir se a pessoa usuária está ativa ou inativa.
O resultado deve estar ordenado em ordem alfabética.
*/

SELECT 
  U.user AS usuario, 
  IF (MAX(H.reproduction_date) LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario

FROM users AS U, history AS H
  WHERE U.user_id = H.user_id

GROUP BY U.user
ORDER BY U.user; 