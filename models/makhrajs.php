<?php

	class Makhrajs extends model 
	{ 
		var $table = "makhrajs";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			return $this->fetchRows($sql);
		}
		
	}

?>