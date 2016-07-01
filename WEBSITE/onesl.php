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
		<div class="othertitle"> SL Service Details </div>
		<div class="pagecontentex">
			<table><?php
			$sl = get_one_sl($id);
			?>
				<tr class="device">
					<td class="devicename" style="width:600px;">
						<?php echo $sl["name"];?>
						<?php if($sl["promo"]) echo '<span class="promo">PROMO</span>'; ?>
					</td>
					<td>
						<img src="images/<?php echo $sl["picture"];?>" width="186" height="186" />
					</td>
				</tr>
			</table>
		</div>
		<div class="othertitle"> Description </div>
		<div class="pagecontentex">
			<?php echo $sl["description"];?>
		</div>
		<div class="othertitle"> Activition & Rules </div>
		<div class="pagecontentex">
			<?php echo $sl["rules"];?>
		</div>
		<div class="othertitle"> Related Devices </div>
		<div class="pagecontentex">
		<?php
			$device_sl = get_all_sl_device($sl["id"]);
			foreach ($device_sl as $key => $value) {
				$device = get_one_device($value['device_id']);
				echo '<a href="device.php?id='.$value['device_id'].'">'.$device["name"].'</a>';
			}
		?>
		</div>
	</div>
	<?php
	include_once("footer.php");
?>