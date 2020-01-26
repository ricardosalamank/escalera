<?php
	require "app/Poker.php";
	
	$ejemplo = array();
	$ejemplo[] = array(14,2,3,4,5);
	$ejemplo[] = array(9,10,11,12,13);
	$ejemplo[] = array(2,7,8,5,10,9,11);
	$ejemplo[] = array(7,8,12,13,14);
	
	$poker = new Poker();
	foreach ($ejemplo as $val) {
		$poker->isStraight($val);
	}
