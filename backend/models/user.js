const { DataTypes } = require("sequelize");
const sequelize = require("../sequelize");

var User = sequelize.define(
  "user",
  {
    name: {
      type: DataTypes.STRING,
    },
    phone: {
      type: DataTypes.STRING,
    },
    address: {
      type: DataTypes.STRING,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    picture: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

module.exports = User;

/**

_json: {
    sub: '102403147326463239906',
    name: 'Yulong Ran',
    given_name: 'Yulong',
    family_name: 'Ran',
    picture: 'https://lh6.googleusercontent.com/-d54bX1C2K9M/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnAYV3z1qrgFfO8y-LAaqfmoBBOoA/s96-c/photo.jpg',
    email: 'yulong.ran@sjsu.edu',
    email_verified: true,
    locale: 'en',
    hd: 'sjsu.edu'
  }

 */
