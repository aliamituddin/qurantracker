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
			<?=insertCheckboxInput('Parent/Guardian at home','partner[]','parent','partner partner-yes','Select recitation partner','normal','parent|'.$partners['parent'])?>
			<?=insertCheckboxInput('Maalim comes home','partner[]','maalim','partner partner-yes','Select recitation partner','normal','maalim|'.$partners['maalim'])?>
			<?=insertCheckboxInput('Goes to a Quran teachers home','partner[]','teacher','partner partner-yes','Select recitation partner','normal','teacher|'.$partners['teacher'])?>
			<?=insertCheckboxInput('Attends Madrastus Sadiq or other Madrasah','partner[]','madressa','partner partner-yes','Select recitation partner','normal','madressa|'.$partners['madressa'])?>
			<?=insertCheckboxInput('Does not recite Quran at home and does not attend other Madrasah','partner[]','none','partner partner-none','Select recitation partner','normal','none|'.$partners['none'])?>
			<?=insertTextInput('Other','partner[]',$partners['other'],'partner','Enter other partner','text',1,'|Other is required')?>
		</div>
	</div><br>
	<div class="row">
		<div class='cell-sm'>
			4. <label>How often does the Student recite Quran during the week:</label><br>
			<?=insertRadioInput('Once a week','frequency','1','frequency','Select the frequency',0,"1|".$report['frequency'],'required')?>
			<?=insertRadioInput('Twice a week','frequency','2','frequency','Select the frequency',0,"2|".$report['frequency'],'required')?>
			<?=insertRadioInput('Thrice a week','frequency','3','frequency','Select the frequency',0,"3|".$report['frequency'],'required')?>
			<?=insertRadioInput('Four times a week','frequency','4','frequency','Select the frequency',0,"4|".$report['frequency'],'required')?>
			<?=insertRadioInput('Five times a week','frequency','5','frequency','Select the frequency',0,"5|".$report['frequency'],'required')?>
			<?=insertRadioInput('Six times a week','frequency','6','frequency','Select the frequency',0,"6|".$report['frequency'],'required')?>
			<?=insertRadioInput('Every day','frequency','7','frequency','Select the frequency',0,"7|".$report['frequency'],'required')?>
			<?=insertRadioInput('None of the days - except Saturday Madrasah','frequency','0','frequency','Select the frequency',0,"0|".$report['frequency'],'required')?>
			<span class='invalid_feedback'>
				Select the frequency
			</span>
		</div>
	</div>
</div><br>

<div class='grid border bd-gray p-4'>
	<div class='row'>
		<div class='cell-sm'>
			1. <label>How is the student's Makharij?</label>
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
	<div class='row'>
		<div class='cell-sm'>
			2. <label>The student needs more practise to improve the Makharij of the following letter(s)</label><br>
			<? foreach ($mletters as $r) { ?>
				<?=insertCheckboxInput($r['name'],'makhraj[]',$r['name'],'makhraj','Select student makhraj weaknesses','normal',$r['name'].'|'.$r['makhraj'])?>
			<? } ?>
			<?=insertCheckboxInput('Sound Origination- Lip letters','makhraj[]','lip','makhraj','Select student makhraj weaknesses','normal','lip|'.$makhraj['lip'])?>
			<?=insertCheckboxInput('Sound Origination- Tongue letters','makhraj[]','tongue','makhraj','Select student makhraj weaknesses','normal','tongue|'.$makhraj['tongue'])?>
			<?=insertCheckboxInput('Sound Origination- Throat letters','makhraj[]','throat','makhraj','Select student makhraj weaknesses','normal','throat|'.$makhraj['throat'])?>
			<?=insertCheckboxInput('Light letters','makhraj[]','light','makhraj','Select student makhraj weaknesses','normal','light|'.$makhraj['light'])?>
			<?=insertCheckboxInput('Heavy letters','makhraj[]','heavy','makhraj','Select student makhraj weaknesses','normal','heavy|'.$makhraj['heavy'])?>
			<?=insertCheckboxInput('None. Their Makharij is excellent MashaAllah!','makhraj[]','none','makhraj','Select student makhraj weaknesses','normal','none|'.$makhraj['none'])?><br>
			<?=insertTextInput('|Other','makhraj[]',$makhraj['other'],'makhraj','Enter other issues','text',1,'|Other is required')?>
		</div>
	</div><br>
</div>

<div class='manual-options border bd-gray p-4'>
	<h3>Manuals</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				3. <label>The student needs to work on recognition (identification) of the following letter(s) or joining letter(s)</label><br>
				<? foreach ($wletters as $r) { ?>
					<?=insertCheckboxInput($r['name'],'weakness[]',$r['name'],'weakness','Select student weaknesses','normal',$r['name'].'|'.$r['weakness'])?>
				<? } ?>
				<?=insertCheckboxInput('The student can recognize all her letters well Mashallah!','weakness[]','all','weakness','Select student weaknesses','normal','all|'.$weakness['all'])?><br>
				<?=insertTextInput('|Other','weakness[]',$weakness['other'],'weakness','Enter other weakness','text',1,'|Other is required')?>
			</div>
		</div>
	</div>
</div>

<div class="bigquran-options border bd-gray p-4">
	<h3>Big Quran</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				3. <label>How is the student's Fluency of recitation?</label><br>
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
		<div class='row'>
			<div class='cell-sm'>
				4. <label>How is the student's Tajweed?</label><br>
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
		<div class='row'>
			<div class='cell-sm'>
				5. <label>The student needs more practise on the following Tajweed rules</label><br>
				<?=insertCheckboxInput('Stopping signs','tajweed[]','stop','tajweed','Select student makhraj weaknesses','normal','stop|'.$tajweed['stop'])?>
				<?=insertCheckboxInput('Rules of Nun Sakin and Tanween','tajweed[]','nst','tajweed','Select student makhraj weaknesses','normal','nst|'.$tajweed['nst'])?>
				<?=insertCheckboxInput('Idghaam','tajweed[]','idghaam','tajweed','Select student makhraj weaknesses','normal','idghaam|'.$tajweed['idghaam'])?>
				<?=insertCheckboxInput('Idhaar','tajweed[]','idhaar','tajweed','Select student makhraj weaknesses','normal','idhaar|'.$tajweed['idhaar'])?>
				<?=insertCheckboxInput('Iqlaab','tajweed[]','iqlaab','tajweed','Select student makhraj weaknesses','normal','iqlaab|'.$tajweed['iqlaab'])?>
				<?=insertCheckboxInput('Ikhfaa','tajweed[]','ikhfaa','tajweed','Select student makhraj weaknesses','normal','ikhfaa|'.$tajweed['ikhfaa'])?>
				<?=insertCheckboxInput('Rules of Meem Sakin','tajweed[]','ms','tajweed','Select student makhraj weaknesses','normal','ms|'.$tajweed['ms'])?>
				<?=insertCheckboxInput('Qalqala','tajweed[]','qalqala','tajweed','Select student makhraj weaknesses','normal','qalqala|'.$tajweed['qalqala'])?>
				<?=insertCheckboxInput('Rules of Raa','tajweed[]','raa','tajweed','Select student makhraj weaknesses','normal','raa|'.$tajweed['raa'])?>
				<?=insertCheckboxInput('Rules of Laam','tajweed[]','laam','tajweed','Select student makhraj weaknesses','normal','laam|'.$tajweed['laam'])?>
				<?=insertCheckboxInput('Heavy and Light letters','tajweed[]','hll','tajweed','Select student makhraj weaknesses','normal','hll|'.$tajweed['hll'])?>
				<?=insertCheckboxInput('Mashallah the student follows all the Tajweed rules well!','tajweed[]','none','tajweed','Select student makhraj weaknesses','normal','none|'.$tajweed['none'])?>
				<?=insertCheckboxInput('We have not covered Tajweed rules yet','tajweed[]','na','tajweed','Select student makhraj weaknesses','normal','na|'.$tajweed['na'])?>
				<?=insertTextInput('|Other','tajweed[]',$tajweed['other'],'tajweed','Enter other issues','text',1,'|Other is required')?>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				6. <label>How is the student's Accuracy in recitation?</label><br>
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
	</div>
</div>
<br>

<div class='grid border bd-gray p-4'>
	<div class='row'>
		<div class='cell-sm'>
			1. <?=insertSelect('How is the students discipline and personality? (Please select a comment that best fits the student)','report[disciplineid]','disciplineid','Select the discipline',0,1,$disciplines,'description|id','id|'.$report['disciplineid'],'required not=""|Discipline is required','data-role="select"')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			2. <?=insertSelect('What are the students areas for improvement? (Please select a comment that best fits the student)','report[improvementid]','improvementid','Select the improvement',0,1,$improvements,'description|id','id|'.$report['improvementid'],'required not=""|Improvement is required','data-role="select"')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			<?=insertTextInput('<strong>Any other comments or information you would like to share about the student? (optional)</strong>|Comments','report[comments]',$report['comments'],'','Comments','text',1,'||Name is required')?> 
		</div>
	</div>
</div><br>

<?=insertSaveButton('Save','','','','return validateForm()')?>

<script>
	function prependStudentName() {
		$('.disciplineid').find('option').each(function(){
			var discipline = $(this).text();
			if (discipline) {
				discipline = '<?=ucwords(strtolower($enrollment['student']))?> '+discipline;
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
			error = validateBigQuranOptions();
		} else {

		}	
		
		if (error == 1) {
			triggerError('Errors found');
			return false;
		}
	}

	function unselectOtherPartners() {
		$('.partner-yes').find('input[type=checkbox]:checked').each(function(){
			$(this).click();
		});
	}

	function unselectNonePartner() {
		$('.partner-none').find('input[type=checkbox]:checked').click();
	}

	$( function() {
		getStages();
		showLevelFields();
		// $('.improvementid').select2();
		prependStudentName();
	})

	$(document).on('click','.partner-none',function() {		
		unselectOtherPartners();
	})

	$(document).on('click','.partner-yes',function() {		
		unselectNonePartner();
	})
</script>