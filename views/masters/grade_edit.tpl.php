<h3> Add Grade </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','grade_save')?>>
	<?=insertHiddenInput('id',$grade['id'])?>
	
	<?=insertTextInput('Name','grade[name]',$grade['name'],'','Enter the grade\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>