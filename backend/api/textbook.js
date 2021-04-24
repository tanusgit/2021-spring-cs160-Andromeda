const connection = require("../mysql");
/**
 * Textbook api
 */

const textbookAPI = (app) => {
  app.get("/api/textbook/all", (req, res) => {
    connection.query("SELECT * FROM textbook", function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //Retrieve a single book
  app.get("/api/textbook/:textbook_id", (req, res) => {
    connection.query(`SELECT * FROM textbook WHERE id = ${req.params.textbook_id}`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //List the first few books based on size given
  app.get("/api/textbook/popular/:size", (req, res) => {
    connection.query(`SELECT * FROM textbook LIMIT ${req.params.size}`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //List all book from specific author
  app.get("/api/textbook/author/:author_name", (req, res) => {
    connection.query(`SELECT * FROM textbook WHERE author_name = "${req.params.author_name}"`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //Create a book entity
  app.post("/api/textbook/create", (req, res) => {
    connection.query(`INSERT INTO textbook VALUES ("${req.body.id}", "${req.body.isbn}", "${req.body.publisher_name}", "${req.body.author_name}", "${req.body.year}", "${req.body.title}", "${req.body.price}", "${req.body.user_id}")`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send("textbook created successfully");
    });
  });
  
  //Update a textbook by id
  app.put("/api/textbook/update", (req, res) => {      
    try{
        if(req.body.id === undefined) {
          return res.status(500).send("update error: textbook id undefined");
        }
        parseInt(req.body.id, 10);
        connection.query(`UPDATE textbook SET isbn="${req.body.isbn}", publisher_name="${req.body.publisher_name}", author_name="${req.body.author_name}", year="${req.body.year}", title="${req.body.title}", price="${req.body.price}", user_id="${req.body.user_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
          if (err) {return res.status(500).send("server error or input invalid");} 
          res.status(200).send("textbook updated successfully");
        });
      }
      catch {
        res.status(500).send("server error or input invalid");
      }
  });


  //Update a textbook ISBN by id
  app.put("/api/textbook/update/ISBN", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.isbn === undefined) {
        return res.status(500).send("update error: textbook isbn undefined")
      }
      connection.query(`UPDATE textbook SET isbn="${req.body.isbn}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });
  
  //Update a textbook title by id
  app.put("/api/textbook/update/title", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.title === undefined) {
        return res.status(500).send("update error: textbook title undefined")
      }
      connection.query(`UPDATE textbook SET title="${req.body.title}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Update a textbook author name by id
  app.put("/api/textbook/update/author_name", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.author_name === undefined) {
        return res.status(500).send("update error: textbook author name undefined")
      }
      connection.query(`UPDATE textbook SET author_name="${req.body.author_name}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Update a textbook year by id
  app.put("/api/textbook/update/year", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.year === undefined) {
        return res.status(500).send("update error: textbook year undefined")
      }
      connection.query(`UPDATE textbook SET year="${req.body.year}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Update a textbook publisher name by id
  app.put("/api/textbook/update/publisher_name", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.publisher_name === undefined) {
        return res.status(500).send("update error: textbook publisher name undefined")
      }
      connection.query(`UPDATE textbook SET publisher_name="${req.body.publisher_name}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Update a textbook price by id
  app.put("/api/textbook/update/price", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.price === undefined) {
        return res.status(500).send("update error: textbook isbn undefined")
      }
      connection.query(`UPDATE textbook SET price="${req.body.price}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Update a textbook user id by id
  app.put("/api/textbook/update/user_id", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: textbook id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.user_id === undefined) {
        return res.status(500).send("update error: textbook user id undefined")
      }
      connection.query(`UPDATE textbook SET user_id="${req.body.user_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("textbook updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Delete a specific book
  app.delete("/api/textbook/delete/:textbook_id", (req, res) => {
    connection.query(`DELETE FROM textbook WHERE id = ${req.params.textbook_id}`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  app.post("/api/textbook/test", (req, res) => {
    connection.query(`SELECT * FROM textbook`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

};

module.exports = textbookAPI;
