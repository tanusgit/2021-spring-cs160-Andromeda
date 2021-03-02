const connection = require("../mysql");
/**
 * Textbook api
 */

const textbookAPI = (app) => {
  app.get("/api/textbook/all", (req, res) => {
    connection.query("SELECT * FROM TextBook", function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(rows);
    });
  });

  app.get("/api/textbook/:textbook_id", (req, res) => {
    res.status(200).send("GET Textbook request");
  });
};

module.exports = textbookAPI;
