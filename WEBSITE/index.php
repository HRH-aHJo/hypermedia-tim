<?php
	include_once("header.php");
	?>
	<div class="sidebar">
		<ul>
			<li><a href="index.php">Home Page</a></li>
			<li><a href="innovation.php" class="active">Who We Are</a></li>
			<li><a href="group.php">Group</a></li>
			<li><a href="devices.php">All Devices</a></li>
			<li><a href="sl.php">All SL Services</a></li>
			<li><a href="assist.php">All Assistant Services</a></li>
		</ul>
	</div>
	<div class="maincontent">
		<a href="innovation.php">
			<div class="homepagepic" style="background-image: url('images/1.jpg');">
				<div class="homepagetitle"> Who We Are</div>
			</div>
		</a>
		<a href="devices.php">
			<div class="homepagepic" style="background-image: url('images/2.jpg');">
				<div class="homepagetitle" style="text-align:center;padding-left:0;"> All Devices</div>
			</div>
		</a>
		<a href="sl.php">
			<div class="homepagepic" style="background-image: url('images/3.jpg');">
				<div class="homepagetitle" style="float: right;text-align: right;padding-right: 35px;"> All SL Services</div>
			</div>
		</a>
	</div>
	<?php
	include_once("footer.php");
?>