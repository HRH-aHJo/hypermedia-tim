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
		<div class="othertitle"> Assistant Service Details </div>
		<div class="pagecontentex">
			<table><?php
			$assist = get_one_assist($id);
			?>
				<tr class="device">
					<td class="devicename" style="width:600px;">
						<?php echo $assist["name"];?>
						<?php if($assist["highlight"]) echo '<span class="highlight">HOIGLIGHT</span>'; ?>
					</td>
					
				</tr>
			</table>
		</div>
		<div class="othertitle"> Description </div>
		<div class="pagecontentex">
			<?php echo $assist["description"];?>
		</div>
		<div class="othertitle"> FAQ </div>
		<div class="pagecontentex">
			<?php echo $assist["faq"];?>
		</div>
		<div class="othertitle"> Related Devices </div>
		<div class="pagecontentex">
		<?php
			$device_sl = get_all_assist_device($assist["id"]);
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