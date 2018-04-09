<?php
	require_once('admin/phpscripts/config.php');

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = "";
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Animation Central</title>
<link rel="stylesheet" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:900|Roboto" rel="stylesheet">
</head>
<body>
<?php
	include('includes/nav.html');

	if(!is_string($getMovies)){
		while($row = mysqli_fetch_array($getMovies)){
			echo "<div class=\"movieBlock\"><img src=\"images/{$row['movies_cover']}\" class=\"thumbnail\" alt=\"{$row['movies_title']}\">
				<h2 class=\"movieTitle\">{$row['movies_title']}</h2>
				<p class=\"movieYear\">{$row['movies_year']}</p>
				<a href=\"details.php?id={$row['movies_id']}\">More Details...</a><br><br></div>
			";
		}
	}else{
		echo "<p class=\"error\">{$getMovies}</p>";
	}
?>
</body>
</html>
