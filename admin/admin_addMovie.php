<?php
	require_once('phpscripts/config.php');

	$tbl='tbl_genre';
	$genQuery = getAll($tbl);



	if(isset($_POST['submit'])){
		$title = $_POST['title'];
		$cover = $_FILES['cover']; //Important!
		$year = $_POST['year'];
		$runtime = $_POST['runtime'];
		$storyline = $_POST['storyline'];
		$trailer = $_POST['trailer'];
		$release = $_POST['release'];
		$genre = $_POST['genList'];
		$uploadMovie = addMovie($title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre);
		$message = $uploadMovie;
		// echo $cover['name'];
		// echo $cover['type'];
		// echo $cover['size'];
		// echo $cover['tmp_name']; //A temporary name used by PHP to store the file, gets cleared by itself later.
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Movie</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<?php if(!empty($message)){ echo $message;} ?>
	<form action="admin_addMovie.php" method="post" enctype="multipart/form-data"> <!--This allows users to upload files-->
		<label>Movie Title:</label>
		<input type="text" value="" name="title"><br><br>
		<label>Movie Cover Image:</label>
		<input type="file" value="" name="cover"><br><br>
		<label>Movie Year:</label>
		<input type="text" value="" name="year"><br><br>
		<label>Movie Runtime:</label>
		<input type="text" value="" name="runtime"><br><br>
		<label>Movie Storyline:</label>
		<input type="text" value="" name="storyline"><br><br>
		<label>Movie Trailer:</label>
		<input type="text" value="" name="trailer"><br><br> <!--Will be set to file later for uploading video-->
		<label>Movie Release:</label>
		<input type="text" value="" name="release"><br><br>
		<select name="genList">
			<option value="">Please select a genre.</option>
			<?php
				while($row = mysqli_fetch_array($genQuery)){
					echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
				}
			?>
	</select><br><br><br>
		<input type="submit" name="submit" value="Add Movie">
	</form>

</body>
</html>
