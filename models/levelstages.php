<?php

	class LevelStages extends model 
	{ 
		var $table = "levelstages";
		
		function search($levelid='') {
			$sql = "Select ls.* from levels as l
					inner join levelstages as ls on ls.levelid = l.id
					 where 1 = 1";
			if ( $levelid ) $sql .= " and l.id = $levelid";
			
			$sql .= " order by ls.sortno asc";
			
			return $this->fetchRows($sql);
		}
		
	}

?>