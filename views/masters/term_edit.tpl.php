<h3> Add Term </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','term_save')?>>
	<?=insertHiddenInput('id',$term['id'])?>
	
	<?=insertTextInput('Name','term[name]',$term['name'],'','Enter the term\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>