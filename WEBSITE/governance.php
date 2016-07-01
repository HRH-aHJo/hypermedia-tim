<?php
	include_once("functions.php");
	include_once("header.php");
	?>
	<div class="sidebar">
		<ul>
			<li><a href="index.php">Home Page</a></li>
			<li><a href="innovation.php" class="active">Who We Are</a></li>
			<li><a href="group.php">Group</a>
				<ul>
					<li><a href="group.php">Group Description</a></li>
					<li><a href="news.php">News</a></li>
					<li><a href="governance.php" class="active">Governance</a></li>
					<li><a href="business.php">Business & Market</a></li>
					<li><a href="investors.php">For Investors</a></li>
				</ul>
			</li>
			<li><a href="devices.php">All Devices</a></li>
			<li><a href="sl.php">All SL Services</a></li>
			<li><a href="assist.php">All Assistant Services</a></li>
		</ul>
	</div>
	<div class="maincontent">
		<a href="">
			<div class="homepagepic" style="background-image: url('images/9.jpg');">
				<div class="homepagetitle"> Governance </div>
			</div>
		</a>
		<div class="pagecontent">
			<img style="margin-left:auto;margin-right:auto;display: block;" src="images/image-giugno2016eng.jpg" />
		</div>
	</div>
	<?php
	include_once("footer.php");
?>