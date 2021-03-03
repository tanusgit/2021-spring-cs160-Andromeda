const express = require("express");
const app = express();
const cookieParser = require("cookie-parser");
const bodyParser = require("body-parser");
const cors = require("cors");
const route = require("./api");
const connection = require("./mysql.js");

// Parse Data from html forms
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Enable cors
const corsOptions = {
  origin: "*",
};
app.use(cors(corsOptions));

// Read cookies
app.use(cookieParser());

// Establish MySQL Database Connection
connection.connect();

// Apply Routing to the app
route(app);

module.exports = app;
