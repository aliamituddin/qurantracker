<?php

	class StudentPartners extends model 
	{ 
		var $table = "studentpartners";
		
		function search($sreportid,$status='') {
			$sql = "select sp.*, p.id as pid, p.description, p.description_sw from studentpartners as sp
					right join partners as p on p.id = sp.partnerid and sp.sreportid = $sreportid
					where 1=1 ";
			if (is_numeric($status)) $sql .= " and p.status = $status";
			$sql .= " order by p.id";
			// echo $sql;
			return $this->fetchRows($sql);
		}
		
	}

?>