const connection = require("../mysql");
const getUser = require("../services/user").getUser;
/**
 * User api
 */

const userAPI = (app) => {
  app.get("/api/user", (req, res) => {
    getUser().then(
      (result) => {
        res.status(200).send(result);
      },
      (error) => {
        res.status(404).send(error);
      }
    );
    return;
  });
};

module.exports = userAPI;
