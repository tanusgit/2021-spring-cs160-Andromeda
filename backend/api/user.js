const { getUser, updateUser } = require("../services/user");

/**
 * User api
 */

const userAPI = (app) => {
  app.get("/api/user", (req, res) => {
    getUser(req.user.email).then(
      (result) => {
        return res.status(200).send(result);
      },
      (error) => {
        return res.status(error.code).send({ status: error.status });
      }
    );
  });

  app.put("/api/user", (req, res) => {
    updateUser(req.user.email, req.body.phone, req.body.address).then(
      (result) => {
        return res.status(200).send();
      },
      (error) => {
        return res.status(error.code).send({ status: error.status });
      }
    );
  });
};

module.exports = userAPI;
