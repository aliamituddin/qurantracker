<?php

	class Levels extends model 
	{ 
		var $table = "levels";
		
		function search($name='') {
			$sql = "Select l.*, 
					(select count(*) from levelstages as ls where ls.levelid = l.id) as stages
					from " . $this->table . " as l where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			$sql .= " order by l.sortno asc";
			
			return $this->fetchRows($sql);
		}
		
	}

?>