<?php

	class StudentWeaknesses extends model 
	{ 
		var $table = "studentweaknesses";
		
		function search($sreportid,$status='') {
			$sql = "select sw.*, w.id as wid, w.override, w.description, w.description_sw from studentweaknesses as sw
					right join weaknesses as w on w.id = sw.weaknessid and sw.sreportid = $sreportid
					where 1=1 ";
			if (is_numeric($status)) $sql .= " and w.status = $status";
			$sql .= " order by w.id";
			// echo $sql;
			return $this->fetchRows($sql);
		}

		function getOtherLetters($sreportid=0) {
			$sql = "select * from studentweaknesses as sw
					where sw.sreportid = $sreportid and sw.weakness not in (select name from letters) ";
			
			return $this->fetchRows($sql);
		}
		
	}

?>