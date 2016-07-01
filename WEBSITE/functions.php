<?php
	$mysqli;
	function dbconnect() {
		if(isset($mysqli)) return;
		include("config.php");
		$mysqli = new mysqli($host,$username,$password, $db);
		if ($mysqli->connect_errno) {
		    printf("Connect failed: %s\n", $mysqli->connect_error);
		    exit();
		}
		return $mysqli;
	}

	function get_page($name) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT body FROM page WHERE name = '" . $name ."'")) {
			$body = $result->fetch_assoc()["body"];

		    $result->close();
		    return $body;
		}
	}

	function get_one_device($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM device WHERE id = " . $id)) {
			$row = $result->fetch_assoc();

		    $result->close();
		    return $row;
		}
	}

	function get_all_devices($category = null, $promo = null) {
		$mysqli = dbconnect();
		if($category != null && $category > 0 && $category < 6 && $promo != null && $promo == 1) {
			$where = "WHERE category = " . $category . " AND promo = " . $promo;
		} else if ($promo != null && $promo == 1) {
			$where = "WHERE promo = " . $promo;
		} else if($category != null && $category > 0 && $category < 6) {
			$where = "WHERE category = " . $category;
		} else {
			$where = "";
		}
		if ($result = $mysqli->query("SELECT * FROM device " . $where)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_one_sl($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM sl WHERE id = " . $id)) {
			$row = $result->fetch_assoc();

		    $result->close();
		    return $row;
		}
	}

	function get_all_sl($category = null, $promo = null) {
		$mysqli = dbconnect();
		if($category != null && $category > 0 && $category < 6 && $promo != null && $promo == 1) {
			$where = "WHERE category = " . $category . " AND promo = " . $promo;
		} else if ($promo != null && $promo == 1) {
			$where = "WHERE promo = " . $promo;
		} else if($category != null && $category > 0 && $category < 6) {
			$where = "WHERE category = " . $category;
		} else {
			$where = "";
		}
		if ($result = $mysqli->query("SELECT * FROM sl " . $where)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_one_assist($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM assist WHERE id = " . $id)) {
			$row = $result->fetch_assoc();

		    $result->close();
		    return $row;
		}
	}

	function get_all_assist($category = null, $highlight = null) {
		$mysqli = dbconnect();
		if($category != null && $category > 0 && $category < 6 && $highlight != null && $highlight == 1) {
			$where = "WHERE category = " . $category . " AND highlight = " . $highlight;
		} else if ($highlight != null && $highlight == 1) {
			$where = "WHERE highlight = " . $highlight;
		} else if($category != null && $category > 0 && $category < 6) {
			$where = "WHERE category = " . $category;
		} else {
			$where = "";
		}
		if ($result = $mysqli->query("SELECT * FROM assist " . $where)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_device_assist($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM device_assist WHERE device_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_assist_device($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM device_assist WHERE assist_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_device_sl($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM device_sl WHERE device_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_sl_device($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM device_sl WHERE sl_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}
?>