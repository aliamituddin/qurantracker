<h3> Add Year </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','year_save')?>>
	<?=insertHiddenInput('id',$year['id'])?>
	
	<?=insertTextInput('Name','year[name]',$year['name'],'','Enter the year\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>