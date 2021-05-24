<?php
include("includes/includedFiles.php");
 ?>

<h1 class="pageHeading">Popular Albums</h1>

<div class="gridViewContainer">
  <?php
      $albumQuery = mysqli_query($con, "SELECT * FROM albums ORDER BY RAND() LIMIT 12");

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
