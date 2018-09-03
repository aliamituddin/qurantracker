<?php

	class StudentRemarks extends model 
	{ 
		var $table = "studentremarks";
		
		function search($process='',$approved='') {
			$sql = "SELECT sr.id, sr.doc, s.NAME AS student, pl.NAME AS plevel, nl.NAME AS nlevel, nl.id as nlevelid, e.id as enrollid,
			(select name from 
				(select name, userid from admins
					UNION ALL
				 select name, userid from teachers
					UNION ALL
				 select name, userid from parents) as x
			 where userid = c.id) as creator,
			(select name from 
				(select name, userid from admins
					UNION ALL
				select name, userid from teachers) as x
			 where userid = a.id) as approver
			FROM studentremarks AS sr
			INNER JOIN enrollments AS e ON e.id = sr.enrollid
			INNER JOIN students AS s ON s.id = e.studentid
			LEFT JOIN levels AS pl ON pl.id = sr.flevelid
			INNER JOIN levels AS nl ON nl.id = sr.tlevelid
			INNER JOIN users as c on c.id = sr.createdby
			LEFT JOIN users as a on a.id = sr.approvedby
			WHERE 1 = 1 ";
			if ( is_numeric($process) ) $sql .= " and sr.process = " . $process;
			if ( is_numeric($approved) ) $sql .= " and sr.approvedby > 0";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>