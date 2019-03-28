<?php

	class Students extends model 
	{ 
		var $table = "students";
	
		function search($name='') {
			$sql = "Select s.*, u.status, u.username, m.name as mother, f.name as father, d.name as madrasah, l.name as level from " . $this->table . " as s	
					inner join users as u on u.id = s.userid
					left join levels as l on l.id = s.levelid
					left join madrasahs as d on d.id = s.madrasahid
					left join parents as f on f.id = s.fparentid and f.gender = 'm'
					left join parents as m on m.id = s.mparentid and m.gender = 'f'
					where 1 = 1";
			if ( $name ) $sql .= " and s.name like '%" . $name . "%'";
			
			$sql .= " order by s.name";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
		function getDetails($studentid='',$userid='') {
			$sql = "Select s.*, u.status, u.username, m.name as mother, f.name as father from " . $this->table . " as s	
					inner join users as u on u.id = s.userid
					left join parents as f on f.id = s.fparentid and f.gender = 'm'
					left join parents as m on m.id = s.mparentid and m.gender = 'f'
					where 1 = 1 ";
			if ( $studentid ) $sql .= " and s.id = " . $studentid;
			if ( $userid ) $sql .= " and s.userid = " . $userid;
			// echo $sql;
			return $this->fetchRow($sql);
		}
		
	}

?>