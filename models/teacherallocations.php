<?php

	class TeacherAllocations extends model 
	{ 
		var $table = "teacherallocations";
		
		function search($teacherid='',$status='',$groupid='',$yearid='') {
			$sql = "SELECT ta.*, gr.status, s.name as student, t.id as teacherid, t.name as teacher, gr.name as grp, g.name as grade, c.name as class, 
					l.id as clevelid, l.name as clevel, ls.id as cstageid, ls.name as cstage from teacherallocations as ta
					INNER JOIN enrollments as e on e.id = ta.enrollid
					INNER JOIN groups as gr on gr.id = ta.groupid
					INNER JOIN teachers as t on t.id = gr.teacherid
					INNER JOIN students as s on s.id = e.studentid
					INNER JOIN grades as g on g.id = e.gradeid
					INNER JOIN classes as c on c.id = e.classid
					LEFT JOIN levels as l on s.levelid = l.id
					LEFT JOIN levelstages as ls on s.stageid = ls.id
					where 1 = 1 ";
			if ( $teacherid ) $sql .= " and t.id = " . $teacherid;
			if ( is_numeric($status) ) $sql .= " and ta.status = " . $status;
			if ( $groupid ) $sql .= " and gr.id = " . $groupid;
			if ( $yearid ) $sql .= " and gr.yearid = $yearid";
						
			return $this->fetchRows($sql);
		}
		
		function getDetails($id='') {
			$sql = "SELECT ta.*, s.name as student, t.id as teacherid, t.name as teacher, gr.name as grp, g.name as grade, c.name as class from teacherallocations as ta
					INNER JOIN enrollments as e on e.id = ta.enrollid
					INNER JOIN groups as gr on gr.id = ta.groupid
					INNER JOIN teachers as t on t.id = gr.teacherid
					INNER JOIN students as s on s.id = e.studentid
					INNER JOIN grades as g on g.id = e.gradeid
					INNER JOIN classes as c on c.id = e.classid
					where 1 = 1 ";
			if ( $id ) $sql .= " and ta.id = " . $id;
			
			return $this->fetchRow($sql);
		}
		
	}

?>