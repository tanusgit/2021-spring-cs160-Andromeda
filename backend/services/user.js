const getUser = () => {
  return new Promise((resolve, reject) => {
    if (false) reject({ error: "Return error" });
    resolve({ name: "Hello World" });
  });
};

module.exports = {
  getUser,
};
