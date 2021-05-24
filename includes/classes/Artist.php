<?php
    /**
     *
     */
    class Artist
        {
            private $con;
            private $id;
            private $artistPic;

            public function __construct($con, $id)
            {
              $this->con = $con;
              $this->id = $id;

               $query =mysqli_query($this->con, "SELECT * FROM artists WHERE id='$this->id'");
              $artist = mysqli_fetch_array($query);

              $this->artistPic = $artist['artistPic'];

            }

            public function getId() {
              return $this->id;
            }

             public function getArtPic()
            {
              return $this->artistPic;
            }

            public function getName()
            {
              $artistQuery =mysqli_query($this->con, "SELECT name FROM artists WHERE id='$this->id'");
              $artist = mysqli_fetch_array($artistQuery);
              return $artist['name'];
            }


            public function getSongIds() {

            $query = mysqli_query($this->con, "SELECT id FROM songs WHERE artist='$this->id' ORDER BY plays ASC");

            $array = array();

            while($row = mysqli_fetch_array($query)) {
              array_push($array, $row['id']);
            }

            return $array;

          }

      }

 ?>
