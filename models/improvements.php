<?php

	class Improvements extends model 
	{ 
		var $table = "improvements";
		
		function search($status='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( is_numeric($status) ) $sql .= " and status = $status ";
			
			return $this->fetchRows($sql);
		}
		
	}

?>