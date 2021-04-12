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
      $("user_name").text(user_name);
      $("user_email").text(user_email);
      $("user_phone").text(user_phone);
      $("user_potfile_image").attr("src",user_potfile_image_url);

    },
    error: function (error) {
      console.log(error);
    },
  });