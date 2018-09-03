<?php

	class UserTypes extends Model 
	{ 
		var $table = "usertypes";
		
		function search($name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			return $this->fetchRows($sql);
		}
		
		function getDetails($id='',$name='') {
			$sql = "Select * from " . $this->table . " where 1 = 1";
			if ( $id ) $sql .= " and id = $id";
			if ( $name ) $sql .= " and name = '$name'";
			
			return $this->fetchRow($sql);
		}
	}

?>