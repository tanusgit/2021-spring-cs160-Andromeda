const passport = require("../passport/index");
const jwt = require("jsonwebtoken");
const {
  production: { SECERT },
} = require("../config");
/**
 * Authentication api
 */

const authAPI = (app) => {
  app.get("/auth/google", passport.authenticate("google", { scope: ["profile", "email"] }));

  app.get("/auth/google/callback", passport.authenticate("google", { failureRedirect: "/login" }), function (req, res) {
    var token = jwt.sign({ email: req.user.email }, SECERT, { expiresIn: "5h" });
    res.cookie("token", token, {
      domain: "",
      httpOnly: false,
      secure: false,
      sameSite: "none",
      maxAge: 86400000, // 24 hour
    });
    return res.status(200).redirect("http://127.0.0.1:5500/prototype/frontend/index.html");
  });
};

module.exports = authAPI;
