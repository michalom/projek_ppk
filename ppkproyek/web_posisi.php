<?php
REQUIRE_ONCE('koneksi.php');
$id_tim = '';
$QUERY = '';
if (isset($_GET['id_tim'])) {
	$id_tim = $_GET['id_tim'];
	$QUERY = MYSQLI_QUERY($conn,'SELECT player.id_position as idPos, posisi FROM player JOIN posisi ON player.id_position = posisi.id_position JOIN tim ON player.id_team = tim.id_team WHERE player.id_team = "'.$id_tim.'"');

	$arr = [];
	while ($ROW = mysqli_fetch_array($QUERY)) {
		$posisi = new stdClass;
		$posisi-> id_tim = $id_tim;
		$posisi-> id_position = $ROW['idPos'];
		$posisi-> posisi = $ROW['posisi'];	
		$arr[] = $posisi;
	}
	header('Content-Type:application/json;charset=utf-8');
	ECHO JSON_ENCODE($arr);

}else{
	echo "Data tidak ditemukan";
}


