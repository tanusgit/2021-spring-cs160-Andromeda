const mysql = require("mysql");

var con = mysql.createConnection({
  host: "localhost",
  user: "cs160",
  password: "password",
  database: "iBook",
});

module.exports = con;
