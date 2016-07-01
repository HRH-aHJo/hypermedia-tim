<?php
	include_once("functions.php");
	include_once("header.php");
	if(isset($_GET['id'])) {
		$id = $_GET['id'];
	} else {
		$id = 1;
	}
	
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
		<div class="othertitle"> Devices Details </div>
		<div class="pagecontentex">
			<table><?php
			$device = get_one_device($id);
			?>
				<tr class="device">
					<td>
						<img src="images/<?php echo $device["picture"];?>" width="186" height="186" />
					</td>
					<td class="devicename">
						<?php echo $device["name"];?>
						<div>
						<?php echo $device["features"];?>
						</div>
					</td>
					<td style="vertical-align:bottom;">
						<?php if($device["promo"]) echo '<div class="promo">PROMO</div>'; ?>
						<span class="price" style=""><?php echo $device["price"];?> €</span>
						<button style="font">Buy</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="othertitle"> Technical Specifications </div>
		<div class="pagecontentex">
			<?php echo $device["tech"];?>
		</div>
		<div class="othertitle"> Related SL Services </div>
		<div class="pagecontentex">
		<?php
			$device_sl = get_all_device_sl($device["id"]);
			foreach ($device_sl as $key => $value) {
				$sl = get_one_sl($value['sl_id']);
				echo '<a href="onesl.php?id='.$value['sl_id'].'">'.$sl["name"].'</a>';
			}
		?>
		</div>
		<div class="othertitle"> Related Assistabt Services</div>
		<div class="pagecontentex">
			<?php
			$device_sl = get_all_device_assist($device["id"]);
			foreach ($device_sl as $key => $value) {
				$assist = get_one_assist($value['assist_id']);
				echo '<a href="oneassist.php?id='.$value['assist_id'].'">'.$assist["name"].'</a>';
			}
		?>
		</div>
	</div>
	<?php
	include_once("footer.php");
?>