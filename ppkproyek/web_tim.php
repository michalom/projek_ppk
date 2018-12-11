<?php
REQUIRE_ONCE('koneksi.php');
$QUERY = MYSQLI_QUERY($conn,"SELECT * FROM tim");

$arr = [];
while ($ROW = mysqli_fetch_array($QUERY)) {
	$tim = new stdClass;
	$tim-> ID = $ROW['id_team'];
	$tim-> tim = $ROW['tim'];
	$arr[] = $tim;
}
header('Content-Type:application/json;charset=utf-8');
ECHO JSON_ENCODE($arr);










