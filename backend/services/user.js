const User = require("../models/user");

/**
 * Get user profile
 * @param {String} email email of the user
 * @returns User profile
 */
const getUser = (email) => {
  return new Promise((resolve, reject) => {
    User.findOne({ where: { email: email }, raw: true })
      .then(function (user) {
        if (!user) {
          reject({ status: "user not found", code: 404 });
        }
        resolve(user);
      })
      .catch(function (error) {
        reject({ status: "server error", code: 500 });
      });
  });
};

/**
 * Update user information
 * @param {*} phone Phone number of the user
 * @param {*} address Address of the user
 * @returns Updated user object
 */
const updateUser = (email, phone, address) => {
  return new Promise((resolve, reject) => {
    User.update(
      { phone: phone, address: address },
      {
        where: {
          email: email,
        },
      }
    )
      .then((updatedUser) => {
        resolve(updatedUser);
      })
      .catch((error) => {
        reject({ status: "server error", code: 500 });
      });
  });
};

module.exports = {
  getUser,
  updateUser,
};
