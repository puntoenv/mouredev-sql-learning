-- Relation -> 1 to 1
CREATE TABLE dni (
  dni_id INT AUTO_INCREMENT PRIMARY KEY,
  dni_number INT NOT NULL,
  user_id INT,
  UNIQUE (dni_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);

-- Relation -> 1 to many
CREATE TABLE languages (
  language_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Intermediary table for many-to-many relationship between users and languages
CREATE TABLE users_languages (
  users_languages_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  language_id INT,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (language_id) REFERENCES languages (language_id),
  UNIQUE (user_id, language_id)
);

INSERT INTO
  dni (dni_number, user_id)
VALUES
  (1111111, 1);

INSERT INTO
  dni (dni_number, user_id)
VALUES
  (2222222, 2);

INSERT INTO
  dni (dni_number, user_id)
VALUES
  (3333333, 3);

INSERT INTO
  dni (dni_number)
VALUES
  (4444444);

INSERT INTO
  companies (name)
VALUES
  ('MoureDev');

INSERT INTO
  companies (name)
VALUES
  ('Apple');

INSERT INTO
  companies (name)
VALUES
  ('Google');

INSERT INTO
  languages (name)
VALUES
  ('Swift');

INSERT INTO
  languages (name)
VALUES
  ('Kotlin');

INSERT INTO
  languages (name)
VALUES
  ('Javascript');

INSERT INTO
  languages (name)
VALUES
  ('Java');

INSERT INTO
  languages (name)
VALUES
  ('Python');

INSERT INTO
  languages (name)
VALUES
  ('C#');

INSERT INTO
  languages (name)
VALUES
  ('COBOL');

INSERT INTO
  users_languages (user_id, language_id)
VALUES
  (1, 1);

INSERT INTO
  users_languages (user_id, language_id)
VALUES
  (1, 2);

INSERT INTO
  users_languages (user_id, language_id)
VALUES
  (1, 5);

INSERT INTO
  users_languages (user_id, language_id)
VALUES
  (2, 3);

INSERT INTO
  users_languages (user_id, language_id)
VALUES
  (2, 5);
