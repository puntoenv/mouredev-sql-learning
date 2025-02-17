SELECT
  *
FROM
  users
WHERE
  NOT email = 'sebssjb@gmail.com';

SELECT
  *
FROM
  users
WHERE
  NOT email = 'sebssjb@gmail.com'
  AND age > 25;

SELECT
  *
FROM
  users
WHERE
  NOT email = 'sebssjb@gmail.com'
  OR age > 25;
