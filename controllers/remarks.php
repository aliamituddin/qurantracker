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
	$tData['terms'] = $Terms->search();
	$tData['teachers'] = $Teachers->search(USER_ID);
	$tData['enrollments'] = $Enrollments->search();
	
	$data['content'] = loadTemplate($folder.'yearly_report_edit.tpl.php',$tData);
}

if ( $action == 'yearly_report_save' ) {
	// die;
	$id = $_POST['id'];

	$miniData = $_POST['report'];
	$miniData['frequency'] = $_POST['frequency'];
	$miniData['makhraj'] = $_POST['makhraj-rate'];
	$miniData['fluency'] = $_POST['fluency'];
	$miniData['tajweed'] = $_POST['tajweed-rate'];
	$miniData['accuracy'] = $_POST['accuracy'];
	$miniData['createdby'] = USER_ID;
	
	if (!$id) {
		$email = $_SESSION['member']['email'];
		$enrollment = $Enrollments->getDetails($miniData['enrollid']);
		sendEmail($email, 'HMGS - Student Report Saved', '', "The report for $enrollment[student] has been saved", 'narjis.thawer@gmail.com', 'Nargis Thawer');
		$id = $StudentReports->insert($miniData);
	} else {
		$id = $StudentReports->update($id,$miniData);
	}

	$partner = $_POST['partner'];
	$spData['sreportid'] = $id;
	$StudentPartners->deleteWhere($spData);
	foreach ($partner as $v=>$r) {
		$spData['partner'] = $r;
		if ($r) $StudentPartners->insert($spData);
	}
	
	$weakness = $_POST['weakness'];
	$swData['sreportid'] = $id;
	$StudentWeaknesses->deleteWhere($swData);
	foreach ($weakness as $v=>$r) {
		$swData['weakness'] = $r;
		if ($r) $StudentWeaknesses->insert($swData);
	}

	$makhraj = $_POST['makhraj'];
	$smData['sreportid'] = $id;
	$StudentMakhrajs->deleteWhere($smData);
	foreach ($makhraj as $v=>$r) {
		$smData['makhraj'] = $r;
		if ($r) $StudentMakhrajs->insert($smData);
	}

	$tajweed = $_POST['tajweed'];
	$stData['sreportid'] = $id;
	$StudentTajweeds->deleteWhere($stData);
	foreach ($tajweed as $v=>$r) {
		$stData['tajweed'] = $r;
		if ($r) $StudentTajweeds->insert($stData);
	}

	$_SESSION['message'] = 'Student Yearly Report Saved';
	
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

if ( $action == 'getEnrollmentReport' ) {
	$data['layout'] = 'layout_iframe.tpl.php';

	$enrollid = $_GET['enrollid'];
	$teacherid = $_GET['teacherid'];
	$yearid = $_GET['yearid'];
	$termid = $_GET['termid'];
	
	$tData['enrollment'] = $Enrollments->getDetails($enrollid);

	$report = $StudentReports->search($enrollid,$teacherid,$yearid,$termid);
	$tData['report'] = $report[0];
	$id = $tData['report']['id'];
	if (!$id) $id = 0;

	if ($id) $partners = $StudentPartners->search($id);
	$validPartners = array('parent','maalim','teacher','madressa','none');
	foreach ((array)$partners as $r) {
		if (in_array($r['partner'],$validPartners)) {
			$tData['partners'][$r['partner']] = $r['partner'];
		}
		else if ($r['partner']) {
			$tData['partners']['other'] = $r['partner'];
		}
	}
	
	$tData['wletters'] = $StudentWeaknesses->search($id);
	if ($id) $otherWeakness = $StudentWeaknesses->getOtherLetters($id);
	foreach ((array)$otherWeakness as $r) {
		if ($r['weakness'] == 'all') {
			$tData['weakness'][$r['weakness']] = $r['weakness'];
		} else {
			$tData['weakness']['other'] = $r['weakness'];
		}
	}
	
	$tData['mletters'] = $StudentMakhrajs->search($id);	
	if ($id) $otherMakhraj = $StudentMakhrajs->getOtherLetters($id);
	$validMakhraj = array('lip','tongue','throat','light','heavy','none');
	foreach ((array)$otherMakhraj as $r) {
		if (in_array($r['makhraj'],$validMakhraj)) {
			$tData['makhraj'][$r['makhraj']] = $r['makhraj'];
		} else {
			$tData['makhraj']['other'] = $r['makhraj'];
		}
	}

	if ($id) $tajweed = $StudentTajweeds->search($id);	
	$validTajweed = array('stop','nst','idghaam','idhaar','iqlaab','ikhfaa','ms','qalqala','raa','laam','hll');
	foreach ((array)$tajweed as $r) {
		if (in_array($r['tajweed'],$validTajweed)) {
			$tData['tajweed'][$r['tajweed']] = $r['tajweed'];
		} else {
			$tData['tajweed']['other'] = $r['tajweed'];
		}
	}

	$tData['levels'] = $Levels->search();
	$tData['disciplines'] = $Disciplines->search();
	$tData['improvements'] = $Improvements->search();
	
	$data['content'] = loadTemplate($folder.'yearly-report-student.tpl.php',$tData);
}