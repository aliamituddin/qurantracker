<? if (!$student) $student['status'] = 1; ?>
<h3> Add Student </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('users','student_save','checkUsername();')?>>
	<?=insertHiddenInput('id',$student['id'])?>
	<?=insertHiddenInput('userid',$student['userid'])?>
	
	<?=insertTextInput('Name','student[name]',$student['name'],'','Enter the students\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Reference No','student[referenceno]',$student['referenceno'],'','Enter the students\'s reference no','text',1,'||Name is required')?><br>
	
	<?=insertSelect('Father','student[fparentid]','','Select the father',1,1,$males,'name|id','id|'.$student['fparentid'],'','data-role="select2"')?><br>
	
	<?=insertSelect('Mother','student[mparentid]','','Select the mother',1,1,$females,'name|id','id|'.$student['mparentid'],'','data-role="select2"')?><br>
	
	<?=insertSelect('Madrasah','student[madrasahid]','','Select the madrasah',1,1,$madrasahs,'name|id','id|'.$student['madrasahid'],'','data-role="select2"')?><br>
	
	<?=insertCheckboxInput('Active','user[status]',1,'','Is an active user','switch',$student['status'].'|1','place-right')?><br>

	<?=insertTextInput('Username','user[username]',$student['username'],'username','Enter a unique username','text',1,'required||Username is required')?><br>
	
	<?=insertTextInput('Password','user[password]','','','Enter a strong password','password',1,'||Password is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>

<script>
	function checkUsername() {
		var usernames = [
		<?php foreach ($usernames as $u) { ?>"<?=trim($u['username'])?>",<?php } ?>
		];
		var username = $.trim($('.username').val());
		
		if (username) {
			for (i=0;i<usernames.length;i++) {
				if ($.inArray( username, usernames ) >= 0 ) {
					triggerError('Duplicate username - new one assigned');
					var rusername =  username + (1 + Math.floor(Math.random() * 100));
					$('.username').val(rusername).focus();
					break;
					return false;
				}
			}
			return true;
		}
	}
	
	
</script>