<?php
define('HOST','localhost');
define('USER','root'); //sesuaikan nama user
define('PASS',''); //sesuaiakan nama password
define('DB','ppkproyek');//sesuaiakan naman database
$conn = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');
date_default_timezone_set("Asia/Jakarta");
?>