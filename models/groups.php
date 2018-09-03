<?php

	class Groups extends model 
	{ 
		var $table = "groups";
		
		function search($name='') {
			$sql = "SELECT gr.*, t.name as teacher, y.name as year, (select count(*) from teacherallocations where groupid = gr.id) as students from groups as gr 
					inner join teachers as t on t.id = gr.teacherid
					inner join years as y on y.id = gr.yearid
					where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			return $this->fetchRows($sql);
		}
		
		function getDetails($id='') {
			$sql = "SELECT gr.*, t.name as teacher, y.name as year, (select count(*) from teacherallocations where groupid = gr.id) as students from groups as gr 
					inner join teachers as t on t.id = gr.teacherid
					inner join years as y on y.id = gr.yearid
					where 1 = 1";
			if ( $id ) $sql .= " and gr.id = " . $id;
			
			return $this->fetchRow($sql);
		}
		
	}

?>