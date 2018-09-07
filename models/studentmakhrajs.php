<?php

	class StudentMakhrajs extends model 
	{ 
		var $table = "studentmakhrajs";
		
		function search($sreportid=0) {
			$sql = "select l.id, l.name, sm.makhraj from letters as l
					left join studentmakhrajs as sm on l.name = sm.makhraj and sm.sreportid = $sreportid
					order by l.id ";
			
			return $this->fetchRows($sql);
		}

		function getOtherLetters($sreportid=0) {
			$sql = "select * from studentmakhrajs as sm
					where sm.sreportid = $sreportid and sm.makhraj not in (select name from letters) ";
			
			return $this->fetchRows($sql);
		}
		
	}

?>