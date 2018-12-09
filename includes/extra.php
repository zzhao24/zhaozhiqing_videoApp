<?php

	include 'functions.php';


	if (isset($_GET['video_id'])) {
		// pass the connection and the movie id to a function
		$data = get_extra_info($conn, $_GET['video_id']);
		echo json_encode($data);
	}



