<?php

# seting koneksi database #
$servername = "localhost";
$username = "root";
$password = "PasswordDatabaseAnda";
$dbname = "NamaDatabaseANDA";

# seting koneksi webservices #
$xrsid = "Kode_rumah_sakit";  # ID Rumah Sakit #
$xpass = md5("password_rumah_sakit"); # Password #
$strURLSiranap = "http://sirs.yankes.kemkes.go.id/sirsservice/ranap";



$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM bed_monitoring";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	$xmlStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml>\n";
	while($row = mysqli_fetch_assoc($result)) {
		$xmlStr .= "<data>\n";
		$xmlStr .= "<kode_ruang>".$row['kode_ruang']."</kode_ruang>\n";
		$xmlStr .= "<tipe_pasien>".$row['tipe_pasien']."</tipe_pasien>\n";
		$xmlStr .= "<total_TT>".$row['total_TT']."</total_TT>\n";
		$xmlStr .= "<terpakai_male>".$row['terpakai_male']."</terpakai_male>\n";
		$xmlStr .= "<terpakai_female>".$row['terpakai_female']."</terpakai_female>\n";
		$xmlStr .= "<kosong_male>".$row['kosong_male']."</kosong_male>\n";
		$xmlStr .= "<kosong_female>".$row['kosong_female']."</kosong_female>\n";
		$xmlStr .= "<waiting>".$row['waiting']."</waiting>\n";
		$xmlStr .= "<tgl_update>".$row['tgl_update']."</tgl_update>\n";
		$xmlStr .= "</data>\n";
	}
	$xmlStr .="</xml>\n";
	
	# header file xml #
	header('Content-type: text/xml');
	echo $xmlStr;
}else{
	echo "0 results";
}

mysqli_close($conn); 
?>
