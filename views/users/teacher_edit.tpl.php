<? if (!$teacher) $teacher['status'] = 1; ?>
<h3> Add teacher </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('users','teacher_save','checkUsername();')?>>
	<?=insertHiddenInput('id',$teacher['id'])?>
	<?=insertHiddenInput('userid',$teacher['userid'])?>
	
	<?=insertTextInput('Name','teacher[name]',$teacher['name'],'','Enter the teachers\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Mobile','teacher[mobile]',$teacher['mobile'],'','Enter the teachers\'s mobile','text',1,'||Mobile is required')?><br>
	
	<?=insertTextInput('Email','teacher[email]',$teacher['email'],'','Enter the teachers\'s email','email',1,'||Email is required')?><br>
	
	<?=insertCheckboxInput('Madrasah teacher','teacher[mteacher]',1,'','Is a madrasah teacher','switch',$teacher['mteacher'].'|1','','place-right')?><br>
	
	<?=insertSelect('Max Level','teacher[maxlevelid]','','Select the max level',1,0,$levels,'name|id','id|'.$teacher['maxlevelid'])?><br>
	
	<?=insertTextArea('Remarks','teacher[remarks]',$teacher['remarks'],'','Enter the remarks',1,$height=200)?>
	
	<?=insertCheckboxInput('Active','user[status]',1,'','Is an active user','switch',$teacher['status'].'|1','','place-right')?><br>

	<?=insertTextInput('Username','user[username]',$teacher['username'],'username','Enter a unique username','text',1,'required||Username is required')?><br>
	
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