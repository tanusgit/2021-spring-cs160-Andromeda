$.ajax({
  url: "http://localhost:3000/api/user",
  method: "GET",
  xhrFields: {
    withCredentials: true,
  },
  type: "json",
  success: function (response) {
    console.log(response);
  },
  error: function (error) {
    console.log(error);
  },
});
