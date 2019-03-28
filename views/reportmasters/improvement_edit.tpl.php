<h3> Add Improvement </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('reportmasters','improvement_save')?>>
	<?=insertHiddenInput('id',$improvement['id'])?>
	
	<?=insertTextInput('English','improvement[description]',$improvement['description'],'','Enter the improvement\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','improvement[description_sw]',$improvement['description_sw'],'','Enter the improvement\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>