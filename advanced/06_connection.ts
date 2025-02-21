/*
 * Realiza una conexión desde el lenguaje que hayas seleccionado a la siguiente base de datos MySQL:
 * - Host: mysql-5707.dinaserver.com
 * - Port: 3306
 * - User: mouredev_read
 * - Password: mouredev_pass
 * - Database: moure_test
 *
 * Una vez realices la conexión, lanza la siguiente consulta e imprime el resultado:
 * - SELECT * FROM `challenges`
 *
 * Se pueden usar librerías para realizar la lógica de conexión a la base de datos.
 */

import { createConnection } from "mysql";

function get_user(user: string) {
  let connection = createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "iusevimbtw",
    database: "hello_mysql",
    multipleStatements: true,
  });

  // Handle connection errors
  connection.on("error", (err) => {
    console.error("Database connection error:", err);
    if (err.code === "PROTOCOL_CONNECTION_LOST") {
      console.error("Database connection was closed.");
    }
  });

  try {
    connection.connect((err) => {
      if (err) {
        console.error("Error connecting to database:", err);
        return;
      }

      connection.query(
        "SELECT * FROM `users` WHERE name = ?",
        [user],
        (err, rows, fields) => {
          try {
            if (err) {
              console.error("Error executing query:", err);
              return;
            }

            let result = JSON.parse(JSON.stringify(rows));

            // console.log(
            //   "-----------------------------------------------------------------------------------------",
            // );
            // console.log(
            //   "   USER_ID    |          NAME          |           SURNAME         |             AGE       ",
            // );
            // result.map((e) => {
            //   console.log(
            //     "-------------------------------------------------------------------------------------",
            //   );
            //   console.log(
            //     `   ${e.user_id}     | ${e.name}  |       ${e.surname}       | ${e.age}`,
            //   );
            //   console.log(
            //     "-------------------------------------------------------------------------------------",
            //   );
            // });

            // Close connection after query is complete

            console.log(result);

            connection.end((err) => {
              if (err) {
                console.error("Error closing connection:", err);
              }
            });
          } catch (error) {
            console.error("Error processing query results:", error);
            connection.end();
          }
        }
      );
    });
  } catch (error) {
    console.error("Unexpected error:", error);
    connection.end();
  }
}

// get_user("Sebastian'; UPDATE `users` SET age = '100' WHERE name = 'Sebastian");
//
get_user("Sebastian");
