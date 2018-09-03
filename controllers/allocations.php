<?

$folder = 'allocations/';

if ( $action == 'enrollments' ) {
	
	$tData['gradeid'] = $_GET['gradeid'];
	$tData['classid'] = $_GET['classid'];
	
	$tData['grades'] = $Grades->search();
	$tData['classes'] = $Classes->search();
	$tData['enrolls'] = $Enrollments->search($tData['gradeid'],$tData['classid']);
	
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