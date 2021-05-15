const express = require("express");
const app = express();
const cookieParser = require("cookie-parser");
const bodyParser = require("body-parser");
const cors = require("cors");
const passport = require("./passport/index");
const route = require("./api");
const connection = require("./mysql.js");
const jwt = require("express-jwt");
const {
  production: { SECERT },
} = require("./config/index");

// Parse Data from html forms
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Enable cors
const corsOptions = {
  origin: "http://localhost:5500",
  credentials: true,
};
app.use(cors(corsOptions));

// Read cookies
app.use(cookieParser());

// // Establish MySQL Database Connection
// connection.connect();

// Passport auth
app.use(passport.initialize());
app.use(passport.session());

// Apply jwt
app.use(
  "/api/user",
  jwt({ secret: SECERT, getToken: (req) => req.cookies.token, algorithms: ["HS256"] }).unless({
    path: ["/auth/google/", "/auth/google/callback", "/api/textbook/all"],
  })
);

app.use(function (err, req, res, next) {
  if (err.name === "UnauthorizedError") {
    return res.status(401).send("Access Denied");
  }
});

// Apply Routing to the app
route(app);

module.exports = app;
