<!-- <!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
 -->	<!-- Mobile Specific Meta -->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
	<!-- Favicon-->
	<!-- <link rel="shortcut icon" href="img/fav.png"> -->
	<!-- Author Meta -->
	<!-- <meta name="author" content="CodePixar"> -->
	<!-- Meta Description -->
	<!-- <meta name="description" content=""> -->
	<!-- Meta Keyword -->
	<!-- <meta name="keywords" content=""> -->
	<!-- meta character set -->
	<!-- <meta charset="UTF-8"> -->
	<!-- Site Title -->
	<!-- <title>BBS</title> -->

	<!-- <link href="https://fonts.googleapis.com/css?family=Poppins:300,500,600,900" rel="stylesheet"> -->
		<!--
		CSS
		============================================= -->
<!-- 		<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/nice-select.css">
		<link rel="stylesheet" href="css/magnific-popup.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/main.css">
	</head> -->
	<!-- <body>
		<div class="main-wrapper-first relative">
			<header style="background-color: blue">
				<div class="container">
					<div class="header-wrap">
						<div class="header-top d-flex justify-content-between align-items-center">
							<div class="logo">
								<a href="index.html"><img src="img/logo.png" alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</header>
			<div class="banner-area">
				<div class="container">
					<div class="row justify-content-center height align-items-center">
						<div class="col-lg-8">
							<div class="banner-content text-center">
								<h1 class="text-uppercase">Resep Masakan<br> Indonesia</h1>
								<a href="#" class="primary-btn d-inline-flex align-items-center"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
 -->
			<!-- Start Feature Area -->
<!-- 			<section class="featured-area">
				<div class="container">
					<div class="row">
						<?php 
							include 'include/koneksi.php';
							$p = "select * from makanan";
							$i = mysqli_query($koneksi, $p);
							while ($r = mysqli_fetch_array($i)) {
							
						 ?>
						<div  class="col-sm-4 text-center">
							<div class="single-feature d-flex flex-wrap justify-content-between">
								<div class="icon">
									<img class="mx-auto rounded-circle" height="100" src="<?php echo 'admin/images/'.$r['foto_makanan']; ?>" alt="">
								</div>
								<div class="desc">
									<h4><?php echo $r['nama_makanan'] ?></h4>
									<p>Bahan : <?php echo $r['resep_makanan'] ?></p>
									<p>Asal : <?php echo $r['daerah_makanan'] ?></p>
								</div>
							</div>
							
						</div>
						<?php  
								}
							?>

		</div>




		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>
 -->
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
	<div class="card bg-info text-white">
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
</div><br><br>
	
<section class="featured-area">
	<?php 
							include 'include/koneksi.php';
							$p = "select * from makanan";
							$i = mysqli_query($koneksi, $p);
							$perbaris = 4;
							echo "<center><table>";
							$j=0;
							$jmlhdata=mysqli_num_rows($i);
							while ($r = mysqli_fetch_array($i)) {
								if($j++ % $perbaris ==0){
						 ?>
						 <tr>
						<?php 
							}
						?><td style="padding-left: 30px;">
							<div class="card text-white bg-info mb-3" style="max-width: 18rem;">
  							<div class="card-header"><?php echo $r['nama_makanan'] ?></div>
  							<div class="card-body">
    						<h5 class="card-title"><img class="mx-auto" height="100" src="<?php echo 'admin/images/'.$r['foto_makanan']; ?>" alt="" style="padding-left: 40px;"></h5>
    <p class="card-text"><a href="lihatmakanan.php?id=<?php echo $r['id_makanan']?>" id="jwpopupLink" class="btn btn-info btn-fill pull-left" style="background-color: rgb(249, 50, 54);border-radius: 10px; border:none">Detail</a></p>
    </td>
    </div>
    <?php if($j % $perbaris == 0 || $j==$jmlhdata){ ?>
    </tr>
<?php } ?>
  </div>
<?php }echo '</table></center>' ?>
			</section>
		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/main.js"></script>
</body>
</html>