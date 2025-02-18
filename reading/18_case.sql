SELECT
  *,
  CASE
    WHEN age > 17 THEN 'Is over age'
    WHEN age = 18 THEN 'Just turned over age'
    ELSE 'Is under age'
  END AS "age_text"
FROM
  users;

SELECT
  *,
  CASE
    WHEN age > 17 THEN true
    ELSE false
  END AS "age_text"
FROM
  users;
