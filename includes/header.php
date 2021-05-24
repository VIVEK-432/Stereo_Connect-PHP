<?php
include("includes/config.php");
include("includes/classes/User.php");
include("includes/classes/Artist.php");
include("includes/classes/Albums.php");
include("includes/classes/Song.php");
include("includes/classes/Playlist.php");


/*
session_destroy();
*/
if (isset($_SESSION['userLoggedIn'])) {
  $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
  $username = $userLoggedIn->getUsername();
  echo "<script>userLoggedIn = '$username';</script>";
}
else {
  header("Location: register.php");
}

 ?>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sterio | Arina</title>

    <link rel="stylesheet" href="pepsi/css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="pepsi/Script/script.js"></script>

  </head>
  <body>


<div id="mainContainer">

    <div id="topContainer">

        <?php include("includes/navBarcontainer.php"); ?>

          <div id="mainViewContainer">

              <div id="mainContent">
