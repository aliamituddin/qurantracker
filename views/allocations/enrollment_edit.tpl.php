<? if (!$enrollment) $enrollment['status'] = 1; ?>
<h3> Enroll Student </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('allocations','enrollment_save')?> >
	<?=insertHiddenInput('id',$enrollment['id'])?>
		
	<?=insertCheckboxInput('Active','enrollment[status]',1,'','Is an active enrollment','switch',$enrollment['status'].'|1','','','place-right')?><br>
	
	<? if ($enrollment['id']) {
		echo insertSelect('Student','enrollment[studentid]','studentid','Select the student',1,1,$students,'name|id','id|'.$enrollment['studentid']);
	} else { 
		echo insertSelect('Student','studentid[]','studentid','Select the student',1,1,$students,'name|id','id|x','','multiple');
	}
	?>
	<br>

	<?=insertTextInput('Reference No','student[referenceno]',$enrollment['referenceno'],'','Enter the students\'s reference no','text',1,'||Name is required')?><br>
	
	<?=insertSelect('Grade','enrollment[gradeid]','','Select the grade',1,1,$grades,'name|id','id|'.$enrollment['gradeid'])?><br>
	
	<?=insertSelect('Class','enrollment[classid]','','Select the class',1,1,$classes,'name|id','id|'.$enrollment['classid'])?><br>
	
	<?=insertSelect('Year','enrollment[yearid]','','Select the year',1,1,$years,'name|id','id|'.$enrollment['yearid'])?><br>
	

	<?=insertSaveButton('Save');?>
</form>

<script>
	$( function() {
		$('.studentid').select2();
	})
</script>