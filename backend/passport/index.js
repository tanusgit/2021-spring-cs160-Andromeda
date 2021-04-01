const passport = require("passport");
const GoogleStrategy = require("./GoogleStrategy");

passport.use(GoogleStrategy);

passport.serializeUser(function (user, cb) {
  cb(null, user);
});
passport.deserializeUser(function (obj, cb) {
  cb(null, obj);
});

module.exports = passport;
