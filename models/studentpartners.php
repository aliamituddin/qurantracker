<?php

	class StudentPartners extends model 
	{ 
		var $table = "studentpartners";
		
		function search($sreportid='') {
			$sql = "Select sp.* from " . $this->table . " as sp
					where 1 = 1";
			if ( $sreportid ) $sql .= " and sp.sreportid = $sreportid";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>