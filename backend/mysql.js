const mysql = require("mysql");

var con = mysql.createConnection({
  host: "host.docker.internal",
  user: "cs160",
  password: "password",
  database: "iBook",
});

module.exports = con;
