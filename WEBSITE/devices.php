<?php
	include_once("functions.php");
	include_once("header.php");
	if(isset($_GET['promo']) && $_GET['promo'] == 1) {
		$promo = 1;
	} else {
		$promo = 0;
	}
	if(isset($_GET['category']) && $_GET['category'] > 0 && $_GET['category'] < 6) {
		$category = $_GET['category'];
	} else {
		$category = 0;
	}
	?>
	<div class="sidebar">
		<ul>
			<li><a href="index.php">Home Page</a></li>
			<li><a href="innovation.php" class="active">Who We Are</a></li>
			<li><a href="group.php">Group</a></li>
			<li><a href="devices.php">All Devices</a>
				<ul>
					<li><a href="devices.php" <?php if(!$promo) echo 'class="active"'; ?>>All Devices & Devices by category</a></li>
					<li><a href="devices.php?promo=1"  <?php if($promo) echo 'class="active"'; ?>>Promotions</a></li>
				</ul>
			</li>
			<li><a href="sl.php">All SL Services</a></li>
			<li><a href="assist.php">All Assistant Services</a></li>
		</ul>
	</div>
	<div class="maincontent">
		<div class="othertitle"> All Devices </div>
		<div>
			<a href="devices.php?category=1<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/smart.png" /> 
					</div>
					<div class="cattext">
						Smartphones
					</div>
					<?php
						if($category == 1) {
							?>
							<div class="cattext">
								(Selected)
							</div>
							<?php
						}
					?>
				</div>
			</a>
			<a href="devices.php?category=2<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/tablet.png" /> 
					</div>
					<div class="cattext">
						Tablets
					</div>
					<?php
						if($category == 2) {
							?>
							<div class="cattext">
								(Selected)
							</div>
							<?php
						}
					?>
				</div>
			</a>
			<a href="devices.php?category=3<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/modem.png" /> 
					</div>
					<div class="cattext">
						Modems
					</div>
					<?php
						if($category == 3) {
							?>
							<div class="cattext">
								(Selected)
							</div>
							<?php
						}
					?>
				</div>
			</a>
			<a href="devices.php?category=4<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/tv.png" /> 
					</div>
					<div class="cattext">
						TV
					</div>
					<?php
						if($category == 4) {
							?>
							<div class="cattext">
								(Selected)
							</div>
							<?php
						}
					?>
				</div>
			</a>
			<a href="devices.php?category=5<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/outlet.png" /> 
					</div>
					<div class="cattext">
						Outlet
					</div>
					<?php
						if($category == 5) {
							?>
							<div class="cattext">
								(Selected)
							</div>
							<?php
						}
					?>
				</div>
			</a>
		</div>
		<div class="pagecontent">
			<table><?php
			$devices = get_all_devices($category,$promo);
			$count  = 0;
			foreach ($devices as $key => $device) {	
				$count++;
			?>
				<tr class="device">
					<td>
						<img src="images/<?php echo $device["picture"];?>" width="186" height="186" />
					</td>
					<td class="devicename">
						<?php echo $device["name"];?>
					</td>
					<td style="vertical-align:bottom;">
						<?php if($device["promo"]) echo '<div class="promo">PROMO</div>'; ?>
						<span class="price" style=""><?php echo $device["price"];?> €</span>
						<button style="font" onclick="redirect('device.php?id=<?php echo $device["id"];?>')">Details</button>
					</td>
				</tr>
			
			<?php
			}
			if($count == 0) {
				?>
				<tr class="device">
					<td style="text-align:center;width:700px;font-size:24px;">
						No result found!
					</td>
				</tr>
				<?php
			}
			?>
			</table>
		</div>
	</div>
	<?php
	include_once("footer.php");
?>