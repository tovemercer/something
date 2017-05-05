$(document).ready(function() {
  $('.registation-form').on('submit', function(event) {
    event.preventDefault();
    // debugger

    alert("Allow us to access your Instagram account?");
    window.location.href = "https://api.instagram.com/oauth/authorize/?client_id=2415c05b469249dd834c5853a2e80d95&redirect_uri=http://localhost:9393/photos&response_type=code"
  });


});
