<?

$folder = 'remarks/';

if ( $action == 'modifications' ) {
	
	if (USERTYPE == 'admin') {
		$tData['remarks'] = $StudentRemarks->search();
	} else {
		$tData['remarks'] = $StudentRemarks->search('','',USER_ID);
	}
	
	$data['content'] = loadTemplate($folder.'modifications.tpl.php',$tData);
}

if ( $action == 'modification_add') {
	
	$tData['settings'] = $Settings->get(1);
	
	$action = 'modification_edit';
}

if ( $action == 'modification_edit' ) {

	if (USERTYPE == 'admin') $tData['teachers'] = $Teachers->search();
	else $tData['teachers'] = $Teachers->search(USER_ID);
	
	$tData['years'] = $Years->search();
	$tData['terms'] = $Terms->search();
	
	$data['content'] = loadTemplate($folder.'modification_edit.tpl.php',$tData);
}

if ( $action == 'modification_save' ) {
	
	$mteacher = $_POST['mteacher'];
	
	$enrollids = $_POST['enrollid'];
	$flevelids = $_POST['flevelid'];
	$fstageids = $_POST['fstageid'];
	$tlevelids = $_POST['tlevelid'];
	$tstageids = $_POST['tstageid'];
	$remarks = $_POST['remarks'];
	$comments = $_POST['comments'];
	
	$miniData = $_POST['modification'];
	$miniData['createdby'] = USER_ID;
	
	if (USERTYPE == 'admin' || $mteacher == 1) { //admin or madrasah teacher
		$miniData['approvedby'] = USER_ID;
	}
	
	foreach ($tlevelids as $v=>$tli) {
		$miniData['enrollid'] = $enrollids[$v];
		$miniData['flevelid'] = $flevelids[$v];
		$miniData['fstageid'] = $fstageids[$v];
		$miniData['tlevelid'] = $tli;
		$miniData['tstageid'] = $tstageids[$v];
		$miniData['remarks'] = $remarks[$v];
		$miniData['comments'] = $comments[$v];
	
		if ($tli) $StudentRemarks->insert($miniData);
	}
	
	$_SESSION['message'] = 'Records Saved';
	
	$action = 'process_remarks';
}

if ( $action == 'remark_approve' ) {
	
	$id = $_GET['id'];
	$uData['approvedby'] = USER_ID;
	$StudentRemarks->update($id,$uData);
	
	$_SESSION['message'] = 'Modification Approved';
	
	$action = 'process_remarks';
}

if ( $action == 'process_remarks' ) {
	
	$remarks = $StudentRemarks->search(0,1); //unprocessed
	foreach ($remarks as $v=>$r) {
		$sql = 'update students set levelid = '.$r['nlevelid'].', stageid = '.$r['nstageid'].' where id = (select studentid from enrollments where id = '.$r['enrollid'].')';
		executeQueryi($sql);
		
		$uData['process'] = 1;
		$StudentRemarks->update($r['id'],$uData);
	}
	
	redirect('remarks','modifications');
}

if ( $action == 'yearly_reports' ) {

	$data['content'] = loadTemplate($folder.'yearly_reports.tpl.php',$tData);
}

if ( $action == 'yearly_report_edit') {
	
	$action = 'yearly_report_add';
}

if ( $action == 'yearly_report_add' ) {
	
	$tData['settings'] = $Settings->get(1);
	$tData['years'] = $Years->search();
	$tData['teachers'] = $Teachers->search();
	$tData['levels'] = $Levels->search();
	$tData['stages'] = $LevelStages->search();
	$tData['letters'] = $Letters->search();
	
	$data['content'] = loadTemplate($folder.'yearly_report_edit.tpl.php',$tData);
}

if ( $action == 'yearly_report_save' ) {
	
	$miniData = $_POST['report'];
	$miniData['createdby'] = USER_ID;
	
	$_SESSION['message'] = 'Yearly Reports Saved';
	
	redirectBack();
}

if ( $action == 'getStudents' ) {
	$data['layout'] = 'layout_iframe.tpl.php';

	$teacherid = $_GET['teacherid'];
	$yearid = $_GET['yearid'];
	
	$tData['levels'] = $Levels->search();
	$students = $TeacherAllocations->search($teacherid,1,'',$yearid);
	foreach ($students as $r) {
		$tData['students'][$r['grp']][] = $r;
	}
	
	$data['content'] = loadTemplate($folder.'modification_students.tpl.php',$tData);
}