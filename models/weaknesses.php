<?php

	class Weaknesses extends model 
	{ 
		var $table = "weaknesses";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			$sql .= " order by sortno";
			
			return $this->fetchRows($sql);
		}
		
	}

?>