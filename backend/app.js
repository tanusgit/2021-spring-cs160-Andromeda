const express = require("express");
const app = express();
const route = require("./api");
const connection = require("./mysql.js");

// Apply Routing to the app
route(app);

// Establish MySQL Database Connection
connection.connect();

module.exports = app;
