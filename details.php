<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Details</title>
<link rel="stylesheet" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:900|Roboto" rel="stylesheet">
</head>
<body>

	<?php
		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "<img src=\"images/{$row['movies_cover']}\" class=\"detailsPoster\" alt=\"{$row['movies_title']}\">
			<h2 class=\"detailsTitle\">{$row['movies_title']}</h2>
			<h3>{$row['movies_year']}</h3>
			<p>{$row['movies_storyline']}</p>
			<a href=\"index.php\">Back...</a>
			";
		}else{
			echo "<p>{$getMovie}</p>";
		}

	?>
</body>
</html>
