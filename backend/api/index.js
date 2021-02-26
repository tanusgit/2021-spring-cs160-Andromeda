const textbookAPI = require("./textbook");

const routesConfig = (app) => {
  // serve api endpoint
  app.get("/api", (req, res) => {
    res.send("Hello from API endpoint");
  });

  textbookAPI(app);

  app.get("*", (req, res) => {
    res.status(404).send("Not Found");
  });
};

module.exports = routesConfig;
