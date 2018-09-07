<?php

	class StudentReports extends model 
	{ 
		var $table = "studentreports";
		
		function search($enrollid='',$teacherid='',$yearid='') {
			$sql = "Select sr.* from studentreports as sr
					 where 1 = 1";
			if ( $enrollid ) $sql .= " and sr.enrollid = $enrollid";
			if ( $teacherid ) $sql .= " and sr.teacherid = $teacherid";
			if ( $yearid ) $sql .= " and sr.yearid = $yearid";
			
			return $this->fetchRows($sql);
		}
		
	}

?>