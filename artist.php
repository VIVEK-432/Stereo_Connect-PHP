<?php
 include("includes/includedFiles.php");

 if (isset($_GET['id'])) {
 	 $artistId= $_GET['id'];

 } else {
 	 header("Location: index.php");
 }

$artist = new Artist($con, $artistId);

 ?>

 <div class="entityInfo borderBottom">

      <div class="artistInfo">

        <div class="leftSection">
           <img src="<?php echo $artist->getArtPic(); ?>"onclick="playFirstSong()" >
        </div>

        <div class="rightSection">
          <h1 class="artistName big"><?php echo $artist->getName(); ?></h1>

        </div>
        
    </div>
    
     
 </div>


<div class="tracklistContainer borderBottom">
	<h2>Popular Songs</h2>
  <ul class="tracklist">

    <?php
      $songIdArray = $artist->getSongIds();

      $i = 1;
      foreach ($songIdArray as $songId ) {

  		if ($i > 6) {
  			break;
  		}

      $albumSong = new Song($con, $songId);
      $albumArtist = $albumSong->getArtist();

      echo "<li class='tracklistRow'>
                <div class='trackCount'>
                    <img class='play' src='pepsi/images/icons/playPink.png'  onclick='setTrack(\"". $albumSong->getId() ."\", tempPlaylist, true)'>
                    <span class='trackNumber'>$i</span>

                </div>

                <div class='trackInfo'>
                    <span class='trackName'>" . $albumSong->getTitle() ."</span>
                    <span class='artistName'>" . $albumArtist->getName() ."</span>

                </div>

                <div class='trackOptions'>
                      <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>
                      <img class='optionsButton' src='pepsi/images/icons/mores.png' onclick='showOptions(this)'>
                    </div>


                <div class='trackDuration'>
                  <span class='duration'>" . $albumSong->getDuration() ."</span>
                </div>

            </li>";

       $i = $i +1;

      }

     ?>

     <script>
        var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
        tempPlaylist = JSON.parse(tempSongIds);
     </script>

  </ul>

</div>


<div class="gridViewContainer">
	<h2>Albums</h2>
  <?php
      $albumQuery = mysqli_query($con, "SELECT * FROM albums WHERE artist='$artistId'");

      if (mysqli_num_rows($albumQuery) == 0) {
                echo "<span class='noResults'>No albums found</span>";
            }

      while($row = mysqli_fetch_array($albumQuery)) {


          echo "<div class='gridViewItem'>

                <span role='link' tabindex='0'onclick='openPage(\"album.php?id=" . $row['id']. "\")'>

                  <img src='" .$row['artworkPath'] ."'>

                  <div class='gridViewInfo'>"
                        .$row['name'] .
                  "</div>

                </span>

            </div>";
      }
   ?>

</div>


<nav class="optionsMenu">

  <input type="hidden" class="songId">
  <?php echo Playlist::getPlaylistDropdown($con, $userLoggedIn->getUsername()); ?>

</nav>
