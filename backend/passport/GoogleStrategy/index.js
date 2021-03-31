const GoogleStrategy = require("passport-google-oauth").OAuth2Strategy;
const {
  production: { GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET },
} = require("../../config/index");
const User = require("../../models/user");

module.exports = new GoogleStrategy(
  {
    clientID: GOOGLE_CLIENT_ID,
    clientSecret: GOOGLE_CLIENT_SECRET,
    callbackURL: "http://localhost:3000/auth/google/callback",
  },
  function (accessToken, refreshToken, profile, cb) {
    const newUser = {
      name: profile._json.name,
      picture: profile._json.picture,
      email: profile._json.email,
    };
    User.findOrCreate({ where: { email: profile._json.email }, defaults: newUser }).then(([user, created]) => {
      return cb(null, user.dataValues);
    });
  }
);
