<?php

	class Levels extends model 
	{ 
		var $table = "levels";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			$sql .= " order by sortno asc";
			
			return $this->fetchRows($sql);
		}
		
	}

?>