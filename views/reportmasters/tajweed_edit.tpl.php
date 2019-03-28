<h3> Add Tajweed </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('reportmasters','tajweed_save')?>>
	<?=insertHiddenInput('id',$tajweed['id'])?>
	
	<?=insertTextInput('English','tajweed[description]',$tajweed['description'],'','Enter the tajweed\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','tajweed[description_sw]',$tajweed['description_sw'],'','Enter the tajweed\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertCheckboxInput('Override','tajweed[override]',1,'place-right','Override other options','switch',$tajweed['override'].'|1')?><br>

	<?=insertSaveButton('Save');?>
</form>