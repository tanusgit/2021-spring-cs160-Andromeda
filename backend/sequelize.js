const Sequelize = require("sequelize");
const {
  production: { DB_DATABASE, DB_USENAME, DB_PASSWORD, DB_HOST },
} = require("./config/index");

const sequelize = new Sequelize(DB_DATABASE, DB_USENAME, DB_PASSWORD, {
  host: DB_HOST,
  dialect: "mysql",

  pool: {
    max: 5,
    min: 0,
    idle: 10000,
  },
  define: {
    timestamps: false,
  },
});

module.exports = sequelize;
