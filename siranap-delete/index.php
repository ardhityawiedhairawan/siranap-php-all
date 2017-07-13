<?php

# seting koneksi webservices #
$xrsid = "1101015";  # ID Rumah Sakit #
$xpass = md5("12345"); # Password #
$kode_tipe_pasien="0004"; #kode tipe pasien
$kode_kelas_ruang="0005"; # kode kelas ruang


$strURLSiranap = "http://sirs.yankes.kemkes.go.id/sirsservice/sisrute/hapusdata/$xrsid/$kode_tipe_pasien/$kode_kelas_ruang";

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
$str = curl_exec($curl);  
curl_close($curl);  
echo $str;


?>