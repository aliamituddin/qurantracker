<h3> Add Partner </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('reportmasters','partner_save')?>>
	<?=insertHiddenInput('id',$partner['id'])?>
	
	<?=insertTextInput('English','partner[description]',$partner['description'],'','Enter the partner\'s description','text',1,'required|Description is required')?><br>

	<?=insertTextInput('Swahili','partner[description_sw]',$partner['description_sw'],'','Enter the partner\'s swahili description','text',1,'required|Swahili Description is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>