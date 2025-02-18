SELECT
  *
FROM
  users
LIMIT
  3;

SELECT
  *
FROM
  users
WHERE
  NOT email = 'sebssjb@gmail.com'
  OR age = 21
LIMIT
  2;
