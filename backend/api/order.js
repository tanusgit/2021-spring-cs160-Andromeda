const connection = require("../mysql");
/**
 * Order api
 */

const orderAPI = (app) => {
  app.get("/api/order/all", (req, res) => {
    connection.query("SELECT * FROM cart_product", function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //Retrieve a single order by buyer id
  app.get("/api/order/buyer/:buyer_id", (req, res) => {
    connection.query(`SELECT * FROM cart_product WHERE buyer_id = ${req.params.buyer_id}`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //Retrieve a single order by seller id
  app.get("/api/order/seller/:seller_id", (req, res) => {
    connection.query(`SELECT * FROM cart_product WHERE seller_id = ${req.params.seller_id}`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  //Create a order entity
  app.post("/api/order/create", (req, res) => {
    connection.query(`INSERT INTO cart_product VALUES ("${req.body.id}", "${req.body.cart_id}", "${req.body.book_id}", "${req.body.buyer_id}", "${req.body.seller_id}", "${req.body.single_price}", "${req.body.quantity}", "${req.body.date}")`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send("order created successfully");
    });
  });
  
  //Update a order by id
  app.put("/api/order/update", (req, res) => {      
    try{
        if(req.body.id === undefined) {
          return res.status(500).send("update error: order id undefined");
        }
        parseInt(req.body.id, 10);
        connection.query(`UPDATE cart_product SET cart_id="${req.body.cart_id}", book_id="${req.body.book_id}", buyer_id="${req.body.buyer_id}", seller_id="${req.body.seller_id}", single_price="${req.body.single_price}", quantity="${req.body.quantity}", date="${req.body.date}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
          if (err) {return res.status(500).send("server error or input invalid");} 
          res.status(200).send("order updated successfully");
        });
      }
      catch {
        res.status(500).send("server error or input invalid");
      }
  });


  //Update a order cart_id by id
  app.put("/api/order/update/cart_id", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.cart_id === undefined) {
        return res.status(500).send("update error: order cart_id undefined")
      }
      connection.query(`UPDATE cart_product SET cart_id="${req.body.cart_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });
  
//Update a order book_id by id
app.put("/api/order/update/book_id", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.book_id === undefined) {
        return res.status(500).send("update error: order book_id undefined")
      }
      connection.query(`UPDATE cart_product SET book_id="${req.body.book_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

//Update a order buyer_id by id
app.put("/api/order/update/buyer_id", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.buyer_id === undefined) {
        return res.status(500).send("update error: order buyer_id undefined")
      }
      connection.query(`UPDATE cart_product SET buyer_id="${req.body.buyer_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });  

//Update a order seller_id by id
app.put("/api/order/update/seller_id", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.seller_id === undefined) {
        return res.status(500).send("update error: order seller_id undefined")
      }
      connection.query(`UPDATE cart_product SET seller_id="${req.body.seller_id}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

//Update a order single_price by id
app.put("/api/order/update/single_price", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.single_price === undefined) {
        return res.status(500).send("update error: order single_price undefined")
      }
      connection.query(`UPDATE cart_product SET single_price="${req.body.single_price}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

//Update a order quantity by id
app.put("/api/order/update/quantity", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.quantity === undefined) {
        return res.status(500).send("update error: order quantity undefined")
      }
      connection.query(`UPDATE cart_product SET quantity="${req.body.quantity}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

//Update a order date by id
app.put("/api/order/update/date", (req, res) => {
    try{
      if(req.body.id === undefined) {
        return res.status(500).send("update error: order id undefined");
      }
      parseInt(req.body.id, 10);
      if(req.body.date === undefined) {
        return res.status(500).send("update error: order date undefined")
      }
      connection.query(`UPDATE cart_product SET date="${req.body.date}" WHERE id="${req.body.id}"`, function (err, rows, fields) {
        if (err) {return res.status(500).send("server error or input invalid");} 
        res.status(200).send("order updated successfully");
      });
    }
    catch {
      res.status(500).send("server error or input invalid");
    }
  });

  //Delete a specific order
  app.delete("/api/order/delete/:order_id", (req, res) => {
    connection.query(`DELETE FROM cart_product WHERE id = ${req.params.order_id}`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

  app.post("/api/order/test", (req, res) => {
    connection.query(`SELECT * FROM order`, function (err, rows, fields) {
      if (err) {return res.status(500).send("server error or input invalid");} 
      res.status(200).send(rows);
    });
  });

};

module.exports = orderAPI;
