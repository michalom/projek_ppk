<?PHP
REQUIRE_ONCE('koneksi.php');
if(isset($_GET['id_tim'],$_GET['id_posisi'])){
$QUERY = MYSQLI_QUERY( $conn,
'SELECT name, id_player FROM player WHERE id_team = "'.$id_tim.'"and id_position = "'.$id_posisi.'"');
$arr = [];
while ($ROW = mysqli_fetch_array($QUERY)) {
		$player = new stdClass;
		$player-> id_player = $id_tim;
		$player-> nama = $ROW['name'];	
		$arr[] = $player;
	}
header('Content-Type:application/json;charset=utf-8');
ECHO JSON_ENCODE($arr);
MYSQLI_CLOSE($conn);
}
else {
echo 'Data Tidak Ada';
}
?>