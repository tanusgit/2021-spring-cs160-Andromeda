/**
 * Server configurations
 */
const production = {
  SERVER: "http://localhost",
  SECERT: "faji4nme",
  GOOGLE_CLIENT_ID: "46488740012-dkiq3b78ktmldmvvemqbuk6t0gai0ait.apps.googleusercontent.com",
  GOOGLE_CLIENT_SECRET: "70ahRr-zi6Qisr92xPc1alGk",
  DB_HOST: "localhost",
  DB_USENAME: "cs160",
  DB_PASSWORD: "password",
  DB_DATABASE: "iBook",
  REDIRECT: "http://localhost:5500/prototype/frontend/index.html",
};

const development = {
  SERVER: "http://localhost",
  SECERT: "faji4nme",
  GOOGLE_CLIENT_ID: "46488740012-dkiq3b78ktmldmvvemqbuk6t0gai0ait.apps.googleusercontent.com",
  GOOGLE_CLIENT_SECRET: "70ahRr-zi6Qisr92xPc1alGk",
  DB_HOST: "localhost",
  DB_USENAME: "cs160",
  DB_PASSWORD: "password",
  DB_DATABASE: "iBook",
  REDIRECT: "http://localhost:5500/prototype/frontend/index.html",
};

module.exports = {
  production,
  development,
};
