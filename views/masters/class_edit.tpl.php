<h3> Add Class </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','class_save')?>>
	<?=insertHiddenInput('id',$class['id'])?>
	
	<?=insertTextInput('Name','class[name]',$class['name'],'','Enter the class\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>