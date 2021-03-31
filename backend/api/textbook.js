const connection = require("../mysql");
/**
 * Textbook api
 */

const textbookAPI = (app) => {
  app.get("/api/textbook/all", (req, res) => {
    connection.query("SELECT * FROM book", function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(rows);
    });
  });

  //Retrieve a single book
  app.get("/api/textbook/:textbook_id", (req, res) => {
    connection.query(`SELECT * FROM book WHERE id = ${req.params.textbook_id}`, function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(rows);
    });
  });

  //List all book from specific author
  app.get("/api/textbook/author/:author_name", (req, res) => {
    connection.query(`SELECT * FROM book WHERE author_name = "${req.params.author_name}"`, function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(rows);
    });
  });

  //Create a book entity
  app.post("/api/textbook/create", (req, res) => {
    connection.query(`INSERT INTO book VALUES ("${req.body.id}", "${req.body.isbn}", "${req.body.publisher_name}", "${req.body.author_name}", "${req.body.year}", "${req.body.title}", "${req.body.price}", "${req.body.user_id}")`, function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(req.body);
    });
  });
  
  //Update a book information by id
  app.put("/api/textbook/update", (req, res) => {
    connection.query(`UPDATE book SET isbn="${req.body.isbn}", publisher_name="${req.body.publisher_name}", author_name="${req.body.author_name}", year="${req.body.year}", title="${req.body.title}", price="${req.body.price}", user_id="${req.body.user_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(req.body);
    });
  });
  
  //Delete a specific book
  app.delete("/api/textbook/delete/:textbook_id", (req, res) => {
    connection.query(`DELETE FROM book WHERE id = ${req.params.textbook_id}`, function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(rows);
    });
  });

  app.post("/api/textbook/test", (req, res) => {
    connection.query(`SELECT * FROM book`, function (err, rows, fields) {
      if (err) throw err;
      res.status(200).send(rows);
    });
  });

};

module.exports = textbookAPI;
