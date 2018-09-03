<? if (!$group) $group['status'] = 1; ?>
<h3> Allocate Teacher </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('allocations','allocation_save')?> >
	<?=insertHiddenInput('id',$group['id'])?>
		
	<?=insertCheckboxInput('Active','group[status]',1,'','Is an active group','switch',$group['status'].'|1','','place-right')?> <br>
	
	<?=insertTextInput('Group Name','group[name]',$group['name'],'','Enter the group name','text',1,'required||Name is required')?> <br>

	<?=insertSelect('Year','group[yearid]','yearid','Select the year',1,1,$years,'name|id','id|'.$group['yearid'])?> <br>
	
	<?=insertSelect('Teacher','group[teacherid]','teacherid','Select the teacher',1,1,$teachers,'name|id','id|'.$group['teacherid'])?> <br>
	
	<?=insertSelect('Student','enrollid[]','enrollid','Select the student',1,1,'','student|id','id|x','','multiple')?>	
	<br>
	
	<?=insertSaveButton('Save');?>
</form>

<script>
	// var enrolls = [<? foreach ($enrollments as $v=>$r) echo '{'.$r['enrollid'].'},'; ?>];	
	var enrolls = new Array();
	<? foreach ($enrollments as $v=>$r) { ?> enrolls[<?=$v?>] = <?=$r['enrollid']?>; <? } ?>;
	// for (i=0;i<enrolls.length;i++) {
		// console.log($.inArray(enrolls[i],enrolls));
	// }
				
	function getEnrollments() {
		var teacherid = $('.teacherid').val();
		
		$(".enrollid").val('').trigger("change");
		$.get('?module=allocations&action=getEnrollments&format=json&teacherid='+teacherid,null,function(d){
			CC = JSON.parse(d);
			
			$('.enrollid').find('option').remove();
			$('.enrollid').append($('<option>', {value:'', text:''}));
			for(i=0;i<CC.length;i++) {
				$('.enrollid').append($('<option>', {value:CC[i].id, text:CC[i].student}));
			}
			
			$('.enrollid option').each( function() {
				if ($.inArray( parseInt($(this).val()), enrolls ) > -1 ) { $(this).prop('selected','selected'); }
			});
			$(".enrollid").trigger("change");
			
			
		});
	}
	
	$( function() {
		<? if ($group['id']) { ?> getEnrollments(); <? } ?>
		$('.enrollid').select2();
		
		$(document).on('change','.teacherid', function() {
			getEnrollments();
		})
	})	
</script>