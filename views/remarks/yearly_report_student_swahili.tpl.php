<?=insertHiddenInput('id',$report['id']);?>
<?=insertHiddenInput('',$report['stageid'],'prev-stageid');?>

<? if ($report['doc']) { ?>
	<h3 class='tally'> Repoti Ipo - <?=fDate($report['doc'])?> </h3>
<? } ?>

<div class='grid border bd-gray p-4'>
	<div class='row'>
		<div class='cell-sm'>
			<h6>Maendelio ya mwanafunzi na ngazi aliyofikia kwenye usomaji wa Quran</h6>
			<p>Tafadhali toa maelezo sahihi<br>
				Kama anatumia vitabu vya Quran vilivyoandaliwa, elezea ni kitabu kipi 1, 2, 3 ama cha 4 na hatua ipi umefikia <br>
				Kama ni Quran kubwa, elezea kama ni hatua ya Awali, Kati ama hatua ya juu kabisa.<br></p>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			1. <?=insertSelect('Hatua uliyopo sasa','report[levelid]','levelid','Chagua hatua',1,1,$levels,'name_sw|id','id|'.$report['levelid'],'required not=""|Chagua hatua')?><br>
		</div>
	</div>
	<div class='row'>
		<div class='cell-sm'>
			2. <?=insertSelect('Elezea ngazi aliyopo mwanafunzi','report[stageid]','stageid','Changua ngazi',1,1,$stages,'name_sw|id','id|'.$student['stageid'],'required not=""|Chagua ngazi','disabled')?>
		</div>
	</div><br>
	<div class="row">
		<div class='cell-sm'>
			3. <label>Mwanafunzi anasoma Quran na (Unaweza kuchagua zaida ya moja):</label>
			<? foreach ($spartners as $v=>$r) { ?>
				<?=insertCheckboxInput($r['description_sw'],'partner[]',$r['pid'],'partner partner-yes','Select recitation partner','normal',$r['pid'].'|'.$r['partnerid'])?>
			<? } ?>
			<?=insertTextInput('|Other','report[opartner]',$report['opartner'],'partner','Enter other partner','text',1,'|Other is required')?>
		</div>
	</div><br>
	<div class="row">
		<div class='cell-sm'>
			4. <label>Je mwanafunzi husomaje Quran siku za wiki ukiondoa Madrasah Jumamosi:</label><br>
			<? foreach ($frequencies as $v=>$r) { ?>
				<?=insertRadioInput($r['description_sw'],'frequency',$r['id'],'frequency','Select the frequency',0,$r['id']."|".$report['frequencyid'],'required')?>
			<? } ?>
			<span class='invalid_feedback'>
				Chagua mmoja
			</span>
		</div>
	</div>
</div><br>

<div class='grid border bd-gray p-4'>
	<!--
	<div class='row d-none'>
		<div class='cell-sm'>
			1. <label>Elezea Makhraj ya mwanafunzi</label>
			<table style='width:100%'>
				<tr>
					<td colspan=2>Kawaida tu</td>
					<td colspan=1></td>
					<td colspan=2 class='text-right'>Ni Nzuri Sana</td>
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
								Elezea Makhraj
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
			1. <label>Mwanafunzi anhitaji mazoezi zaidi kuboresha Makhraj ya herufi zifuatazo:</label><br>
			<? foreach ($smakhrajs as $v=>$r) { ?>
				<?=insertCheckboxInput($r['description_sw'],'makhraj[]',$r['mid'],'makhraj','Select student makhraj weaknesses','normal',$r['mid'].'|'.$r['makhrajid'])?>
			<? } ?><br>
			<?//=insertTextInput('|Nyinginezo','makhraj[]',$makhraj['other'],'makhraj','Enter other issues','text',1,'|Other is required')?>
		</div>
	</div><br>
</div>

<div class='manual-options border bd-gray p-4'>
	<h3>Vitabu</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				2. <label>Mwanafunzi anahitaji kufanya kazi kutambua herufi zifuatazo:</label><br>
				<? foreach ($sweaknesses as $v=>$r) { ?>
					<?=insertCheckboxInput($r['description_sw'],'weakness[]',$r['wid'],'weakness','Select student weaknesses','normal',$r['wid'].'|'.$r['weaknessid'])?>
				<? } ?><br>
				<?//=insertTextInput('|Nyinginezo','weakness[]',$weakness['other'],'weakness','Enter other weakness','text',1,'|Other is required')?>
			</div>
		</div>
	</div>
</div>

<div class="bigquran-options border bd-gray p-4">
	<h3>Quran Kubwa</h3>
	<div class='grid'>
		<!--
		<div class='row d-none'>
			<div class='cell-sm'>
				X. <label>Mwanafunzi husoma Quran kwa urahisi gani?</label><br>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Kawaida Tu</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Ni Nzuri Sana</td>
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
									Elezea urahisi wa kusoma
								</span>
							</td>
						<? } ?>
					</tr>
				</table>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				X. <label>Tajweed ya mwanafunzi ikoja?</label><br>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Kawaida Tu</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Ni Nzuri Sana</td>
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
									Elezea Tajweed
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
				2. <label>Mwanafunzi anahitaji mazoezi zaidi kwenye sheria za Tajweed zifuatazo (Tafadhali orodesha sheria za Tajweed ambazo mwanafunzi anazojua na anazohitaji mazoezi. Sio lazima hizi sheria ziwe zimefundishwa na wewe. Zinaweza kuwa zimefundishwa na waalimu waliotangulia kabla yako.)</label><br>
				<? foreach ($stajweeds as $v=>$r) { ?>
					<?=insertCheckboxInput($r['description_sw'],'tajweed[]',$r['tid'],'tajweed','Select student makhraj weaknesses','normal',$r['tid'].'|'.$r['tajweedid'])?>
				<? } ?>
				<?//=insertTextInput('|Nyinginezo','tajweed[]',$tajweed['other'],'tajweed','Enter other issues','text',1,'|Other is required')?>
			</div>
		</div><br>
		<!--
		<div class='row d-none'>
			<div class='cell-sm'>
				X. <label>Usahihi wa mwanafunzi kwenye kusoma Quran upoje?</label><br>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Kawaida Tu</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Ni Nzuri Sana</td>
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
									Elezea usahihi wa kusoma
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
			1. <?=insertSelect('Haiba na nidhamu ya mwanafunzi vipoje? (Tafadhali tazamo hapo chini ni sentensi zipi zinamhusu huyu mwanafunzi)','report[disciplineid]','disciplineid','Elezea haiba na nidhamu',0,1,$disciplines,'description_sw|id','id|'.$report['disciplineid'],'required not=""|Discipline is required','')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			2. <?=insertSelect('Ni maeneo yapi mwanafunzi ameboresha kuonyesha mabadiliko? (Tafadhali chagua sentensi zinazoendana na huyu mwanafunzi)','report[improvementid]','improvementid','Elezea maeneo ya kujiboresha',0,1,$improvements,'description_sw|id','id|'.$report['improvementid'],'required not=""|Improvement is required','')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			<?=insertTextInput('<strong>Kama kuna maoni, nyongeza, pendekezo, mrejesho wowote ama maelezo yeyote unayotaka kushea na (uongonzi) Q-Admin? (Kuhusiana na tabia/nidhamu, kama mwanafunzi ana mahitaji maalum, je anahitaji ushauri ama msaada kwenye masomo etc. Kumbuka kwamaba kitakachoandikwa hapa hakitaonekana kwenye ripoti. Hii ni kwa ajili ya uongozi (Q-Admins))</strong>|Comments','report[comments]',$report['comments'],'','Maoni','text',1,'||Name is required')?> 
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
			triggerError('Chaguo 7 tu zinaruhusiwa')
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