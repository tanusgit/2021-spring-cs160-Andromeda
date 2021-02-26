const express = require("express");
const app = express();
const route = require("./api");

route(app);

module.exports = app;
