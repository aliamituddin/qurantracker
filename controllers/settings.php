<?

$folder = 'settings/';

if ( $action == 'index' ) {
	
	$tData['settings'] = $Settings->get(1);
	$tData['years'] = $Years->getAll('name');
	$tData['terms'] = $Terms->getAll('name');
	
	$data['content'] = loadTemplate($folder.'settings.tpl.php',$tData);
}

if ( $action == 'settings_save' ) {
	
	$upload = $_FILES['upload'];
	$miniData = $_POST['settings'];
	$miniData['modifiedby'] = USER_ID;
	
	$uploaddir = 'img/';
	if ($upload['name']) {
		$extension = pathinfo($upload["name"], PATHINFO_EXTENSION);
		$filename = 'logo.' . $extension;
		
		move_uploaded_file($upload["tmp_name"], $uploaddir . '/' . $filename);
		$miniData['logo'] = $filename;
	}
	
	$_SESSION['message'] = 'Settings Saved';
	$Settings->update(1,$miniData);
	
	redirectBack();
}

if ( $action == 'user_settings' ) {
	
	$tData['user'] = $_SESSION['member'];
	$tData['colors'] = $Colors->getAll('name');
	if (USERTYPE == 'teacher') {
		$tData['teacher'] = $Teachers->get($_SESSION['member']['sysid']);
	}
	
	$data['content'] = loadTemplate($folder.'user_settings.tpl.php',$tData);
}

if ( $action == 'user_settings_save' ) {
	
	$uData = $_POST['user'];
	$tData = $_POST['teacher'];
	
	$Users->update(USER_ID,$uData);
	$Teachers->update($_SESSION['member']['sysid'],$tData);
	$_SESSION['message'] = 'Settings Saved';
	
	redirectBack();
}
