/**
 * Textbook api
 */

const textbookAPI = (app) => {
  app.get("/api/textbook/:textbook_id", (req, res) => {
    res.status(200).send("GET Textbook request");
  });
};

module.exports = textbookAPI;
