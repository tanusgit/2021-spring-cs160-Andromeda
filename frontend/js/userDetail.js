$.ajax({
    url: "http://localhost:3000/api/user",
    method: "GET",
    type: "json",
    success: function (response) {
      console.log(response);
      const user = response;
      user = {
          
      }
      for (var i = 0; i < response.length; i++) {
        $("body").append($("<div> Book title: " + response[i].title + "</div>"));
      }
      $("username").text(user_name);
      $("email").text(user_email);
      $("phone").text(user_phone);
      $("user_potfile_image").attr("src",user_potfile_image_url);

    },
    error: function (error) {
      console.log(error);
    },
  });