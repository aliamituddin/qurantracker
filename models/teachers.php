<?php

	class Teachers extends model 
	{ 
		var $table = "teachers";
		
		function search($userid='') {
			$sql = "Select t.*, u.status, u.username, l.name as maxlevel from " . $this->table . " as t
					inner join users as u on u.id = t.userid
					inner join levels as l on l.id = t.maxlevelid
					where 1 = 1 ";
			if ( $userid ) $sql .= " and t.userid = " . $userid;
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
		function getDetails($teacherid='',$userid='') {
			$sql = "Select t.*, u.status, u.username from " . $this->table . " as t
					inner join users as u on u.id = t.userid
					where 1 = 1";
					if ( $teacherid ) $sql .= " and t.id = " . $teacherid;
			if ( $userid ) $sql .= " and t.userid = " . $userid;
			// echo $sql;
			return $this->fetchRow($sql);
		}
		
	}

?>