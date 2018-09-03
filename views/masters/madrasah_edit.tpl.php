<h3> Add Madrasah </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','madrasah_save')?>>
	<?=insertHiddenInput('id',$madrasah['id'])?>
	
	<?=insertTextInput('Name','madrasah[name]',$madrasah['name'],'','Enter the madrasahs\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>