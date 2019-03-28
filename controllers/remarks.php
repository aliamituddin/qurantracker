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

	$tData['student'] = $_GET['student'];
	$tData['teacherid'] = $_GET['teacherid'];
	if (USERTYPE == 'admin') { 
		$tData['teachers'] = $Teachers->search();
	}

	if ($tData['student'] || $tData['teacherid']) {
		if (USERTYPE == 'admin') {
			$tData['reports'] = $StudentReports->search('',$tData['teacherid'],'',$tData['student']);
		} else {
			$tData['reports'] = $StudentReports->search('',SYS_ID,'',$tData['student']);
		}
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
	// print_r($_POST['partner']); die;
	$id = $_POST['id'];

	$miniData = $_POST['report'];
	$miniData['frequencyid'] = $_POST['frequency'];
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
		$spData['partnerid'] = $r;
		if ($r) $StudentPartners->insert($spData);
	}
	
	$weakness = $_POST['weakness'];
	$swData['sreportid'] = $id;
	$StudentWeaknesses->deleteWhere($swData);
	foreach ($weakness as $v=>$r) {
		$swData['weaknessid'] = $r;
		if ($r) $StudentWeaknesses->insert($swData);
	}

	$makhraj = $_POST['makhraj'];
	$smData['sreportid'] = $id;
	$StudentMakhrajs->deleteWhere($smData);
	foreach ($makhraj as $v=>$r) {
		$smData['makhrajid'] = $r;
		if ($r) $StudentMakhrajs->insert($smData);
	}

	$tajweed = $_POST['tajweed'];
	$stData['sreportid'] = $id;
	$StudentTajweeds->deleteWhere($stData);
	foreach ($tajweed as $v=>$r) {
		$stData['tajweedid'] = $r;
		if ($r) $StudentTajweeds->insert($stData);
	}

	$_SESSION['message'] = 'Student Yearly Report Saved';
	
	redirectBack();
}

if ( $action == 'yearly_report_flag' ) {
	
	$id = $_GET['id'];
	$miniData['flag'] = $_GET['flag'];

	$StudentReports->update($id,$miniData);
	$_SESSION['message'] = 'Flag Set';

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

	$tData['spartners'] = $StudentPartners->search($id,1);
	$tData['sweaknesses'] = $StudentWeaknesses->search($id,1);
	$tData['smakhrajs'] = $StudentMakhrajs->search($id,1);
	$tData['stajweeds'] = $StudentTajweeds->search($id,1);
	
	$tData['levels'] = $Levels->search();
	$tData['disciplines'] = $Disciplines->search(1);
	$tData['improvements'] = $Improvements->search(1);
	$tData['frequencies'] = $Frequencies->search(1);
	
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
		$enrollments = $Enrollments->search($gradeid,$classid,1);
		foreach ($enrollments as $e) {
			$report = $StudentReports->search($e['id']);
			$report = $report[0];
			if ($report['id']) {
				$id = $report['id'];
				$reports[$id]['report'] = $StudentReports->getDetails($id);
				
				$reports[$id]['partners'] = $StudentPartners->search($id);
				$reports[$id]['weaknesses'] = $StudentWeaknesses->search($id);
				$reports[$id]['makhrajs'] = $StudentMakhrajs->search($id);
				$reports[$id]['tajweeds'] = $StudentTajweeds->search($id);
			} else {
				$tData['missings'][] = $e['student'];
			}
		}
	} else {
		if ($id) {
			$reports[$id]['report'] = $StudentReports->getDetails($id);
			
			$reports[$id]['partners'] = $StudentPartners->search($id);
			$reports[$id]['weaknesses'] = $StudentWeaknesses->search($id);
			$reports[$id]['makhrajs'] = $StudentMakhrajs->search($id);
			$reports[$id]['tajweeds'] = $StudentTajweeds->search($id);
		}
	}
	$tData['reports'] = $reports;
	
	$data['content'] = loadTemplate($folder.'yearly_report_print.tpl.php',$tData);
}

if ($action == 'yearly_report_export') {
	$data['layout'] = 'layout_excel.tpl.php';
	$id = $_GET['id'];	
	
	$enrollments = $Enrollments->search();
	foreach ($enrollments as $e) {
		$report = $StudentReports->search($e['id']);
		$report = $report[0];
		if ($report['id']) {
			$id = $report['id'];
			$reports[$id]['report'] = $StudentReports->getDetails($id);
			
			$reports[$id]['partners'] = $StudentPartners->search($id);
			$reports[$id]['weaknesses'] = $StudentWeaknesses->search($id);
			$reports[$id]['makhrajs'] = $StudentMakhrajs->search($id);
			$reports[$id]['tajweeds'] = $StudentTajweeds->search($id);
		} else {
			$tData['missings'][] = $e['student'];
		}
	}
	$tData['reports'] = $reports;

	$data['content'] = loadTemplate($folder.'yearly_report_export.tpl.php',$tData);
}