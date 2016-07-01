<?php
	include_once("functions.php");
	include_once("header.php");
	?>
	<div class="sidebar">
		<ul>
			<li><a href="index.php">Home Page</a></li>
			<li><a href="innovation.php" class="active">Who We Are</a>
			<ul>
				<li><a href="innovation.php">Innovation</a></li>
				<li><a href="testimonials.php" class="active">Testemonials</a></li>
				<li><a href="projects.php">Projects</a></li>
			</ul>
			</li>
			<li><a href="group.php">Group</a></li>
			<li><a href="devices.php">All Devices</a></li>
			<li><a href="sl.php">All SL Services</a></li>
			<li><a href="assist.php">All Assistant Services</a></li>
		</ul>
	</div>
	<div class="maincontent">
		<a href="">
			<div class="homepagepic" style="background-image: url('images/5.jpg');">
				<div class="homepagetitle"> testimonials </div>
			</div>
		</a>
		<div class="pagecontent">
			<?php
				echo get_page("testimonials");
			?>
		</div>
	</div>
	<?php
	include_once("footer.php");
?>