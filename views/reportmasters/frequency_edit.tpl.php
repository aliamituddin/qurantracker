<h3> Add Frequency </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('reportmasters','frequency_save')?>>
	<?=insertHiddenInput('id',$frequency['id'])?>
	
	<?=insertTextInput('English','frequency[description]',$frequency['description'],'','Enter the frequency\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','frequency[description_sw]',$frequency['description_sw'],'','Enter the frequency\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertTextInput('Sort No','frequency[sortno]',$frequency['sortno'],'','Enter the frequency\'s sortno','number',1,'required|Sort no is required')?><br>

	<?=insertSaveButton('Save');?>
</form>