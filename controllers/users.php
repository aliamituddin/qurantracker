<?
	
$folder = 'users/';

if ( $action == 'students' ) {
	
	$tData['name'] = $_GET['name'];
	
	if ($tData['name']) $tData['users'] = $Students->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'students.tpl.php',$tData);
}

if ( $action == 'student_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['student'] = $Students->getDetails($id);
	
	$action = 'student_add';
}

if ( $action == 'student_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['student']['userid']);
	$tData['males'] = $Parents->search('','m');
	$tData['females'] = $Parents->search('','f');
	$tData['madrasahs'] = $Madrasahs->search();

	$tData['genders'][0]['name'] = 'male';
	$tData['genders'][1]['name'] = 'female';
	
	$data['content'] = loadTemplate($folder.'student_edit.tpl.php',$tData);
}

if ( $action == 'ajax_student_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	
	$miniData = $_POST['student'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$uType = $UserTypes->getDetails('','student');
		$uData['utypeid'] = $uType['id'];

		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Students->insert($miniData);
		
		$obj->msg='Student Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=student_add';
		$obj->mainredirect='?module=users&action=students';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Students->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Student Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=student_edit&id='.$id;
		$obj->mainredirect='?module=users&action=students';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ($action == 'student_export') {
	$data['layout'] = 'layout_excel.tpl.php';

	$tData['students'] = $Enrollments->search();

	$data['content'] = loadTemplate($folder.'student_export.tpl.php',$tData);
}

if ( $action == 'parents' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['users'] = $Parents->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'parents.tpl.php',$tData);
}

if ( $action == 'parent_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['parent'] = $Parents->getDetails($id);	
	
	$action = 'parent_add';
}

if ( $action == 'parent_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['parent']['userid']);
	
	$data['content'] = loadTemplate($folder.'parent_edit.tpl.php',$tData);
}

if ( $action == 'ajax_parent_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	$miniData = $_POST['parent'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$uType = $UserTypes->getDetails('','parent');
		$uData['utypeid'] = $uType['id'];
	
		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Parents->insert($miniData);
		
		$obj->msg='Parent Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=parent_add';
		$obj->mainredirect='?module=users&action=parents';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Parents->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Parent Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=parent_edit&id='.$id;
		$obj->mainredirect='?module=users&action=parents';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'teachers' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['users'] = $Teachers->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'teachers.tpl.php',$tData);
}

if ( $action == 'teacher_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['teacher'] = $Teachers->getDetails($id);	
	
	$action = 'teacher_add';
}

if ( $action == 'teacher_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['teacher']['userid']);
	$tData['levels'] = $Levels->search();
	
	$data['content'] = loadTemplate($folder.'teacher_edit.tpl.php',$tData);
}

if ( $action == 'ajax_teacher_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	$miniData = $_POST['teacher'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$uType = $UserTypes->getDetails('','teacher');
		$uData['utypeid'] = $uType['id'];
	
		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Teachers->insert($miniData);
		
		$obj->msg='Teacher Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=teacher_add';
		$obj->mainredirect='?module=users&action=teachers';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Teachers->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Teacher Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=teacher_edit&id='.$id;
		$obj->mainredirect='?module=users&action=teachers';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'admins' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['users'] = $Admins->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'admins.tpl.php',$tData);
}

if ( $action == 'admin_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['admin'] = $Admins->getDetails($id);	
	
	$action = 'admin_add';
}

if ( $action == 'admin_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['usernames'] = $Users->getUsernames($tData['admin']['userid']);
	
	$data['content'] = loadTemplate($folder.'admin_edit.tpl.php',$tData);
}

if ( $action == 'ajax_admin_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$userid = intval($_POST['userid']);
	$miniData = $_POST['admin'];
	$uData = $_POST['user'];
	
	if (!$uData['status']) $uData['status'] = 0;
	if ($uData['password']) $uData['password'] = hash('sha256',$uData['password']);
	else unset($uData['password']);
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$uType = $UserTypes->getDetails('','admin');
		$uData['utypeid'] = $uType['id'];
	
		$Users->insert($uData);
		$miniData['userid'] = $Users->lastId();
		
		$Admins->insert($miniData);
		
		$obj->msg='Admin Added';
		$obj->status=1;
		$obj->redirect='?module=users&action=admin_add';
		$obj->mainredirect='?module=users&action=admins';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Admins->update($id,$miniData);
		$Users->update($userid,$uData);
		
		$obj->msg='Admin Updated';
		$obj->status=1;
		$obj->redirect='?module=users&action=admin_edit&id='.$id;
		$obj->mainredirect='?module=users&action=admins';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'user_rights_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$tData['id'] = $_GET['id'];
	$rights = $UserRights->getUserRights($tData['id']);
	foreach ($rights as $r) {
		if ($r['sname']) $tData['rights'][$r['mname']]['subs'][$r['sname']] = $r;
		$tData['rights'][$r['mname']]['menuid'] = $r['menuid'];
		if ($r['ulrid']) $tData['rights'][$r['mname']]['ulrid'] = $r['ulrid'];
		if ($r['umid']) $tData['rights'][$r['mname']]['checked'] = 'checked';
		
		if ($r['usid']) $tData['rights'][$r['mname']]['indeterminate'] = 'true';
	}
	
	$data['content'] = loadTemplate($folder.'user_rights_edit.tpl.php',$tData);
}

if ( $action == 'ajax_user_rights_save' ) {
	
	$obj = null;
	
	$rights = $_POST['rights'];
	$miniData['userid'] = intval($_POST['id']);
	$UserRights->deleteWhere($miniData);
	$miniData['createdby'] = USER_ID;
	
	$user = $Users->getPerson($_POST['id']);

	foreach ($rights as $menuid=>$sids) {
		$miniData['menuid'] = $menuid;
		foreach ($sids as $sid=>$dum) {
			$miniData['submenuid'] = $sid;
			$UserRights->insert($miniData);
		}
	}
	
	$obj->msg='User Rights Modified';
	$obj->status=1;
	$obj->redirect='?module=users&action=user_rights_edit&id='.$miniData['userid'];
	$obj->mainredirect='?module=users&action='.$user['type'].'s';
					
	$response[]=$obj;
	$data['content'] = $response;
}
