<?php
  function addMovie($title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre) { //Depending on what kind of files are being submitted, you might have to edit the php.ini file to increase the max file size. Map: wamp64/php/phpVersion/conf/php.ini !!!MAKE SURE TO BACKUP THE FILE BEFORE DOING ANYTHING!!!
    include('connect.php');
    $story = mysqli_escape_string($link, $storyline);
    if($_FILES['cover']['type'] == "image/jpeg" || $_FILES['cover']['type'] == "image/jpg"){ //Checks to see what kind of file is being uploaded // || = or
      //echo "JPG or JPEG"; //Testing
      $target = "../images/{$cover['name']}"; //
      if(move_uploaded_file($_FILES['cover']['tmp_name'], $target)){
        //echo "File moved.";
        $orig = $target; // You could also use $orig = "../images/{$cover['name']}";
        $th_copy = "../images/TH_{$cover['name']}"; //For thumbnail image
        if(!copy($orig, $th_copy)){
          echo "Failed to copy.";
        }
        $size = getimagesize($orig);
        //echo $size[0];
        $addstring = "INSERT INTO tbl_movies VALUES(NULL, '{$cover['name']}', '{$title}', '{$year}', '{$runtime}', '{$story}', '{$trailer}', '{$release}')"; // If '{$cover['name']}' doesn't work use this $image = $cover['name'];
        //echo $addstring;
        $movieQuery = mysqli_query($link, $addstring);
        if($movieQuery){
          $qstring = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
          $lastmovie = mysqli_query($link, $qstring);
          $row = mysqli_fetch_array($lastmovie);
          $lastID = $row['movies_id'];
          //echo $lastID;
          $genstring = "INSERT INTO tbl_mov_genre VALUES(NULL, '{$lastID}', {$genre})";
          $genresult = mysqli_query($link, $genstring);
          $message = "<h3>Movie added successfully.</h3>";
          return $message;
        }else{
          $message = "<h3>Something has fucked up. Plz contact emergency services.</h3>";
          return $message;
        }
      }
    }else{
      echo "Bish, plz.";
    }
    mysqli_close($link);
  }


?>
