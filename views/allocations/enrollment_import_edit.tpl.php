<h3 class=''> Import Students+Enrollments </h3>

<form method='post' enctype="multipart/form-data" <?=createValidator()?> action='?module=allocations&action=enrollment_import_save'>

<div class='flex-grid'>
		<div class='row'>
			<div class='cell colspan4'>
				<?=insertSelect('Grade','gradeid','','Select the grade',0,1,$grades,'name|id','id|')?>
			</div>				
			<div class='cell colspan4'>
				<?=insertSelect('Class','classid','','Select the class',0,1,$classes,'name|id','id|')?>
			</div>
			<div class='cell colspan4'>
				<?=insertSelect('Year','yearid','','Select the year',0,1,$years,'name|id','id|')?>
			</div>
			<div class='cell colspan4'>
				<?=insertFileInput('Upload','upload','','','Upload the template',1)?>
			</div>
		</div>
	</div> <br>
	
	<a class='place-right' href='?module=allocations&action=enrollment_template_download'>Download Template</a>
	<?=insertSaveButton('Import','','','','return confirm("Are you sure?")')?>
</form>