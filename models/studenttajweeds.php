<?php

	class StudentTajweeds extends model 
	{ 
		var $table = "studenttajweeds";
		
		function search($sreportid,$status='') {
			$sql = "select st.*, t.id as tid, t.override, t.description, t.description_sw from studenttajweeds as st
					right join tajweeds as t on t.id = st.tajweedid and st.sreportid = $sreportid
					where 1=1 ";
			if (is_numeric($status)) $sql .= " and t.status = $status";
			$sql .= " order by t.sortno";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>