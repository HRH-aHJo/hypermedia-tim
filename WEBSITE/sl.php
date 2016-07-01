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
			<li><a href="devices.php">All Devices</a></li>
			<li><a href="sl.php">All SL Services</a>
				<ul>
					<li><a href="sl.php" <?php if(!$promo) echo 'class="active"'; ?>>All SL Services & Services by category</a></li>
					<li><a href="sl.php?promo=1"  <?php if($promo) echo 'class="active"'; ?>>Promotions</a></li>
				</ul>
			</li>
			<li><a href="assist.php">All Assistant Services</a></li>
		</ul>
	</div>
	<div class="maincontent">
		<div class="othertitle"> All Smart Life Services </div>
		<div>
			<a href="sl.php?category=1<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/sltv.png" /> 
					</div>
					<div class="cattext">
						TV & Entertainment
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
			<a href="sl.php?category=2<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/health.png" /> 
					</div>
					<div class="cattext">
						Health
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
			<a href="sl.php?category=3<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/slhome.png" /> 
					</div>
					<div class="cattext">
						Home & Family
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
			<a href="sl.php?category=4<?php if($promo) echo '&promo=1'; ?>">
				<div class="category">
					<div>
						<img src="images/personal.png" /> 
					</div>
					<div class="cattext">
						Personal
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
		</div>
		<div class="pagecontent">
			<table><?php
			$sls = get_all_sl($category,$promo);
			$count  = 0;
			foreach ($sls as $key => $sl) {	
				$count++;
			?>
				<tr class="device">
					<td>
						<img src="images/<?php echo $sl["picture"];?>" width="186" height="186" />
					</td>
					<td class="devicename">
						<div style="font-weight:bold">
							<?php echo $sl["name"];?>
						</div>
						<div>
						<?php echo $sl["description"];?>
						</div>
					</td>
					<td style="vertical-align:bottom;">
						<?php if($sl["promo"]) echo '<div class="promo">PROMO</div>'; ?>
						<button onclick="redirect('onesl.php?id=<?php echo $sl["id"];?>')">Details</button>
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