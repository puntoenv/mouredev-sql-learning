SELECT
  *
FROM
  users
  LEFT JOIN dni ON users.user_id = dni.dni_id;

SELECT
  name,
  dni_number
FROM
  users
  LEFT JOIN dni ON users.user_id = dni.dni_id;
