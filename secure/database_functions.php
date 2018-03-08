<?php

	require('db_connect.php');
	

	function insert_to_db($user_profile, $user_timeline) {
	
		global $cn;
		
		// PROFILE VARIABLES
		$twitter_user_id = $user_profile["id"];
		$screen_name = $user_profile["screen_name"];
		$name = $user_profile["name"];
		$profile_image = $user_profile["profile_image_url"];
		$followers =  $user_profile["followers_count"];
	
	
		if(isset($screen_name) && $screen_name){
		
			// CHECK IF RECORD EXIST IN DB
			$select = 'SELECT * FROM glasbeniki WHERE screen_name = :screen_name';
			$query=$cn->prepare($select);
			$query->bindParam(':screen_name', $screen_name, PDO::PARAM_STR);
			$query->execute();
			$value = $query->fetchAll(PDO::FETCH_UNIQUE);
			
			
			// IF THERE IS NO RECORD FOR USER, ADD INTO DB
			if( empty($value) ){
				
				// INSERT PROFILE DATA TO DB
				$insert_profile = 'INSERT INTO glasbeniki ( twitter_user_id,  screen_name,  name,  profile_image,  followers) 
												  VALUES ( :twitter_user_id, :screen_name, :name, :profile_image, :followers )';
				$query=$cn->prepare($insert_profile);
				$query->bindParam(':twitter_user_id', $twitter_user_id, PDO::PARAM_INT);
				$query->bindParam(':screen_name', $screen_name, PDO::PARAM_STR);
				$query->bindParam(':name', $name, PDO::PARAM_STR);
				$query->bindParam(':profile_image', $profile_image, PDO::PARAM_STR);
				$query->bindParam(':followers', $followers, PDO::PARAM_INT);
				$query->execute();
				
				// GET INSERTED USER ID
				$user_id = $cn->lastInsertId();
				
				
				
				// INSERT USER TWEETS TO DB
				foreach($user_timeline as $tweets){
			
					// TWEET VARIABLES
					$tweet_date = gmdate('Y-m-d H:i:s', strtotime($tweets["created_at"]));
					$tweet_id = $tweets["id"];
					$text = $tweets["text"];
					$tweet_user_id = $tweets["user"]["id"];
					$retweet_count = $tweets["retweet_count"];
					$favorite_count = $tweets["favorite_count"];
					
				
					$sql = 'INSERT INTO glasbeniki_tweets (  user_id,  tweet_user_id,  text,  retweet_count,  favorite_count,  tweet_date) 
													VALUES (:user_id, :tweet_user_id, :text, :retweet_count, :favorite_count, :tweet_date )';
					$query=$cn->prepare($sql);
					$query->bindParam(':user_id', $user_id, PDO::PARAM_INT);
					$query->bindParam(':tweet_user_id', $tweet_user_id, PDO::PARAM_INT);
					$query->bindParam(':text', $text, PDO::PARAM_STR);
					$query->bindParam(':retweet_count', $retweet_count, PDO::PARAM_INT);
					$query->bindParam(':favorite_count', $favorite_count, PDO::PARAM_INT);
					$query->bindParam(':tweet_date', $tweet_date, PDO::PARAM_STR);
					$query->execute();
					
				}
				
			}
		}
	
	}
	
	
	
	function query_db($type) {
	
		global $cn;
		
		// QUERY BASED ON TYPE
		$select[1] = 'SELECT screen_name, followers FROM glasbeniki';
		$select[2] = 'SELECT glasbeniki.screen_name, SUM(glasbeniki_tweets.favorite_count) as followers
			FROM glasbeniki
            JOIN glasbeniki_tweets ON glasbeniki.user_id = glasbeniki_tweets.user_id
            GROUP BY glasbeniki.screen_name';
		
		$query=$cn->prepare($select[$type]);
		$query->execute();
		$query_data = $query->fetchAll();
		$return_data = array();
		
		if(isset($query_data) && is_array($query_data) && count($query_data) > 0){
		  foreach($query_data as $key => $val){
			  
			$return_data[$val["screen_name"]] = $val["followers"];
			  
		  }
		}
		
		return $return_data;
	
	}
	
	
