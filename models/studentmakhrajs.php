<?php

	class StudentMakhrajs extends model 
	{ 
		var $table = "studentmakhrajs";
		
		function search($sreportid,$status='') {
			$sql = "select sm.*, m.id as mid, m.override, m.description, m.description_sw from studentmakhrajs as sm
					right join makhrajs as m on m.id = sm.makhrajid and sm.sreportid = $sreportid
					where 1=1 ";
			if (is_numeric($status)) $sql .= " and m.status = $status";
			$sql .= " order by m.id";
			// echo $sql;
			return $this->fetchRows($sql);
		}

		function getOtherLetters($sreportid=0) {
			$sql = "select * from studentmakhrajs as sm
					where sm.sreportid = $sreportid and sm.makhraj not in (select name from letters) ";
			
			return $this->fetchRows($sql);
		}
		
	}

?>