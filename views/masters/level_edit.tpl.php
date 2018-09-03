<h3> Add Level </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','level_save')?>>
	<?=insertHiddenInput('id',$level['id'])?>
	
	<?=insertTextInput('Name','level[name]',$level['name'],'','Enter the level\'s name','text',1,'required||Name is required')?><br>
	
	<?=insertTextInput('Alt Name','level[altname]',$level['altname'],'','Enter the level\'s alternate name','text',1,'||Name is required')?><br>
	
	<?=insertTextInput('Sort No','level[sortno]',$level['sortno'],'','Enter the sort no','number',1,'required||Number is required')?><br>
	
	<?=insertTextArea('Description','level[description]',$level['description'],'','Enter the description',1,200,'||Company details is required')?><br>
	
	<?=insertSaveButton('Save');?>
</form>