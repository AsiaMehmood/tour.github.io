<?php
include_once('infop.php');
if(isset($_POST['fmosque'])) {
	$que="SELECT * FROM `information` WHERE pname='Faisal Mosque'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['monal'])) {
	$que="SELECT * FROM `information` WHERE pname='Monal'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['rawal'])) {
	$que="SELECT * FROM `information` WHERE pname='Rawal Lake'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['pchinasi'])) {
	$que="SELECT * FROM `information` WHERE pname='Pir Chinasi'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['rkot'])) {
	$que="SELECT * FROM `information` WHERE pname='Rawalakot'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['neelam'])) {
	$que="SELECT * FROM `information` WHERE pname='Neelam Valley'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['shounter'])) {
	$que="SELECT * FROM `information` WHERE pname='Shounter Lake'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['toli'])) {
	$que="SELECT * FROM `information` WHERE pname='Toli Pir'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['jhelum'])) {
	$que="SELECT * FROM `information` WHERE pname='Jhelum Valley'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['naran'])) {
	$que="SELECT * FROM `information` WHERE pname='Naran Kaghan'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['leepa'])) {
	$que="SELECT * FROM `information` WHERE pname='Leepa Valley'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['search_p'])) {
	$search = $_POST['search_p'];
	$que="SELECT * FROM `information` WHERE pname='$search'";
	$result = mysqli_query($db, $que);
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="CSS\info.css">
	<title>Information</title>
</head>
<body>
    <!-- header section starts  --> 
    
    <header class="header">
    
        <a href="#" class="logo"> <i class="fas fa-hiking"></i> travel. </a> <!--fas fa-hiking from font awesome -->
    
        <nav class="navbar">
            <div id="nav-close" class="fas fa-times"></div>
            <a href="home\home.html">home</a>
            <a href="abo.html">about</a>
            <a href="feedback.html">contact us</a>
            <a href="post.html">blogs</a>
            <a href="signup.html">Sign Up</a>
            <a href="gallery.html">Gallery</a>
            <a href="destination.html">destination</a>
          
        </nav>
    
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="search-btn" class="fas fa-search"></div>
        </div>
        <div class="search">
          <form method="POST" action="info.php">
            <input type="text" name="search_p" placeholder="Search.." size="25">
        
            <!-- <input type="image" name="submit_p" src="search_icon.png" alt="Search image" style="width:22;height:22; margin-left: 35px;"> -->
          </form>
      </div>
    </header>
    
    <!-- header section ends -->
   
		<h1 class="hh" align="center"><span>P</span>lace <span>I</span>nformation</h1>
	</div>
	<div class="container">
		<div class="description-container" style="border: 2px solid grey;">
			<div class="box1">
				<?php
					while($rows = mysqli_fetch_assoc($result))
					{
				?>
				<img src="<?php echo $rows['pi_main']; ?>" alt="Image" style="width:auto; height:280px;">
			</div>
			<div class="description">
				<h1><?php echo $rows['pname']; ?><h1>
				<p style="text-align: justify;"><?php echo $rows['pdescription']; ?></p>
				<p style="color:#6B0404; top: -10px;" >Package: <?php echo $rows['package']; ?> Rs</p>
			</div>
			<a href="booking.html" style="top: -20px; float: right; margin-right: 27%;">Book Tour</a>
		</div>
		<div class="image-container" style="border: 2px solid grey">
			<div class="box">
		        <div class="imgBox">
		          <img src="<?php echo $rows['pi1']; ?>" alt="Image" style="width: auto;height: 290px;">
		        </div>
	        </div>
	      <div class="box">
	        <div class="imgBox">
	          <img src="<?php echo $rows['pi2']; ?>" alt="Image" style="width: auto;height: 290px;">
	        </div>
	      </div>
	      <div class="box">
	        <div class="imgBox">
	          <img src="<?php echo $rows['pi3']; ?>" alt="Image" style="width: auto;height: 290px;">
	        </div>
	        	<?php
					}
				?>
	      </div>
		</div>
	</div>
	<script src="home\home.js"></script>
</body>
</html>