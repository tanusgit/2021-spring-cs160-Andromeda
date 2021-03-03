$.ajax({
  url: "http://localhost:3000/api/textbook/all",
  method: "GET",
  type: "json",
  success: function (response) {
    console.log(response);
  },
  error: function (error) {
    console.log(error);
  },
});
