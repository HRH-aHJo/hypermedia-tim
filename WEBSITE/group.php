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
					<li><a href="group.php" class="active">Group Description</a></li>
					<li><a href="news.php">News</a></li>
					<li><a href="governance.php">Governance</a></li>
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
			<div class="homepagepic" style="background-image: url('images/7.png');">
				<div class="homepagetitle"> Group Description </div>
			</div>
		</a>
		<div class="pagecontent">
			<?php
				echo get_page("group");
			?>
		</div>
	</div>
	<?php
	include_once("footer.php");
?>