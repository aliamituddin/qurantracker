<?php

	class StudentWeaknesses extends model 
	{ 
		var $table = "studentweaknesses";
		
		function search($sreportid=0) {
			$sql = "select l.id, l.name, sw.weakness from letters as l
					left join studentweaknesses as sw on l.name = sw.weakness and sw.sreportid = $sreportid
					order by l.id ";
			
			return $this->fetchRows($sql);
		}

		function getOtherLetters($sreportid=0) {
			$sql = "select * from studentweaknesses as sw
					where sw.sreportid = $sreportid and sw.weakness not in (select name from letters) ";
			
			return $this->fetchRows($sql);
		}
		
	}

?>