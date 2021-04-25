const textbookAPI = require("./textbook");
const authenticationAPI = require("./authentication");
const userAPI = require("./user");
const orderAPI = require("./order");

const routesConfig = (app) => {
  // serve api endpoint
  app.get("/api", (req, res) => {
    res.send("Hello from API endpoint");
  });

  textbookAPI(app);
  authenticationAPI(app);
  userAPI(app);
  orderAPI(app);

  app.get("*", (req, res) => {
    res.status(404).send("Not Found");
  });
};

module.exports = routesConfig;
