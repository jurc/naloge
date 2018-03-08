<?php

	// PHP LIBRARIES
	require('../vendor/autoload.php');
	
	// TWITTER API ACCESS
	require('../secure/access_tokens.php');
	
	// DATABASE FUNCTIONS
	require('../secure/database_functions.php');
	
	
	
	// GET ARTIST USER SCREEN NAME
	$name = isset($_GET['name'])?$_GET['name']:'';
	
	
	if(isset($name) && $name){
		
		// TWITTER API OATH CONNECTION SETTINGS
		$settings = array(
			'oauth_access_token' => $access_token,
			'oauth_access_token_secret' => $access_token_secret,
			'consumer_key' => $consumer_key,
			'consumer_secret' => $consumer_secret
		);
		
		
		// GET TWITTER USER PROFILE DATA
		$url = 'https://api.twitter.com/1.1/users/show.json';
		$getfield = '?screen_name='.$name;
		$requestMethod = 'GET';

		$twitter = new TwitterAPIExchange($settings);
		$response = $twitter->setGetfield($getfield)
			->buildOauth($url, $requestMethod)
			->performRequest();
		$user_profile = '"profile":'.$response;
		
		
		// JSON TO PHP ARRAY
		$user_profile_array = json_decode($response, true);
		
		
		
		// GET TWITTER USER TWEETS
		// QUICK FIX FOR SEARCHING BY MONTH, standard Twitter API search searches only last 7 tweets, user timeline does not offer date search
		$tweet["umek_1605"]["min"] = 947834766971359200;
		$tweet["umek_1605"]["max"] = 958294992690217000;
		$tweet["katyperry"]["min"] = 948980879396806700;
		$tweet["katyperry"]["max"] = 958643291569844200;
		$tweet["ddlovato"]["min"] = 947680984094343200;
		$tweet["ddlovato"]["max"] = 958844274677727200;
	
		$url = 'https://api.twitter.com/1.1/statuses/user_timeline.json';
		$getfield = '?screen_name='.$name.'&since_id='.$tweet[$name]["min"].'&max_id='.$tweet[$name]["max"].'&count=100';
		$requestMethod = 'GET';

		$response2 = $twitter->setGetfield($getfield)
			->buildOauth($url, $requestMethod)
			->performRequest();
		$user_timeline = '"timeline":'.$response2;
		
		
		// JSON TO PHP ARRAY
		$user_timeline_array = json_decode($response2, true);
		
		
		// ADD DATA TO MYSQL DB
		insert_to_db($user_profile_array, $user_timeline_array);
		
		
		
		// RETURN JSON RESPONSE
		echo '{'.$user_profile.','.$user_timeline.'}';
		
		
		
	}
