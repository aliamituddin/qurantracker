<? if (!$parent) $parent['status'] = 1; ?>
<h3> Add Parent </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('users','parent_save','checkUsername();')?>>
	<?=insertHiddenInput('id',$parent['id'])?>
	<?=insertHiddenInput('userid',$parent['userid'])?>
	
	<?=insertTextInput('Name','parent[name]',$parent['name'],'','Enter the parent\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Mobile','parent[mobile]',$parent['mobile'],'','Enter the parent\'s mobile','text',1,'required||Mobile is required')?><br>
	
	<?=insertTextInput('Email','parent[email]',$parent['email'],'','Enter the parent\'s email','text',1,'required||Email is required')?><br>
	
	<div class='row'>
		<div class='cell'>
			<label>Gender</label>
			<?=insertRadioInput('Male','parent[gender]','m','','Father',1,'m|'.$parent['gender'])?>
			<?=insertRadioInput('Female','parent[gender]','f','','Mother',1,'f|'.$parent['gender'])?>
		</div>
		<div class='cell'>
			<?=insertCheckboxInput('Active','user[status]',1,'','Is an active user','switch','1|'.$parent['status'],'','')?>
		</div>
	</div>	

	<?=insertTextInput('Username','user[username]',$parent['username'],'username','Enter a unique username','text',1,'required||Username is required')?><br>
	
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
	
	$(document).on('blur', '.username', function(){    
		checkUsername();
	});
</script>