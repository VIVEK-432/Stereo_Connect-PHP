<?php
  ob_start();

  session_start();


  $timezone = date_default_timezone_set("Asia/Kolkata");

  $con =mysqli_connect("localhost","root","", "musicano");

  if(mysqli_connect_errno()){
    echo "Connection Failed: ".mysqli_connect_errno();
  }


 ?>
