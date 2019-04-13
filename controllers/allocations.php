<?

$folder = 'allocations/';

if ( $action == 'enrollments' ) {
	
	$tData['gradeid'] = $_GET['gradeid'];
	$tData['classid'] = $_GET['classid'];
	$tData['yearid'] = $_GET['yearid'];
	
	$tData['grades'] = $Grades->search();
	$tData['classes'] = $Classes->search();
	$tData['years'] = $Years->search();

	if ($tData['gradeid']) $tData['enrolls'] = $Enrollments->search($tData['gradeid'],$tData['classid'],'',$tData['yearid']);
	
	$data['content'] = loadTemplate($folder.'enrollments.tpl.php',$tData);
}

if ( $action == 'enrollment_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['enrollment'] = $Enrollments->getDetails($id);
	
	$action = 'enrollment_add';
}

if ( $action == 'enrollment_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['students'] = $Students->search();
	$tData['grades'] = $Grades->search();
	$tData['classes'] = $Classes->search();
	$tData['years'] = $Years->search();
	
	$data['content'] = loadTemplate($folder.'enrollment_edit.tpl.php',$tData);
}

if ( $action == 'ajax_enrollment_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$studentids = $_POST['studentid'];
	
	$miniData = $_POST['enrollment'];
	
	if (!$miniData['status']) $miniData['status'] = 0;
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
	
		foreach ($studentids as $sid) {
			$miniData['studentid'] = $sid;
			$Enrollments->insert($miniData);
		}

		$obj->msg='Enrollments Added';
		$obj->status=1;
		$obj->redirect='?module=allocations&action=enrollment_add';
		$obj->mainredirect='?module=allocations&action=enrollments';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Enrollments->update($id,$miniData);
		
		$obj->msg='Student Updated';
		$obj->status=1;
		$obj->redirect='?module=allocations&action=enrollment_edit&id='.$id;
		$obj->mainredirect='?module=allocations&action=enrollments';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'enrollment_multi_edit' ) {
	
	$tData['classes'] = $Classes->getAll();
	$tData['grades'] = $Grades->getAll();
	$tData['years'] = $Years->getAll();
	
	$data['content'] = loadTemplate($folder.'enrollment_multi_edit.tpl.php', $tData);
}

if ( $action == 'enrollment_multi_save' ) {
    
	$miniData['classid'] = $_POST['tclassid'];
	$miniData['gradeid'] = $_POST['tgradeid'];
	$miniData['yearid'] = $_POST['tyearid'];
    
	$sData['classid'] = $_POST['fclassid'];
	$sData['gradeid'] = $_POST['fgradeid'];
	$sData['yearid'] = $_POST['fyearid'];
	
	$studentid = $_POST['studentid'];
	$enrollmentid = $_POST['enrollmentid'];
	$uData['status'] = 0;
	
	foreach ($studentid as $v=>$r) {
		$miniData['studentid'] = $r;
		$sData['studentid'] = $r;
		$Enrollments->insert($miniData);

		$Enrollments->updateWhere($sData,$uData);
	}

	$_SESSION['message'] = 'Students Enrolled';
	
	redirect('allocations','enrollment_multi_edit');
}

if ( $action == 'enrollment_import_edit' ) {
	
	$tData['classes'] = $Classes->getAll();
	$tData['grades'] = $Grades->getAll();
	$tData['years'] = $Years->getAll();
	
	$data['content'] = loadTemplate($folder.'enrollment_import_edit.tpl.php', $tData);
}

if ( $action == 'enrollment_import_save' ) {
	
	$yearid = $_POST['yearid'];
	$classid = $_POST['classid'];
	$gradeid = $_POST['gradeid'];

	$grade = $Grades->get($gradeid);
	$gender = $grade['gender'];

	$sData['gender'] = $gender;
	$sData['madrasahid'] = 1;
	
	$eData['gradeid'] = $gradeid;
	$eData['classid'] = $classid;
	$eData['yearid'] = $yearid;
	
	if (!$_FILES['upload']['name']) {	
		$_SESSION['error'] = 'No File was Uploaded';
		redirectBack();
	} else {
		ini_set('auto_detect_line_endings',TRUE);
		$file = $_FILES['upload']['tmp_name']; 
		$handle = fopen($file,"r");
		
		do { 
			if ($data[0] && $data[0] != 'Name') { 
				$uData['name'] = $data[0];
				$uData['utypeid'] = 3; //student
				$userid = $Users->insert($uData);

				$sData['name'] = $data[0];
				$sData['userid'] = $userid;
				$studentid = $Students->insert($sData);
				
				$eData['studentid'] = $studentid;
				$eData['referenceno'] = $data[1];
				$Enrollments->insert($eData);
			} 
		} while ($data = fgetcsv($handle,1000,",","'")); 
		
		ini_set('auto_detect_line_endings',FALSE);
	}
	
	$_SESSION['message'] = 'Students Imported & Enrolled';
	redirectBack();
}

if ( $action == 'enrollment_template_download' ) {
	
	$data['layout'] = 'layout_csv.tpl.php';

	$fname = 'template.csv';
	
	$tData['fname'] = $fname;
	
	$data['content'] = loadTemplate($folder.'enrollment_template.tpl.php', $tData);
}

if ($action == 'getEnrolledStudents' ) {
	$data['layout'] = 'layout_iframe.tpl.php';

	$fgradeid = $_GET['fgradeid'];
	$fclassid = $_GET['fclassid'];
	$fyearid = $_GET['fyearid'];

	$tgradeid = $_GET['tgradeid'];
	$tclassid = $_GET['tclassid'];
	$tyearid = $_GET['tyearid'];
	
	$tData['enrollments'] = $Enrollments->search($fgradeid,$fclassid,1,$fyearid,$tgradeid,$tclassid,$tyearid);
	
	$data['content'] = loadTemplate($folder.'enrollment_multi_students.tpl.php', $tData);
}

if ( $action == 'allocations' ) {
	
	$tData['groups'] = $Groups->search();
	
	$data['content'] = loadTemplate($folder.'allocations.tpl.php',$tData);
}

if ( $action == 'allocation_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['group'] = $Groups->getDetails($id);
	$tData['enrollments'] = $TeacherAllocations->search('','',$id);
	
	$action = 'allocation_add';
}

if ( $action == 'allocation_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['teachers'] = $Teachers->search();
	$tData['years'] = $Years->search();
	
	$data['content'] = loadTemplate($folder.'allocation_edit.tpl.php',$tData);
}

if ( $action == 'ajax_allocation_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	
	$miniData = $_POST['group'];
	$enrollids = $_POST['enrollid'];		
	
	if (!$miniData['status']) $miniData['status'] = 0;
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		
		$Groups->insert($miniData);
		$taData['groupid'] = $Groups->lastId();
		
		foreach ($enrollids as $eid) {
			$taData['enrollid'] = $eid;
			$TeacherAllocations->insert($taData);
		}

		$obj->msg='Group Created';
		$obj->status=1;
		$obj->redirect='?module=allocations&action=allocation_add';
		$obj->mainredirect='?module=allocations&action=allocations';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Groups->update($id,$miniData);
		
		$taData['groupid'] = $id;
		$TeacherAllocations->deleteWhere($taData);
		
		$taData['groupid'] = $id;
		foreach ($enrollids as $eid) {
			$taData['enrollid'] = $eid;
			$TeacherAllocations->insert($taData);
		}
		
		$obj->msg='Group Updated';
		$obj->status=1;
		$obj->redirect='?module=allocations&action=allocation_edit&id='.$id;
		$obj->mainredirect='?module=allocations&action=allocations';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ($action == 'ajax_getEnrollments' ) {
	$teacherid = $_GET['teacherid'];
	
	$enrolls = $Enrollments->getEnrollments($teacherid);
	$response = array();
	
	foreach ($enrolls as $v=>$r) {
		$obj=null;
		$obj->id=$r['id'];
		$obj->student=$r['student'];
		$response[]=$obj;
	}
	$data['content']=$response;
}