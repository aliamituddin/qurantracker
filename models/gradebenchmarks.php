<?php

	class GradeBenchmarks extends model 
	{ 
		var $table = "gradebenchmarks";
		
		function search($name='') {
			$sql = "Select gb.*, y.name as year, g.name as grade, l.name as level, (select count(*) from gradebenchremarks where gbenchid = gb.id) as remarks from " . $this->table . " as gb
					inner join grades as g on g.id = gb.gradeid
					inner join years as y on y.id = gb.yearid
					inner join gradebenchlevels as gbl on gbl.gbenchid = gb.id
					inner join levels as l on l.id = gbl.levelid
					where 1 = 1";
			if ( $name ) $sql .= " and name like '%" . $name . "%'";
			
			return $this->fetchRows($sql);
		}
		
		function getDetails($gbid='') {
			$sql = "Select gb.*, y.name as year, g.name as grade, l.id as levelid from " . $this->table . " as gb
					inner join grades as g on g.id = gb.gradeid
					inner join years as y on y.id = gb.yearid
					inner join gradebenchlevels as gbl on gbl.gbenchid = gb.id
					inner join levels as l on l.id = gbl.levelid
					where 1 = 1";
			if ( $gbid ) $sql .= " and gb.id = " . $gbid;
			// echo $sql;
			return $this->fetchRow($sql);
		}
		
	}

?>