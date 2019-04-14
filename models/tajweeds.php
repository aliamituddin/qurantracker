<?php

	class Tajweeds extends model 
	{ 
		var $table = "tajweeds";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			$sql .= " order by sortno";
			
			return $this->fetchRows($sql);
		}
		
	}

?>