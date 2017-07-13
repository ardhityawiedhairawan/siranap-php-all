<?php
# seting koneksi database #
$servername = "localhost";
$username = "root";
$password = "passwordDatabaseAnda";
$dbname = "NamaDatabaseAnda";

# seting koneksi webservices #
$xrsid = "kode_rumah_sakit";  # ID Rumah Sakit #
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


	$curl = curl_init(); 
	curl_setopt($curl, CURLOPT_URL, $strURLSiranap);  
	curl_setopt($curl, CURLOPT_HTTPHEADER, Array(
		"X-rs-id: $xrsid",
		"X-pass:$xpass",
		"Content-Type:application/xml; charset=ISO-8859-1",
		"User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15") 
	); 
	curl_setopt($curl, CURLOPT_NOBODY, false);
	curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); 
	curl_setopt($curl, CURLOPT_POST, 1);
	curl_setopt($curl, CURLOPT_POSTFIELDS, $xmlStr);
	$str = curl_exec($curl);  
	curl_close($curl);  
	echo $str;
}else{
	echo "0 results";
}

mysqli_close($conn); 
?>
