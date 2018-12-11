<?php
REQUIRE_ONCE('koneksi.php');
$id_tim = '';
$QUERY = '';
if (isset($_GET['id_player'])) {
	$id_player = $_GET['id_player'];
	$QUERY = MYSQLI_QUERY($conn,'SELECT name,nationality,dob,height,weight,tim.tim as tim,posisi.posisi as posisi FROM player JOIN posisi ON player.id_position = posisi.id_position JOIN tim ON player.id_team = tim.id_team  WHERE id_player = "'.$id_player.'"');
	$arr = [];
	while ($ROW = mysqli_fetch_array($QUERY)) {
		$profil = new stdClass;
		$profil-> nama = $ROW['name'];
		$profil-> nationality = $ROW['nationality'];
		$profil-> dob = $ROW['dob'];
		$profil-> height = $ROW['height'];
		$profil-> weight = $ROW['weight'];
		$profil-> tim = $ROW['tim'];
		$profil-> posisi = $ROW['posisi'];	
		$arr[] = $profil;
	}
	header('Content-Type:application/json;charset=utf-8');
	ECHO JSON_ENCODE($arr);

}else{
	echo "Data tidak ditemukan";
}


