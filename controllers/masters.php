<?

$folder = 'masters/';

if ( $action == 'madrasahs' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['madrasahs'] = $Madrasahs->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'madrasahs.tpl.php',$tData);
}

if ( $action == 'madrasah_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['madrasah'] = $Madrasahs->get($id);
	
	$action = 'madrasah_add';
}

if ( $action == 'madrasah_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'madrasah_edit.tpl.php',$tData);
}

if ( $action == 'ajax_madrasah_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['madrasah'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Madrasahs->insert($miniData);
		
		$obj->msg='Madrasah Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=madrasah_add';
		$obj->mainredirect='?module=masters&action=madrasahs';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Madrasahs->update($id,$miniData);
		
		$obj->msg='Madrasah Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=madrasah_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=madrasahs';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'grades' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['grades'] = $Grades->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'grades.tpl.php',$tData);
}

if ( $action == 'grade_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['grade'] = $Grades->get($id);
	
	$action = 'grade_add';
}

if ( $action == 'grade_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'grade_edit.tpl.php',$tData);
}

if ( $action == 'ajax_grade_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['grade'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Grades->insert($miniData);
		
		$obj->msg='Grade Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=grade_add';
		$obj->mainredirect='?module=masters&action=grades';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Grades->update($id,$miniData);
		
		$obj->msg='Grade Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=grade_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=grades';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'classes' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['classes'] = $Classes->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'classes.tpl.php',$tData);
}

if ( $action == 'class_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['class'] = $Classes->get($id);
	
	$action = 'class_add';
}

if ( $action == 'class_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'class_edit.tpl.php',$tData);
}

if ( $action == 'ajax_class_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['class'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Classes->insert($miniData);
		
		$obj->msg='Class Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=class_add';
		$obj->mainredirect='?module=masters&action=classes';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Classes->update($id,$miniData);
		
		$obj->msg='Class Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=class_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=classes';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'terms' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['terms'] = $Terms->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'terms.tpl.php',$tData);
}

if ( $action == 'term_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['term'] = $Terms->get($id);
	
	$action = 'term_add';
}

if ( $action == 'term_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'term_edit.tpl.php',$tData);
}

if ( $action == 'ajax_term_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['term'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Terms->insert($miniData);
		
		$obj->msg='Term Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=term_add';
		$obj->mainredirect='?module=masters&action=terms';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Terms->update($id,$miniData);
		
		$obj->msg='Term Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=term_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=terms';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'years' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['years'] = $Years->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'years.tpl.php',$tData);
}

if ( $action == 'year_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['year'] = $Years->get($id);
	
	$action = 'year_add';
}

if ( $action == 'year_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'year_edit.tpl.php',$tData);
}

if ( $action == 'ajax_year_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['year'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Years->insert($miniData);
		
		$obj->msg='Year Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=year_add';
		$obj->mainredirect='?module=masters&action=years';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Years->update($id,$miniData);
		
		$obj->msg='Year Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=year_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=years';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'levels' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['levels'] = $Levels->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'levels.tpl.php',$tData);
}

if ( $action == 'level_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['level'] = $Levels->get($id);
	
	$action = 'level_add';
}

if ( $action == 'level_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'level_edit.tpl.php',$tData);
}

if ( $action == 'ajax_level_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['level'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Levels->insert($miniData);
		
		$obj->msg='Level Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=level_add';
		$obj->mainredirect='?module=masters&action=levels';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Levels->update($id,$miniData);
		
		$obj->msg='Level Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=level_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=levels';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'level_stage_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['id'] = $_GET['id'];
	$tData['stages'] = $LevelStages->search($tData['id']);
	
	$data['content'] = loadTemplate($folder.'level_stage_edit.tpl.php',$tData);
}

if ( $action == 'ajax_level_stage_save' ) {
	
	$obj = null;
	
	$levelid = intval($_POST['levelid']);
	$lsid = $_POST['lsid'];
	$stage = $_POST['stage'];
	$sortno = $_POST['sortno'];
	
	$lsData['levelid'] = $levelid;
	foreach ($lsid as $v=>$sid) {
		if ($sid) {
			$lsData['modifiedby'] = USER_ID;
			$lsData['name'] = $stage[$v];
			$lsData['sortno'] = $sortno[$v];

			$LevelStages->update($sid,$lsData);
		} else {
			$lsData['createdby'] = USER_ID;
			$lsData['name'] = $stage[$v];
			$lsData['sortno'] = $sortno[$v];

			if ($stage[$v]) $LevelStages->insert($lsData);
		}

	}
	
	$obj->msg='Stages Updated';
	$obj->status=1;
	$obj->redirect='?module=masters&action=level_stage_edit&id='.$levelid;
	$obj->mainredirect='?module=masters&action=levels';
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'benchmarks' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['benchmarks'] = $GradeBenchmarks->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'benchmarks.tpl.php',$tData);
}

if ( $action == 'benchmark_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['benchmark'] = $GradeBenchmarks->getDetails($id);
	
	$action = 'benchmark_add';
}

if ( $action == 'benchmark_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['grades'] = $Grades->search();
	$tData['years'] = $Years->search();
	$tData['levels'] = $Levels->search();
	
	$data['content'] = loadTemplate($folder.'benchmark_edit.tpl.php',$tData);
}

if ( $action == 'ajax_benchmark_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['benchmark'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$GradeBenchmarks->insert($miniData);
		
		$gblData['gbenchid'] = $GradeBenchmarks->lastId();
		$gblData['levelid'] = $_POST['levelid'];
		$GradeBenchLevels->insert($gblData);
		
		$obj->msg='Benchmark Added';
		$obj->status=1;
		$obj->redirect='?module=masters&action=benchmark_add';
		$obj->mainredirect='?module=masters&action=benchmarks';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		$GradeBenchmarks->update($id,$miniData);
				
		$gblData['gbenchid'] = $id;
		$GradeBenchLevels->deleteWhere($gblData);
		
		$gblData['levelid'] = $_POST['levelid'];
		$GradeBenchLevels->insert($gblData);
		
		$obj->msg='Benchmark Updated';
		$obj->status=1;
		$obj->redirect='?module=masters&action=benchmark_edit&id='.$id;
		$obj->mainredirect='?module=masters&action=benchmarks';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'benchremark_edit') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	
	$tData['gbench'] = $GradeBenchmarks->getDetails($id);
	$tData['remarks'] = $GradeBenchRemarks->search($id);
	
	$data['content'] = loadTemplate($folder.'benchremark_edit.tpl.php',$tData);
}

if ( $action == 'ajax_benchremark_save' ) {
	
	$obj = null;
	$gbid = intval($_POST['gbid']);
	$variances = $_POST['variance'];
	$remarks = $_POST['remarks'];
		
	$miniData['gbenchid'] = $gbid;
	$GradeBenchRemarks->deleteWhere($miniData);
	$miniData['createdby'] = USER_ID;
	
	foreach ($variances as $i=>$v) {
		$miniData['variance'] = $v;
		$miniData['remarks'] = $remarks[$i];
		if (is_numeric($v)) $GradeBenchRemarks->insert($miniData);
	}	
	
	$obj->msg='Remarks Updated';
	$obj->status=1;
	$obj->redirect='?module=masters&action=benchremark_edit&id='.$gbid;
	$obj->mainredirect='?module=masters&action=benchmarks';

	
	$response[]=$obj;
	$data['content'] = $response;
}


if ($action == 'ajax_getLevelStages' ) {
	$levelid = $_GET['levelid'];
	
	$stages = $LevelStages->search($levelid);
	$response = array();
	
	foreach ($stages as $v=>$r) {
		$obj=null;
		$obj->id=$r['id'];
		$obj->name=$r['name'];
		$response[]=$obj;
	}
	$data['content']=$response;
}