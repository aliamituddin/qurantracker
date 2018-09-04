<?php

	class StudentRemarks extends model 
	{ 
		var $table = "studentremarks";
		
		function search($process='',$approved='',$creatorid='') {
			$sql = "SELECT sr.id, sr.doc, s.NAME AS student, e.id as enrollid,
			pl.NAME AS plevel, nl.NAME AS nlevel, ps.name as pstage, ns.name as nstage, nl.id as nlevelid, ns.id as nstageid,
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
			LEFT JOIN levelstages AS ps ON ps.id = sr.fstageid
			INNER JOIN levelstages AS ns ON ns.id = sr.tstageid
			INNER JOIN users as c on c.id = sr.createdby
			LEFT JOIN users as a on a.id = sr.approvedby
			WHERE 1 = 1 ";
			if ( is_numeric($process) ) $sql .= " and sr.process = " . $process;
			if ( is_numeric($approved) ) $sql .= " and sr.approvedby > 0";
			if ( is_numeric($creatorid) ) $sql .= " and c.id = $creatorid";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>