<?php

	class Enrollments extends model 
	{ 
		var $table = "enrollments";
		
		function search($gradeid='',$classid='') {
			$sql = "Select e.*, CONCAT(s.name,'-',g.name,c.name) as enrollment, s.name as student, g.name as grade, c.name as class, y.name as year from ".$this->table." as e
					INNER JOIN grades as g on g.id = e.gradeid
					INNER JOIN classes as c on c.id = e.classid
					INNER JOIN years as y on y.id = e.yearid
					INNER JOIN students as s on s.id = e.studentid
					where 1 = 1 ";
			if ( $gradeid ) $sql .= " and e.gradeid = " . $gradeid;
			if ( $classid ) $sql .= " and e.classid = " . $classid;
			
			$sql .= " order by e.status desc, g.id, c.id, s.id";
			return $this->fetchRows($sql);
		}
		
		function getDetails($id='') {
			$sql = "Select e.*, s.name as student, g.name as grade, c.name as class, y.name as year from ".$this->table." as e
					INNER JOIN grades as g on g.id = e.gradeid
					INNER JOIN classes as c on c.id = e.classid
					INNER JOIN years as y on y.id = e.yearid
					INNER JOIN students as s on s.id = e.studentid
					where 1 = 1 ";
			if ( $id ) $sql .= " and e.id = " . $id;
			
			return $this->fetchRow($sql);
		}
		
		function getEnrollments($teacherid='') {
			$sql = "Select e.*, CONCAT(s.name,' ',g.name,c.name,' ',y.name) as student from ".$this->table." as e
					INNER JOIN grades as g on g.id = e.gradeid
					INNER JOIN classes as c on c.id = e.classid
					INNER JOIN years as y on y.id = e.yearid
					INNER JOIN students as s on s.id = e.studentid
					LEFT JOIN levels as l on s.levelid = l.id
					where 1 = 1 and e.status = 1 ";
			if ( $teacherid ) $sql .= " and IFNULL(l.sortno,0) <= 
									(select l2.sortno from levels as l2
									inner join teachers as t on t.maxlevelid = l2.id
									where t.id = ".$teacherid.")";
			
			$sql .= " order by s.name asc";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>