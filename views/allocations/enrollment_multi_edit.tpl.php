<form enctype="multipart/form-data" <?=createValidator()?> action="?module=allocations&action=enrollment_multi_save" method="post">	
	<h3 class=''>Multiple Enrollments</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-4'>
				<?=insertSelect('From Grade','fgradeid','fgradeid','Select the grade',1,1,$grades,'name|id','id|')?>
			</div>
			<div class='cell-4'>
				<?=insertSelect('From Class','fclassid','fclassid','Select the class',1,1,$classes,'name|id','id|')?><br>
			</div>
			<div class='cell-4'>
				<?=insertSelect('From Year','fyearid','fyearid','Select the year',1,1,$years,'name|id','id|')?><br>
			</div>
		</div>
		<div class='row'>
			<div class='cell-4'>
				<?=insertSelect('To Grade','tgradeid','tgradeid','Select the grade',1,1,$grades,'name|id','id|')?>
			</div>
			<div class='cell-4'>
				<?=insertSelect('To Class','tclassid','tclassid','Select the class',1,1,$classes,'name|id','id|')?><br>
			</div>
			<div class='cell-4'>
				<?=insertSelect('To Year','tyearid','tyearid','Select the year',1,1,$years,'name|id','id|')?><br>
			</div>
		</div>
	</div>

	<div class='grid'>
		<div class='row'>
			<div class='cell' id='list'>

			</div>
		</div>
	</div>
</form>

<script>
	function getEnrolledStudents() {
		var fclassid = $('.fclassid').val();
		var fgradeid = $('.fgradeid').val();
		var fyearid = $('.fyearid').val();
		
		var tclassid = $('.tclassid').val();
		var tgradeid = $('.tgradeid').val();
		var tyearid = $('.tyearid').val();

		if (fclassid && fgradeid && fyearid && tclassid && tgradeid && tyearid) {
			$('#list').html('Loading');
			$('#list').load('?module=allocations&action=getEnrolledStudents&fgradeid='+fgradeid+'&fclassid='+fclassid+'&fyearid='+fyearid+'&tgradeid='+tgradeid+'&tclassid='+tclassid+'&tyearid='+tyearid);
		}

	}

	$(document).on('change','.fgradeid, .fclassid, .fyearid, .tgradeid, .tclassid, .tyearid',function(){
		getEnrolledStudents();
	})
</script>