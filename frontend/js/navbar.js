$.ajax({
  url: "http://localhost:3000/api/user",
  method: "GET",
  xhrFields: {
    withCredentials: true,
  },
  type: "json",
  success: function (response) {
    $(".dropdown-item-signin").hide();
    $(".dropdown-item-user").text(response.name.split(" ")[0]);
  },
  error: function (error) {
    $(".dropdown-item-user").hide();
    $(".dropdown-item-logout").hide();
  },
});
