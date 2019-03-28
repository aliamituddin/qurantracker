<h3> Add Makhraj </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('reportmasters','makhraj_save')?>>
	<?=insertHiddenInput('id',$makhraj['id'])?>
	
	<?=insertTextInput('English','makhraj[description]',$makhraj['description'],'','Enter the makhraj\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','makhraj[description_sw]',$makhraj['description_sw'],'','Enter the makhraj\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertCheckboxInput('Override','makhraj[override]',1,'place-right','Override other options','switch',$makhraj['override'].'|1')?><br>

	<?=insertSaveButton('Save');?>
</form>