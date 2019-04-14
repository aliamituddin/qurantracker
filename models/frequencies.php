<?php

	class Frequencies extends model 
	{ 
		var $table = "frequencies";
		
		function search($status='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( is_numeric($status) ) $sql .= " and status = $status ";
			
			$sql .= " order by sortno asc";

			return $this->fetchRows($sql);
		}
		
	}

?>