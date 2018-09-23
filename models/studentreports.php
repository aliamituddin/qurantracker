<?php

	class StudentReports extends model 
	{ 
		var $table = "studentreports";
		
		function search($enrollid='',$teacherid='',$yearid='') {
			$sql = "Select sr.*, t.name as teacher, st.name as student, y.name as year, r.name as term, l.name as level, s.name as stage from studentreports as sr
					inner join enrollments as e on e.id = sr.enrollid
					inner join students as st on st.id = e.studentid
					inner join teachers as t on t.id = sr.teacherid
					inner join years as y on y.id = sr.yearid
					inner join terms as r on r.id = sr.termid
					inner join levels as l on l.id = sr.levelid
					inner join levelstages as s on s.id = sr.stageid
					 where 1 = 1";
			if ( $enrollid ) $sql .= " and sr.enrollid = $enrollid";
			if ( $teacherid ) $sql .= " and sr.teacherid = $teacherid";
			if ( $yearid ) $sql .= " and sr.yearid = $yearid";
			
			return $this->fetchRows($sql);
		}
		
	}

?>