<?php
	//ini_set('display_errors',1); //for MAC
	//error_reporting(E_ALL);
	require_once("phpscripts/config.php");
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit All</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <?php
    echo single_edit("tbl_movies","movies_id",1);
		phpinfo(); //Shows what version of php is being used.
  ?>
</body>
</html>
