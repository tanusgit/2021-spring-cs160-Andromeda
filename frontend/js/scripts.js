$.ajax({
  url: "http://localhost:3000/api/textbook/all",
  method: "GET",
  type: "json",
  success: function (response) {
    console.log(response);
    for (var i = 0; i < response.length; i++) {
      $("body").append($("<div> Book title: " + response[i].title + "</div>"));
    }
  },
  error: function (error) {
    console.log(error);
  },
});
