<?php
	include ('../../config/koneksi.php');
	include ('../part/header.php');
		 
	$nik = $_POST['fnik'];
	 
	$qCekNik = mysqli_query($connect,"SELECT * FROM penduduk WHERE nik = '$nik'");
	$row = mysqli_num_rows($qCekNik);
	 
	if($row > 0){
		$data = mysqli_fetch_assoc($qCekNik);
		if($data['nik']==$nik){
			$_SESSION['nik'] = $nik;
?>
<body class="bg-light">
	<div class="container" style="max-height:cover; padding-top:30px;  padding-bottom:60px; position:relative; min-height: 100%;">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<h5 class="card-header"><i class="fas fa-envelope"></i> INFORMASI SURAT</h5>
					<br>
					<div class="container-fluid">
						<div class="row">
							<a class="col-sm-6"><h5><b>SURAT KETERANGAN LAHIR</b></h5></a>
							<a class="col-sm-6"><h5><b>NOMOR SURAT : -</b></h5></a>
						</div>
					</div>
					<hr>
					<form method="post" action="simpan-surat.php">
						<h6 class="container-fluid" align="right"><i class="fas fa-user"></i> Informasi Bayi</h6><hr width="97%">
						<div class="row">
							<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Nama Bayi</label>
						           	<div class="col-sm-12">
						               	<input type="text" name="fnama_bayi" class="form-control" style="text-transform: capitalize;" placeholder="Masukkan Nama Bayi" required>
						           	</div>
						        </div>
						  	</div>
						  	<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Tempat</label>
						           	<div class="col-sm-12">
						               	<input type="text" name="ftempat" class="form-control" style="text-transform: capitalize;" placeholder="Tempat lahir" required>
						           	</div>
						        </div>
						  	</div>
							<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Tanggal</label>
						           	<div class="col-sm-12">
						               	<input type="date" name="ftanggal" class="form-control" required>
						           	</div>
						        </div>
						  	</div>
							<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Jenis Kelamin</label>
						             <div class="col-sm-12">
						               	<input type="text" name="fjenis_kelamin" class="form-control" style="text-transform: capitalize;" placeholder="Jenis Kelamin" required>
						           	</div>
						        </div>
						  	</div>
						  	<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Kewarganagaraan</label>
						             <div class="col-sm-12">
						               	<input type="text" name="fkewarganegaraan" class="form-control" style="text-transform: capitalize;" placeholder="Kewarganegaraan" required>
						           	</div>
						        </div>
						  	</div>
							<div class="col-sm-6">
							    <div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Agama</label>
						           <div class="col-sm-12">
						               	<input type="text" name="fagama" class="form-control" style="text-transform: capitalize;" placeholder="Agama" required>
						           	</div>
						        </div>
							</div>
							<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Alamat</label>
						           	<div class="col-sm-12">
						               	<input type="text" name="falamat" class="form-control" style="text-transform: capitalize;" placeholder="Masukkan Alamat" required>
						           	</div>
						        </div>
						  	</div>
						</div>
						<br>
						<h6 class="container-fluid" align="right"><i class="fas fa-edit"></i> Informasi orang tua</h6><hr width="97%">
						<div class="row">
						  	<div class="col-sm-6">
						  		<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Nama Lengkap Ayah</label>
						           	<div class="col-sm-12">
						               	<input type="text" name="fnama" class="form-control" style="text-transform: capitalize;" value="<?php echo $data['nama']; ?>" readonly>
						           	</div>
						        </div>
							</div>
						  <div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Nama Lengkap Ibu</label>
						             <div class="col-sm-12">
						               	<input type="text" name="fnama_ibu" class="form-control" style="text-transform: capitalize;" placeholder="Masukkan nama ibu" required>
						           	</div>
						        </div>
						  	</div>
						</div>
						<div class="col-sm-6">
						      	<div class="form-group">
						           	<label class="col-sm-12" style="font-weight: 500;">Anak Ke</label>
						             <div class="col-sm-12">
						               	<input type="int" name="fanak_ke" class="form-control" style="text-transform: capitalize;" placeholder="Masukkan Anak ke" required>
						           	</div>
						        </div>
						  	</div>
						</div>
						<hr width="97%">
						<div class="container-fluid">
		                	<input type="reset" class="btn btn-warning" value="Batal">
		                	<input type="submit" name="submit" class="btn btn-info" value="Submit">
		              	</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

<?php 
		}
	}else{
		header("location:index.php?pesan=gagal");
	}

	include ('../part/footer.php');
?>