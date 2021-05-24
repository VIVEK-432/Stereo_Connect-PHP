$(document).ready(function(){

  $("#hiddenLogin").click(function(){
    console.log("Login was pressed");
    $("#loginForm").hide();
    $("#registerForm").show();
  });

  $("#hiddenRegister").click(function() {
    console.log("register was pressed");
    $("#loginForm").show();
    $("#registerForm").hide();
  });

});
