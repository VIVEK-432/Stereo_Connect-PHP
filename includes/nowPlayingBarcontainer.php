<?php

$songQuery = mysqli_query($con, "SELECT id FROM songs ORDER BY RAND() LIMIT 30");

$resultArray =array();

while ($row = mysqli_fetch_array($songQuery)) {

  array_push($resultArray, $row['id']);

}

$jsonArray = json_encode($resultArray);


 ?>

<script>

$(document).ready(function(){
    var newPlaylist = <?php echo $jsonArray; ?>;
    audioElement = new Audio();
    setTrack(newPlaylist[0], newPlaylist, false);
    updateVolumeProgressBar(audioElement.audio);

    $("#PlaynowBarContainer").on("mousedown touchstart mousemove touchmove", function(e) {
        e.preventDefault();
    });

    $(".playerBar .progressBar").mousedown(function () {
      mouseDown = true;
    });

    $(".playerBar .progressBar").mousemove(function (e) {
      if (mouseDown == true) {
        //SET TIME OF SONG , DEPENDING ON POSITION OF mouse
        timeFromOffset(e, this);
      }
    });

    $(".playerBar .progressBar").mousedown(function(e) {
        timeFromOffset(e, this);
    });
//------------------------------------------------------------------------------------------------------
// FOR VOLUME BAR
//------------------------------------------------------------------------------------------------------

    $(".volumeBar .progressBar").mousedown(function () {
      mouseDown = true;
    });

    $(".volumeBar .progressBar").mousemove(function (e) {
      if (mouseDown == true) {
          var percentage = e.offsetX / $(this).width();

          if (percentage >= 0 && percentage <= 1) {
            audioElement.audio.volume = percentage;
          }
      }
    });

    $(".volumeBar .progressBar").mousedown(function(e) {
      var percentage = e.offsetX / $(this).width();

      if (percentage >= 0 && percentage <= 1) {
        audioElement.audio.volume = percentage;
      }

    });



    $(document).mouseup(function () {
      mouseDown = false;
    });

});


function timeFromOffset(mouse, progressBar) {
    var percentage = mouse.offsetX / $(progressBar).width() * 100;
    var seconds = audioElement.audio.duration * (percentage / 100);
    audioElement.setTime(seconds);

}

function prevSong() {
    if (audioElement.audio.currentTime >= 3 || currentIndex == 0) {
      audioElement.setTime(0);
    } else {
      currentIndex = currentIndex - 1;
      setTrack(currentPlaylist[currentIndex], currentPlaylist, true);
    }
}
//--------------------------------------------------------------------------------------------------------------------------------------------
// NEXT SONGS// PREVIOUS SONGS // REPEAT SONGS //
// -------------------------------------------------------------------------------------------------------------------------------------------
function nextSong() {

      if (repeat == true) {
          audioElement.setTime(0);
          playSong();
          return ;
      }

      if (currentIndex == currentPlaylist.length - 1) {
          currentIndex = 0;
      } else {
          currentIndex++;
      }

      var trackToPlay = shuffle ? shufflePlaylist[currentIndex] :currentPlaylist[currentIndex];
      setTrack(trackToPlay, currentPlaylist, true);
}

function setRepeat() {
      repeat = !repeat;
      var imageName = repeat ? "repeat-again.png" : "repeat.png";
      $(".controlButton.repeat img").attr("src","pepsi/images/icons/" + imageName);
}

function setMute() {
      audioElement.audio.muted = !audioElement.audio.muted;
      var imageName = audioElement.audio.muted ? "mute.png" : "volume.png";
      $(".controlButton.volume img").attr("src","pepsi/images/icons/" + imageName);
}

function setShuffle() {
      shuffle = !shuffle;
      var imageName = shuffle ? "ActivateShuffle.png" : "shuffle.png";
      $(".controlButton.shuffle img").attr("src","pepsi/images/icons/" + imageName);

      if (shuffle == true) {
        //RANDOMIZE THE WHOLE PLAYLIST
        shuffleArray(shufflePlaylist);
        currentIndex = shufflePlaylist.indexOf(audioElement.currentlyPlaying.id);
      } else {
        //SHUFFLE  HAS BEEN DEACTIVATED
        //go back to regular palylist played
        currentIndex = currentPlaylist.indexOf(audioElement.currentlyPlaying.id);
      }
}

function shuffleArray(a) {
      var j, x, i;
      for(i = a.length; i; i--){
        j = Math.floor(Math.random() * i);
        x = a[i - 1];
        a[i - 1] = a[j];
        a[j] = x;
      }
}


function setTrack(trackId, newPlaylist, play){

        if (newPlaylist != currentPlaylist) {
          currentPlaylist = newPlaylist;
          shufflePlaylist = currentPlaylist.slice();
          shuffleArray(shufflePlaylist);
        }

        if (shuffle == true) {
            currentIndex = shufflePlaylist.indexOf(trackId);
        } else {
            currentIndex = currentPlaylist.indexOf(trackId);
        }

      pauseSong();

      $.post("includes/handlers/ajax/getSongJson.php",{ songId: trackId}, function (data) {


        var track = JSON.parse(data);
        $(".trackName span").text(track.title);

        $.post("includes/handlers/ajax/getArtistJson.php",{ artistId: track.artist }, function (data) {

        var artist = JSON.parse(data);

        $(".trackInfo .artistName span").text(artist.name);
        $(".trackInfo .artistName span").attr("onclick", "openPage('artist.php?id=" + artist.id + "')");

      });

        //////
        /////--------------------------------------------
/* USE SAME FOR ARTIST & ALBUM BACKGROUND TOO  */
        /////------------------------------------------------
        
        $.post("includes/handlers/ajax/getAlbumJson.php",{ albumId: track.album }, function (data) {

          var album = JSON.parse(data);
          $(".content .albumLink img").attr("src", album.artworkPath);
          $(".content .albumLink img").attr("onclick", "openPage('album.php?id=" + album.id + "')");
          $(".trackInfo .trackName span").attr("onclick", "openPage('album.php?id=" + album.id + "')");
        });

      audioElement.setTrack(track);
     
      if(play == true){
      playSong(); 
    }

    });

    
}

function playSong(){

  if (audioElement.audio.currentTime == 0) {
    $.post("includes/handlers/ajax/updatePlays.php", {songId: audioElement.currentlyPlaying.id });
  }

  $(".controlButton.play").hide();
  $(".controlButton.pause").show();
  audioElement.play();
}

function pauseSong(){
  $(".controlButton.play").show();
  $(".controlButton.pause").hide();
  audioElement.pause();
}

</script>



<div id="PlaynowBarContainer">

      <div id="nowPlayingBar">

        <div id="nowPlayingleft">

          <div class="content">
                <span class="albumLink">
                  <img src="" alt="AlbumImg" class="albumArtwork">
                </span>

                <div class="trackInfo">
                    <span class="trackName">
                        <span></span>
                    </span>

                    <span class="artistName">
                        <span></span>
                    </span>
                </div>
    </div>
  </div>

  <div id="nowPlayingcenter">

    <div class="content playerControl">

      <div class="buttons">
        <button class="controlButton shuffle" title="Shuffle" onclick="setShuffle()">
          <img src="pepsi/images/icons/shuffle.png" alt="Shuffle">
        </button>

        <button class="controlButton previous" title="Previous" onclick="prevSong()">
          <img src="pepsi/images/icons/previous.png" alt="Previous">
        </button>

        <button class="controlButton play" title="Play" onclick="playSong()" >
          <img src="pepsi/images/icons/play.png" alt="Play" >
        </button>

        <button class="controlButton pause" title="Pause" style="display: none;" onclick="pauseSong()">
          <img src="pepsi/images/icons/pause.png" alt="Pause" >
        </button>

        <button class="controlButton next" title="Next" onclick="nextSong()">
          <img src="pepsi/images/icons/next.png" alt="Next">
        </button>

        <button class="controlButton repeat" title="Repeat" onclick="setRepeat()">
          <img src="pepsi/images/icons/repeat.png" alt="Repeat">
        </button>

      </div>

        <div class="playerBar">

            <span class="progressTime current">0:00</span>

            <div class="progressBar">
              <div class="progressBarBg">
                <div class="progress"></div>
              </div>
            </div>

          <span class="progressTime remaining">0.00</span>

        </div>

    </div>

  </div>

    <div id="nowPlayingright">
        <div class="volumeBar">

            <button class="controlButton volume" title="Volume button" onclick="setMute()">
              <img src="pepsi/images/icons/volume.png" alt="Volume">
            </button>

            <div class="progressBar">
              <div class="progressBarBg">
                <div class="progress"></div>
              </div>
            </div>

        </div>

    </div>

  </div>

</div>
