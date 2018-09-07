<?php

	class StudentTajweeds extends model 
	{ 
		var $table = "studenttajweeds";
		
		function search($sreportid='') {
			$sql = "select st.* from studenttajweeds as st
					where 1=1 ";
					
			if ($sreportid) $sql .= " and st.sreportid = $sreportid";
			
			return $this->fetchRows($sql);
		}
		
	}

?>