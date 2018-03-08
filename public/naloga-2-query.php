<?php
	
	// DATABASE FUNCTIONS
	require('../secure/database_functions.php');
	
	
	// TYPE OF CHART
	$type = isset($_GET['type'])?$_GET['type']:'';
	
	
	if(isset($type) && is_numeric($type)){
		
		// DATABASE QUERY
		$query_data = query_db($type);
		
		
		// RETURN JSON RESPONSE
		echo json_encode($query_data);
		
	}
