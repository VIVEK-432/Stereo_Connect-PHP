<?php

// we can use this for delete in admin side

include("../../config.php");

if(isset($_POST['playlistId'])){
  $playlistId = $_POST['playlistId'];

  $playlistsQuery = mysqli_query($con, "DELETE FROM playlists WHERE id='$playlistId'");
  $songsQuery = mysqli_query($con, "DELETE FROM playlistSongs WHERE playlistId='$playlistId'");
}
else {
  echo "playlistId was not passed into deletePlaylist.php";
}
?>
