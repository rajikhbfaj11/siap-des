<?php
	include ('../../../../../config/koneksi.php');

	$id 	= $_GET['id'];
	$qhapus	= mysqli_query($connect, "DELETE FROM surat_pengantar_pindah WHERE id_pp = '$id'");

	if($qhapus){
		header('location:../../');
	}else{
	 	echo ("<script LANGUAGE='JavaScript'>window.alert('Gagal mengonfirmasi surat'); window.location.href='#'</script>");
	}
?>