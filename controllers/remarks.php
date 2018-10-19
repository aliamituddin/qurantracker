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

	if (USERTYPE == 'admin') {
		$tData['reports'] = $StudentReports->search();
	} else {
		$tData['reports'] = $StudentReports->search('',SYS_ID);
	}

	$data['content'] = loadTemplate($folder.'yearly_reports.tpl.php',$tData);
}

if ( $action == 'yearly_report_edit') {
	
	$id = $_GET['id'];
	if ($id) {
		$tData['report'] = $StudentReports->get($id);
	}
	
	$action = 'yearly_report_add';
}

if ( $action == 'yearly_report_add' ) {
	
	$tData['settings'] = $Settings->get(1);
	$tData['years'] = $Years->search();
	$tData['terms'] = $Terms->search();
	
	if (USERTYPE == 'admin') {
		$tData['teachers'] = $Teachers->search();
	} else {
		$tData['teachers'] = $Teachers->search(USER_ID);
	}
	
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
		$report = $StudentReports->search($miniData['enrollid'],$miniData['teacherid'],$miniData['yearid'],$miniData['termid']);
		$id = $report[0]['id'];
	}

	if (!$id) {
		$id = $StudentReports->insert($miniData);
		$teacher = $Teachers->getDetails($miniData['teacherid']);
		$enrollment = $Enrollments->getDetails($miniData['enrollid']);
		$error = sendEmail($teacher['email'], 'HMGS - Student Report Saved', '', "The report for $enrollment[student] has been saved", 'qadmin@hmgs.ac.tz', 'HMGS');
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
	$language = $_GET['language'];
	
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
	$validTajweed = array('stop','nst','idghaam','idhaar','iqlaab','ikhfaa','ms','qalqala','raa','laam','hll','shaddah','maddah','slvowels','none','na');
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
	
	if ($language == 'swahili') {
		$data['content'] = loadTemplate($folder.'yearly_report_student_swahili.tpl.php',$tData);
	} else {
		$data['content'] = loadTemplate($folder.'yearly_report_student.tpl.php',$tData);
	}
}

if ($action == 'yearly_report_delete') {
	$id = $_GET['id'];
	$srData['sreportid'] = $id;

	$StudentPartners->deleteWhere($srData);
	$StudentMakhrajs->deleteWhere($srData);
	$StudentTajweeds->deleteWhere($srData);
	$StudentWeaknesses->deleteWhere($srData);
	$StudentReports->real_delete($id);

	$_SESSION['message'] = 'Student Report Deleted';

	redirectBack();
}

if ($action == 'yearly_report_print') {
	$data['layout'] = 'layout_print.tpl.php';
	$id = $_GET['id'];	
	$gradeid = $_GET['gradeid'];
	$classid = $_GET['classid'];

	if ($gradeid && $classid) {
		$enrollments = $Enrollments->search($gradeid,$classid);
		foreach ($enrollments as $e) {
			$report = $StudentReports->search($e['id']);
			$report = $report[0];
			if ($report['id']) {
				$reports[] = retrieveStudentReport($report['id']);
			} else {
				echo "Not found: $e[student] <br>";
			}
		}
	} else {
		if ($id) {
			$reports[] = retrieveStudentReport($id);
		}
	}
	$tData['reports'] = $reports;

	$data['content'] = loadTemplate($folder.'yearly_report_print.tpl.php',$tData);
}

function retrieveStudentReport($id) {
	global $StudentReports;
	global $StudentWeaknesses;
	global $StudentMakhrajs;
	global $StudentTajweeds;

	$tData['report'] = $StudentReports->getDetails($id);

	$wletters = $StudentWeaknesses->search($id);	
	foreach ($wletters as $v=>$r) {
		if ($r['weakness']) $tData['wletters'][] = $r['name'];
	}
	if ($id) $otherWeakness = $StudentWeaknesses->getOtherLetters($id);
	foreach ((array)$otherWeakness as $r) {
		if ($r['weakness'] == 'all') {
			$tData['wletters'][] = 'The student can recognize all her letters well Mashallah!';
		} else {
			$tData['wletters'][] = $r['weakness'];
		}
	}

	$mletters = $StudentMakhrajs->search($id);	
	foreach ($mletters as $v=>$r) {
		if ($r['makhraj']) $tData['mletters'][] = $r['name'];
	}
	if ($id) $otherMakhraj = $StudentMakhrajs->getOtherLetters($id);
	$validMakhraj = array('lip','tongue','throat','light','heavy','none');
	$makhrajNames = array('Sound Origination- Lip letters','Sound Origination- Tongue letters','Sound Origination- Throat letters','Light letters','Heavy letters','None. Their Makharij is excellent MashaAllah!');
	foreach ((array)$otherMakhraj as $v=>$r) {
		$key = array_search($r['makhraj'], $validMakhraj);		
		if ($key >= 0) {
			$tData['mletters'][] = $makhrajNames[$key];
		} else {
			$tData['mletters'][] = $r['makhraj'];
		}
	}

	if ($id) $tajweeds = $StudentTajweeds->search($id);	
	$validTajweed = array('stop','nst','idghaam','idhaar','iqlaab','ikhfaa','ms','qalqala','raa','laam','hll','maddah','shaddah','slvowels','none','na');
	$tajweedNames = array('Stopping signs','Rules of Nun Sakin and Tanween','Idghaam','Idhaar','Iqlaab','Ikhfaa','Rules of Meem Sakin','Qalqala','Rules of Raa','Rules of Laam','Heavy and Light letters','Shaddah','Maddah','Short/Long vowels','Mashallah the student follows all the Tajweed rules well!','We have not covered Tajweed rules yet');
	
	foreach ((array)$tajweeds as $r) {
		$key = array_search($r['tajweed'], $validTajweed);	
		if ($key >= 0) {
			$tData['tajweeds'][] = $tajweedNames[$key];
		} else {
			$tData['tajweeds'][] = $r['tajweed'];
		}
	}
	return $tData['report'];
}