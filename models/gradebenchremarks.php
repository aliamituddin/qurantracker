<?php

	class GradeBenchRemarks extends model 
	{ 
		var $table = "gradebenchremarks";
		
		function search($gbid='') {
			$sql = "Select gbr.* from ".$this->table." as gbr
					where 1 = 1";
			if ( $gbid ) $sql .= " and gbr.gbenchid = " . $gbid;
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>