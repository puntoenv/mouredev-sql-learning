DELIMITER / / CREATE PROCEDURE p_all_users () BEGIN
SELECT
  *
FROM
  users;

END / / CALL p_all_users ();

DROP IF EXISTS PROCEDURE p_age_users;

DELIMITER / / CREATE PROCEDURE p_age_users (IN age_param INT) BEGIN
SELECT
  *
FROM
  users
WHERE
  age = age_param;

END / / CALL p_age_users (5000);
