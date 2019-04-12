<h3> Add Letter Recognition </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('reportmasters','weakness_save')?>>
	<?=insertHiddenInput('id',$weakness['id'])?>
	
	<?=insertTextInput('English','weakness[description]',$weakness['description'],'','Enter the weakness\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','weakness[description_sw]',$weakness['description_sw'],'','Enter the weakness\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertCheckboxInput('Override','weakness[override]',1,'place-right','Override other options','switch',$weakness['override'].'|1')?><br>

	<?=insertSaveButton('Save');?>
</form>