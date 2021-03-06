<? 
	if (!$report) { 
		$report['date'] = date('Y-m-d');
		$report['yearid'] = $settings['yearid'];
		$report['termid'] = $settings['termid'];
	}
	
?>

<h3> Student Report </h3>
<form enctype="multipart/form-data" <?=createValidator()?>  action="?module=remarks&action=yearly_report_save" method="post">	
	<?=insertHiddenInput('report[yearid]',$report['yearid'],'yearid')?>
	<?=insertHiddenInput('report[termid]',$report['termid'],'termid')?>
	
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm-3'>
				<?=insertSelect('Teacher/Mwalimu','report[teacherid]','teacherid','Select the teacher',1,0,$teachers,'name|id','id|'.$report['teacherid'])?>
			</div>
			<div class='cell-sm-2'>
				<?=insertSelect('Year/Mwaka','','','Select the year',1,1,$years,'name|id','id|'.$report['yearid'],'','disabled')?>
			</div>
			<div class='cell-sm-2'>
				<?=insertSelect('Term','','','Select the term',1,1,$terms,'name|id','id|'.$report['termid'],'','disabled')?>
			</div>
			<div class='cell-sm-2'>
				<label>Language/Lugha</label>
				<select class='language'>
					<option value='english'>English</option>
					<option value='swahili'>Swahili</option>
				</select>
			</div>
			<div class='cell-sm-3'>
				<?=insertSelect('Student/Mwanafunzi','report[enrollid]','enrollid','Select the student',1,1,$enrollments,'enrollment|id','id|'.$report['enrollid'])?>
			</div>
		</div>
	</div><br>

	<div id="student-report"></div>
</form>

<script>
	function getEnrollment() {
		var enrollid = $('.enrollid').val();
		var yearid = $('.yearid').val();
		var teacherid = $('.teacherid').val();
		var language = $('.language').val();
		
		$('#student-report').load('?module=remarks&action=getEnrollmentReport&teacherid='+teacherid+'&yearid='+yearid+'&enrollid='+enrollid+'&language='+language);
	}

	function getStages() {
		var levelid = $('.levelid').val();
		var stageid = $('.prev-stageid').val();
		var language = $('.language').val();
		
		if (levelid) {
			$.get('?module=masters&action=getLevelStages&format=json&levelid='+levelid,null,function(d){
				CC = JSON.parse(d);
				$('.stageid').prop('disabled','');
				
				$('.stageid').find('option').remove();
				$('.stageid').append($('<option>', {value:'', text:''}));
				for(i=0;i<CC.length;i++) {
					if (language == 'swahili') {
						$('.stageid').append($('<option>', {value:CC[i].id, text:CC[i].name_sw}));
					} else {
						$('.stageid').append($('<option>', {value:CC[i].id, text:CC[i].name}));
					}
				}
				
				if (stageid) $('.stageid').val(stageid);
			});
		}
	}

	function showLevelFields() {
		var levelid = $('.levelid').val();
		
		if (levelid == 5) {
			$('.bigquran-options').show();
			$('.manual-options').hide();
		} else {
			$('.manual-options').show();
			$('.bigquran-options').hide();
		}
	}

	function hideSubmitButton() {
		$('input[type=submit]').hide();
		console.log('asds');
	}
	
	$( function() {
		<? if ($report['id']) { ?>
			getEnrollment();
		<? } ?>
		
		$(document).on('change','.enrollid', function() {
			getEnrollment();
		});
		$(document).on('change','.levelid', function() {
			getStages();
			showLevelFields();
		});
	})
</script>