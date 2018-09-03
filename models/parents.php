<?php

	class Parents extends model 
	{ 
		var $table = "parents";
		
		function search($name='',$gender='') {
			$sql = "Select p.*, u.status, u.username from " . $this->table . " as p
					inner join users as u on u.id = p.userid
					where 1 = 1 ";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			if ( $gender ) $sql .= " and p.gender = '" . $gender . "'";
			
			return $this->fetchRows($sql);
		}
		
		function getDetails($parentid='',$userid='') {
			$sql = "Select p.*, u.status, u.username from " . $this->table . " as p
					inner join users as u on u.id = p.userid
					where 1 = 1";
			if ( $parentid ) $sql .= " and p.id = " . $parentid;
			if ( $userid ) $sql .= " and p.userid = " . $userid;
			// echo $sql;
			return $this->fetchRow($sql);
		}
		
	}

?>