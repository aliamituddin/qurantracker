<h3> Add discipline </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','discipline_save')?>>
	<?=insertHiddenInput('id',$discipline['id'])?>
	
	<?=insertTextInput('English','discipline[description]',$discipline['description'],'','Enter the discipline\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','discipline[description_sw]',$discipline['description_sw'],'','Enter the discipline\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>