SELECT
  name,
  init_date AS 'Start date in programming'
FROM
  users
WHERE
  name = 'Sebastian';

SELECT
  name,
  init_date AS "Start date in programming"
FROM
  users
WHERE
  name = "Sebastian";

SELECT
  CONCAT ("Nombre: ", name, " - Apellido: ", surname)
FROM
  users;

SELECT
  CONCAT ("Nombre: ", name, " - Apellido: ", surname) AS "full_name"
FROM
  users;
