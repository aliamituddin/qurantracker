<?=insertHiddenInput('id',$report['id']);?>
<?=insertHiddenInput('',$report['stageid'],'prev-stageid');?>

<? if ($report['doc']) { ?>
	<h3 class='tally'> Report Exists - <?=fDate($report['doc'])?> </h3>
<? } ?>

<div class='grid border bd-gray p-4'>
	<div class='row'>
		<div class='cell-sm'>
			<h6>Student Progress and Current Level of Quran recitation</h6>
			<p>Please give accurate details<br>
				If using Quran manual- indicate which manual 1, 2, 3 or 4 and the level.<br>
			If in Big Quran- then state if Beginner, Intermediate or Advanced level.<br></p>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			1. <?=insertSelect('Current Level','report[levelid]','levelid','Select the level',1,1,$levels,'name|id','id|'.$report['levelid'],'required not=""|Select the level')?><br>
		</div>
	</div>
	<div class='row'>
		<div class='cell-sm'>
			2. <?=insertSelect('Indicate the level of the student','report[stageid]','stageid','Select the level',1,1,$stages,'name|id','id|'.$student['stageid'],'required not=""|Select the level','disabled')?>
		</div>
	</div><br>
	<div class="row">
		<div class='cell-sm'>
			3. <label>Student recites Quran during the week other than Husayni Madrasah with (Can choose more than one option):</label>
			<? foreach ($spartners as $v=>$r) { ?>
				<?=insertCheckboxInput($r['description'],'partner[]',$r['pid'],"partner",'Select recitation partner','normal',$r['pid'].'|'.$r['partnerid'])?>
			<? } ?>
			<?=insertTextInput('|Other','report[opartner]',$report['opartner'],'partner','Enter other partner','text',1,'|Other is required')?>
		</div>
	</div><br>
	<div class="row">
		<div class='cell-sm'>
			4. <label>How often does the Student recite Quran during the week:</label><br>
			<? foreach ($frequencies as $v=>$r) { ?>
				<?=insertRadioInput($r['description'],'frequency',$r['id'],'frequency','Select the frequency',0,$r['id']."|".$report['frequencyid'],'required')?>
			<? } ?>
			<span class='invalid_feedback'>
				Select the frequency
			</span>
		</div>
	</div>
</div><br>

<div class='grid border bd-gray p-4'>
	<!--
	<div class='row d-none'>
		<div class='cell-sm'>
			0. <label>How is the student's Makharij?</label>
			<table style='width:100%'>
				<tr>
					<td colspan=2>Fair</td>
					<td colspan=1></td>
					<td colspan=2 class='text-right'>Excellent</td>
				</tr>
				<tr>
					<? for ($i=1;$i<6;$i++) { ?>
						<td>
							<label class='input-control radio' style='min-width:0px;'>
								<input type='radio' name='makhraj-rate' value="<?=$i?>" class='makhraj-rate' <?=selected($i,$report['makhraj'],'checked')?> title="Select the rating" data-validate="required">
								<span class='check'></span>
								<span class='caption'><?=$i?></span>
							</label>
							<span class='invalid_feedback'>
								Select the makhraj rating
							</span>
						</td>
					<? } ?>
				</tr>
			</table>
		</div>
	</div><br>
	-->
	<div class='row'>
		<div class='cell-sm'>
			1. <label>The student needs more practise to improve the Makharij of the following letter(s)</label><br>
			<? foreach ($smakhrajs as $v=>$r) { 
				if ($r['override']) {
					$class = 'override';
				} else {
					$class = 'no-override';
				}	
			?>
				<?=insertCheckboxInput($r['description'],'makhraj[]',$r['mid'],"makhraj $class",'Select student makhraj weaknesses','normal',$r['mid'].'|'.$r['makhrajid'],'',"data-group='makhraj'")?>
			<? } ?><br>
			<?//=insertTextInput('|Other','makhraj[]',$makhraj['other'],'makhraj','Enter other issues','text',1,'|Other is required')?>
		</div>
	</div><br>
</div>

<div class='manual-options border bd-gray p-4'>
	<h3>Manuals</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				2. <label>The student needs to work on recognition (identification) of the following letter(s) or joining letter(s)</label><br>
				<? foreach ($sweaknesses as $v=>$r) {
					if ($r['override']) {
						$class = 'override';
					} else {
						$class = 'no-override';
					}
				?>
					<?=insertCheckboxInput($r['description'],'weakness[]',$r['wid'],"weakness $class",'Select student weaknesses','normal',$r['wid'].'|'.$r['weaknessid'],'',"data-group='weakness'")?>
				<? } ?><br>
				<?//=insertTextInput('|Other','weakness[]',$weakness['other'],'weakness','Enter other weakness','text',1,'|Other is required')?>
			</div>
		</div>
	</div>
</div>

<div class="bigquran-options border bd-gray p-4">
	<h3>Big Quran</h3>
	<div class='grid'>
		<!--
		<div class='row d-none'>
			<div class='cell-sm'>
				0.3. <label>How is the student's Fluency of recitation?</label><br>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Fair</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Excellent</td>
					</tr>
					<tr>
						<? for ($i=1;$i<6;$i++) { ?>
							<td>
								<label class='input-control radio' style='min-width:0px;'>
									<input type='radio' name='fluency' value="<?=$i?>" class='fluency' <?=selected($i,$report['fluency'],'checked')?> title="Select the fluency">
									<span class='check'></span>
									<span class='caption'><?=$i?></span>
								</label>
								<span class='invalid_feedback fluency-error'>
									Select the fluency rating
								</span>
							</td>
						<? } ?>
					</tr>
				</table>
			</div>
		</div><br>
		<div class='row d-none'>
			<div class='cell-sm'>
				0.4. <label>How is the student's Tajweed?</label><br>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Fair</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Excellent</td>
					</tr>
					<tr>
						<? for ($i=1;$i<6;$i++) { ?>
							<td>
								<label class='input-control radio' style='min-width:0px;'>
									<input type='radio' name='tajweed-rate' value="<?=$i?>" class='tajweed-rate' <?=selected($i,$report['tajweed'],'checked')?> title="Select the rating">
									<span class='check'></span>
									<span class='caption'><?=$i?></span>
								</label>
								<span class='invalid_feedback tajweed-rate-error'>
									Select the tajweed rating
								</span>
							</td>
						<? } ?>
					</tr>
				</table>
			</div>
		</div><br>
		-->
		<div class='row'>
			<div class='cell-sm'>
				<label>2. The student needs more practise on the following Tajweed rules (Please note- select the tajweed rules that the child knows and needs practice on. The rules may not have been necessarily taught by you but the child may have been taught in previous years by other teachers)</label><br>
				<? foreach ($stajweeds as $v=>$r) { 
					if ($r['override']) {
						$class = 'override';
					} else {
						$class = 'no-override';
					}	
				?>
				<?=insertCheckboxInput($r['description'],'tajweed[]',$r['tid'],"tajweed $class",'Select student makhraj weaknesses','normal',$r['tid'].'|'.$r['tajweedid'],'',"data-group='tajweed'")?>
				<? } ?>
				<?//=insertTextInput('|Other','tajweed[]',$tajweed['other'],'tajweed','Enter other issues','text',1,'|Other is required')?>
			</div>
		</div><br>
		<!--
		<div class='row d-none'>
			<div class='cell-sm'>
				0.6. <label>How is the student's Accuracy in recitation?</label><br>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Fair</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Excellent</td>
					</tr>
					<tr>
						<? for ($i=1;$i<6;$i++) { ?>
							<td>
								<label class='input-control radio' style='min-width:0px;'>
									<input type='radio' name='accuracy' value="<?=$i?>" class='accuracy' <?=selected($i,$report['accuracy'],'checked')?> title="Select the rating">
									<span class='check'></span>
									<span class='caption'><?=$i?></span>
								</label>
								<span class='invalid_feedback accuracy-error'>
									Select the accuracy
								</span>
							</td>
						<? } ?>
					</tr>
				</table>
			</div>
		</div><br>
		-->
	</div>
</div>
<br>

<div class='grid border bd-gray p-4'>
	<div class='row'>
		<div class='cell-sm'>
			1. <?=insertSelect('How is the students discipline and personality? (Please select a comment that best fits the student)','report[disciplineid]','disciplineid','Select the discipline',0,1,$disciplines,'description|id','id|'.$report['disciplineid'],'required not=""|Discipline is required','')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			2. <?=insertSelect('What are the students areas for improvement? (Please select a comment that best fits the student)','report[improvementid]','improvementid','Select the improvement',0,1,$improvements,'description|id','id|'.$report['improvementid'],'required not=""|Improvement is required','')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			<?=insertTextInput('<strong>Any other comments, concerns, suggestions, feedback or information you would like to share for Q-Admin attention? (Any behavior/discipline issues, if child has any special needs, does he/she require learning support or counseling? etc.). (Please note - any comments entered here will not appear on the report and is only for the Q-Admins)</strong>|Comments','report[comments]',$report['comments'],'','Comments','text',1,'||Name is required')?> 
		</div>
	</div>
</div><br>

<?=insertSaveButton('Save','','','','return validateForm()')?>

<script>
	function prependStudentName() {
		$('.disciplineid').find('option').each(function(){
			var discipline = $(this).text();
			if (discipline) {
				discipline = '<?=getFirstName($enrollment['student'])?> '+discipline;
				$(this).text(discipline);
			}
		})
	}

	function validateBigQuranOptions() {
		var fluency = $('.fluency:checked').val();
		var tajweedRate = $('.tajweed-rate:checked').val();
		var accuracy = $('.accuracy:checked').val();
		var error = 0;

		if (!fluency) {
			error =1;
			showError('fluency');
		} else {
			hideError('fluency');
		}

		if (!accuracy) {
			error =1;
			showError('accuracy');
		} else {
			hideError('accuracy');
		}

		if (!tajweedRate) {
			error =1;
			showError('tajweed-rate');
		} else {
			hideError('tajweed-rate');
		}

		return error;
	}

	function showError(type) {
		$('.'+type+'-error').show();
	}

	function hideError(type) {
		$('.'+type+'-error').hide();
	}
	
	function validateForm() {
		var levelid = $('.levelid').val();
		var error = 0;
		if (levelid == 5) {
			// error = validateBigQuranOptions();
		} else {

		}	
		
		if (error == 1) {
			triggerError('Errors found');
			return false;
		}
	}

	function unselectOtherOptions(obj) {
		obj = $(obj).find('input').get(0);

		if ( $(obj).prop('checked') == true) {
			var group = $(obj).data('group');
			$('.'+group).find('input').prop('checked',false);
			$(obj).prop('checked',true);
		}
	}
	
	function unselectOverrideOptions(obj) {
		obj = $(obj).find('input').get(0);

		if ( $(obj).prop('checked') == true) {
			var group = $(obj).data('group');
			$('.override.'+group).find('input').prop('checked',false);
		}
	}

	function checkMaxOptions(obj) {
		var maxOptions = 7;

		obj = $(obj).find('input').get(0);
		var group = $(obj).data('group');

		var checkedOptions=0;
		$('.'+group).each( function() {
			var checkedInput = $(this).find('input').prop('checked');
			if (checkedInput == true) {
				checkedOptions++;
			}
		})
		if (checkedOptions > maxOptions) {
			$(obj).prop('checked',false);
			triggerError('Maximum 7 options allowed')
		}
	}

	$( function() {
		getStages();
		showLevelFields();
		prependStudentName();
		$('.improvementid').select2();
		$('.disciplineid').select2();
	})

	$(document).on('click','.override',function() {		
		unselectOtherOptions(this);
	})
	$(document).on('click','.no-override',function() {		
		unselectOverrideOptions(this);
	})
	$(document).on('click','.makhraj,.weakness,.tajweed',function() {		
		checkMaxOptions(this);
	})

</script>