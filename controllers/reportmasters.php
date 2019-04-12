<?php 

$folder = 'reportmasters/';

if ( $action == 'improvements' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['improvements'] = $Improvements->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'improvements.tpl.php',$tData);
}

if ( $action == 'improvement_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['improvement'] = $Improvements->get($id);
	
	$action = 'improvement_add';
}

if ( $action == 'improvement_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'improvement_edit.tpl.php',$tData);
}

if ( $action == 'ajax_improvement_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['improvement'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Improvements->insert($miniData);
		
		$obj->msg='Improvement Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=improvement_add';
		$obj->mainredirect='?module=reportmasters&action=improvements';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Improvements->update($id,$miniData);
		
		$obj->msg='Improvement Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=improvement_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=improvements';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'improvement_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Improvements->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}

if ( $action == 'disciplines' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['disciplines'] = $Disciplines->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'disciplines.tpl.php',$tData);
}

if ( $action == 'discipline_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['discipline'] = $Disciplines->get($id);
	
	$action = 'discipline_add';
}

if ( $action == 'discipline_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'discipline_edit.tpl.php',$tData);
}

if ( $action == 'ajax_discipline_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['discipline'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Disciplines->insert($miniData);
		
		$obj->msg='Discipline Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=discipline_add';
		$obj->mainredirect='?module=reportmasters&action=disciplines';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Disciplines->update($id,$miniData);
		
		$obj->msg='Discipline Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=discipline_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=disciplines';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'discipline_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Disciplines->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}

if ( $action == 'frequencies' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['frequencies'] = $Frequencies->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'frequencies.tpl.php',$tData);
}

if ( $action == 'frequency_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['frequency'] = $Frequencies->get($id);
	
	$action = 'frequency_add';
}

if ( $action == 'frequency_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'frequency_edit.tpl.php',$tData);
}

if ( $action == 'ajax_frequency_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['frequency'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Frequencies->insert($miniData);
		
		$obj->msg='Frequency Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=frequency_add';
		$obj->mainredirect='?module=reportmasters&action=frequencies';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Frequencies->update($id,$miniData);
		
		$obj->msg='Frequency Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=frequency_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=frequencies';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'frequency_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Frequencies->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}

if ( $action == 'makhrajs' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['makhrajs'] = $Makhrajs->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'makhrajs.tpl.php',$tData);
}

if ( $action == 'makhraj_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['makhraj'] = $Makhrajs->get($id);
	
	$action = 'makhraj_add';
}

if ( $action == 'makhraj_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'makhraj_edit.tpl.php',$tData);
}

if ( $action == 'ajax_makhraj_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['makhraj'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Makhrajs->insert($miniData);
		
		$obj->msg='Makhraj Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=makhraj_add';
		$obj->mainredirect='?module=reportmasters&action=makhrajs';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Makhrajs->update($id,$miniData);
		
		$obj->msg='Makhraj Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=makhraj_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=makhrajs';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'makhraj_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Makhrajs->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}


if ( $action == 'tajweeds' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['tajweeds'] = $Tajweeds->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'tajweeds.tpl.php',$tData);
}

if ( $action == 'tajweed_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['tajweed'] = $Tajweeds->get($id);
	
	$action = 'tajweed_add';
}

if ( $action == 'tajweed_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'tajweed_edit.tpl.php',$tData);
}

if ( $action == 'ajax_tajweed_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['tajweed'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Tajweeds->insert($miniData);
		
		$obj->msg='Tajweed Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=tajweed_add';
		$obj->mainredirect='?module=reportmasters&action=tajweeds';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Tajweeds->update($id,$miniData);
		
		$obj->msg='Tajweed Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=tajweed_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=tajweeds';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'tajweed_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Tajweeds->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}


if ( $action == 'partners' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['partners'] = $Partners->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'partners.tpl.php',$tData);
}

if ( $action == 'partner_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['partner'] = $Partners->get($id);
	
	$action = 'partner_add';
}

if ( $action == 'partner_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'partner_edit.tpl.php',$tData);
}

if ( $action == 'ajax_partner_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['partner'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Partners->insert($miniData);
		
		$obj->msg='Partner Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=partner_add';
		$obj->mainredirect='?module=reportmasters&action=partners';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Partners->update($id,$miniData);
		
		$obj->msg='Partner Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=partner_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=partners';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'partner_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Partners->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}

if ( $action == 'weaknesses' ) {
	
	$tData['name'] = $_GET['name'];
	
	$tData['weaknesses'] = $Weaknesses->search($tData['name']);
	
	$data['content'] = loadTemplate($folder.'weaknesses.tpl.php',$tData);
}

if ( $action == 'weakness_edit' ) {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$id = $_GET['id'];
	$tData['weakness'] = $Weaknesses->get($id);
	
	$action = 'weakness_add';
}

if ( $action == 'weakness_add') {
	$data['layout'] = 'layout_iframe.tpl.php';
	
	$data['content'] = loadTemplate($folder.'weakness_edit.tpl.php',$tData);
}

if ( $action == 'ajax_weakness_save' ) {
	
	$obj = null;
	
	$id = intval($_POST['id']);
	$miniData = $_POST['weakness'];
	
	if ( empty($id) )  {
		$miniData['createdby'] = USER_ID;
		$Weaknesses->insert($miniData);
		
		$obj->msg='Letter Recognition Added';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=weakness_add';
		$obj->mainredirect='?module=reportmasters&action=weaknesses';
				
	} else {
		$miniData['modifiedby'] = USER_ID;
		
		$Weaknesses->update($id,$miniData);
		
		$obj->msg='Letter Recognition Updated';
		$obj->status=1;
		$obj->redirect='?module=reportmasters&action=weakness_edit&id='.$id;
		$obj->mainredirect='?module=reportmasters&action=weaknesses';
				
	}
	
	$response[]=$obj;
	$data['content'] = $response;
}

if ( $action == 'weakness_status_change' ) {
	
	$id = $_GET['id'];
	$miniData['status'] = $_GET['status'];

	$Weaknesses->update($id,$miniData);
	$_SESSION['message'] = 'Status Changed';

	redirectBack();
}