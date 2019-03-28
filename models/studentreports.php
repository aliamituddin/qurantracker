<?php

	class StudentReports extends model 
	{ 
		var $table = "studentreports";
		
		function search($enrollid='',$teacherid='',$yearid='',$student='') {
			$sql = "Select sr.*, st.id as studentid, g.id as gradeid, c.id as classid, t.name as teacher, st.name as student, y.name as year, r.name as term, l.name as level, s.name as stage, g.name as grade, c.name as class from studentreports as sr
					inner join enrollments as e on e.id = sr.enrollid
					inner join students as st on st.id = e.studentid
					inner join teachers as t on t.id = sr.teacherid
					inner join years as y on y.id = sr.yearid
					inner join terms as r on r.id = sr.termid
					inner join levels as l on l.id = sr.levelid
					inner join levelstages as s on s.id = sr.stageid
					inner join grades as g on g.id = e.gradeid
					inner join classes as c on c.id = e.classid
					 where 1 = 1";
			if ( $enrollid ) $sql .= " and sr.enrollid = $enrollid";
			if ( $teacherid ) $sql .= " and sr.teacherid = $teacherid";
			if ( $yearid ) $sql .= " and sr.yearid = $yearid";
			if ( $student ) $sql .= " and st.name like '%$student%'";
			// echo $sql;
			return $this->fetchRows($sql);
		}

		function getDetails($id='') {
			$sql = "Select sr.*, st.id as studentid, st.referenceno, t.name as teacher, st.name as student, y.name as year, r.name as term, l.name as level, s.name as stage, g.name as grade, c.name as class, i.description as improvement, d.description as discipline from studentreports as sr
					inner join enrollments as e on e.id = sr.enrollid
					inner join students as st on st.id = e.studentid
					inner join teachers as t on t.id = sr.teacherid
					inner join years as y on y.id = sr.yearid
					inner join terms as r on r.id = sr.termid
					inner join levels as l on l.id = sr.levelid
					inner join levelstages as s on s.id = sr.stageid
					inner join grades as g on g.id = e.gradeid
					inner join classes as c on c.id = e.classid
					inner join improvements as i on i.id = sr.improvementid
					inner join disciplines as d on d.id = sr.disciplineid
					 where 1 = 1";
			if ( $id ) $sql .= " and sr.id = $id";
			
			return $this->fetchRow($sql);
		}
		
	}

?>