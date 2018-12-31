<!DOCTYPE html>
<html>
<head>
	<title>Masakan Khas Indonesia</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="CodePixar">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/nice-select.css">
		<link rel="stylesheet" href="css/magnific-popup.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/popup.css">
</head>
<body style="background-color: #ff7789">
<!-- 	<div class="card bg-info text-white">
  <div class="banner-area">
				<div class="container">
					<div class="row justify-content-center height align-items-center">
						<div class="col-lg-8">
							<div class="banner-content text-center">
								<h1 class="display-1">Makanan Khas Indonesia</h1>
								<a href="#" class="primary-btn d-inline-flex align-items-center"></a>
							</div>
						</div>
					</div>
				</div>
	</div>
</div> --><br><br>
<?php 
$id = @$_GET['id'];
include 'include/koneksi.php';
$query=mysqli_query($koneksi,"SELECT * FROM makanan WHERE id_makanan='$id'");
$ambil=mysqli_fetch_array($query);
?>
<center>
	<h4 class="display-5" style="color: white"><?php echo $ambil['nama_makanan']."-".$ambil['daerah_makanan'] ?></h4>
	<img class="mx-auto" width="30%" height="20%" src="<?php echo 'admin/images/'.$ambil['foto_makanan']; ?>" alt="" style="padding-left: 40px;"><br><br>
	<font color="white">Bahan-Bahan : </font>
	<p><font color="white"><?php echo $ambil['resep_makanan'] ?></font></p>
	</center>
</body>
</html>