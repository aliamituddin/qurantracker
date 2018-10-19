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
			<?=insertCheckboxInput('Na mzazi/mlezi akiwa nyumbani','partner[]','parent','partner partner-yes','Select recitation partner','normal','parent|'.$partners['parent'])?>
			<?=insertCheckboxInput('Na Maalim akiwa nyumbani','partner[]','maalim','partner partner-yes','Select recitation partner','normal','maalim|'.$partners['maalim'])?>
			<?=insertCheckboxInput('Humfuata mwalimu wa Quran nyumbani kwake','partner[]','teacher','partner partner-yes','Select recitation partner','normal','teacher|'.$partners['teacher'])?>
			<?=insertCheckboxInput('Humfuata Madrasatus Sadiq ma Madrasah','partner[]','madressa','partner partner-yes','Select recitation partner','normal','madressa|'.$partners['madressa'])?>
			<?=insertCheckboxInput('Hasomi Quran nyumbani na hahudhurii Madrasah','partner[]','none','partner partner-none','Select recitation partner','normal','none|'.$partners['none'])?>
			<?=insertTextInput('Nyinginezo','partner[]',$partners['other'],'partner','Enter other partner','text',1,'|Other is required')?>
		</div>
	</div><br>
	<div class="row">
		<div class='cell-sm'>
			4. <label>Je mwanafunzi husomaje Quran siku za wiki ukiondoa Madrasah Jumamosi:</label><br>
			<?=insertRadioInput('Mara moja','frequency','1','frequency','Select the frequency',0,"1|".$report['frequency'],'required')?>
			<?=insertRadioInput('Mara mbili','frequency','2','frequency','Select the frequency',0,"2|".$report['frequency'],'required')?>
			<?=insertRadioInput('Mara tatu','frequency','3','frequency','Select the frequency',0,"3|".$report['frequency'],'required')?>
			<?=insertRadioInput('Mara nne','frequency','4','frequency','Select the frequency',0,"4|".$report['frequency'],'required')?>
			<?=insertRadioInput('Mara tano','frequency','5','frequency','Select the frequency',0,"5|".$report['frequency'],'required')?>
			<?=insertRadioInput('Mara sita','frequency','6','frequency','Select the frequency',0,"6|".$report['frequency'],'required')?>
			<?=insertRadioInput('Kila siku','frequency','7','frequency','Select the frequency',0,"7|".$report['frequency'],'required')?>
			<?=insertRadioInput('Huhudhuria Madrasah Jumamosi tu','frequency','0','frequency','Select the frequency',0,"0|".$report['frequency'],'required')?>
			<span class='invalid_feedback'>
				Chagua mmoja
			</span>
		</div>
	</div>
</div><br>

<div class='grid border bd-gray p-4'>
	<div class='row'>
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
	<div class='row'>
		<div class='cell-sm'>
			2. <label>Mwanafunzi anhitaji mazoezi zaidi kuboresha Makhraj ya herufi zifuatazo:</label><br>
			<? foreach ($mletters as $r) { ?>
				<?=insertCheckboxInput($r['name'],'makhraj[]',$r['name'],'makhraj','Select student makhraj weaknesses','normal',$r['name'].'|'.$r['makhraj'])?>
			<? } ?>
			<?=insertCheckboxInput('Satui inapotengenezwa - Herufi za mdomoni','makhraj[]','lip','makhraj','Select student makhraj weaknesses','normal','lip|'.$makhraj['lip'])?>
			<?=insertCheckboxInput('Satui inapotengenezwa - Herufi za kwenye ulimi','makhraj[]','tongue','makhraj','Select student makhraj weaknesses','normal','tongue|'.$makhraj['tongue'])?>
			<?=insertCheckboxInput('Satui inapotengenezwa - Herufi za kwenye koromeo','makhraj[]','throat','makhraj','Select student makhraj weaknesses','normal','throat|'.$makhraj['throat'])?>
			<?=insertCheckboxInput('Herufi nyepesi','makhraj[]','light','makhraj','Select student makhraj weaknesses','normal','light|'.$makhraj['light'])?>
			<?=insertCheckboxInput('Herufi nzito','makhraj[]','heavy','makhraj','Select student makhraj weaknesses','normal','heavy|'.$makhraj['heavy'])?>
			<?=insertCheckboxInput('Makhraj yake ni nzuri kabisa. Mashallah!','makhraj[]','none','makhraj','Select student makhraj weaknesses','normal','none|'.$makhraj['none'])?><br>
			<?=insertTextInput('|Nyinginezo','makhraj[]',$makhraj['other'],'makhraj','Enter other issues','text',1,'|Other is required')?>
		</div>
	</div><br>
</div>

<div class='manual-options border bd-gray p-4'>
	<h3>Vitabu</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				3. <label>Mwanafunzi anahitaji kufanya kazi kutambua herufi zifuatazo:</label><br>
				<? foreach ($wletters as $r) { ?>
					<?=insertCheckboxInput($r['name'],'weakness[]',$r['name'],'weakness','Select student weaknesses','normal',$r['name'].'|'.$r['weakness'])?>
				<? } ?>
				<?=insertCheckboxInput('Mwanafunzi ana uwezo wa kutambua herufi zote vizuri kabisa. Mashallah!','weakness[]','all','weakness','Select student weaknesses','normal','all|'.$weakness['all'])?><br>
				<?=insertTextInput('|Nyinginezo','weakness[]',$weakness['other'],'weakness','Enter other weakness','text',1,'|Other is required')?>
			</div>
		</div>
	</div>
</div>

<div class="bigquran-options border bd-gray p-4">
	<h3>Quran Kubwa</h3>
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				3. <label>Mwanafunzi husoma Quran kwa urahisi gani?</label><br>
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
				4. <label>Tajweed ya mwanafunzi ikoja?</label><br>
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
		<div class='row'>
			<div class='cell-sm'>
				5. <label>Mwanafunzi anahitaji msaada zaidi kwenye sheria zifuatazo za Tajweed</label><br>
				<?=insertCheckboxInput('Alama za waqf','tajweed[]','stop','tajweed','Select student makhraj weaknesses','normal','stop|'.$tajweed['stop'])?>
				<?=insertCheckboxInput('Sheria za Nun Sakin na Tanween','tajweed[]','nst','tajweed','Select student makhraj weaknesses','normal','nst|'.$tajweed['nst'])?>
				<?=insertCheckboxInput('Idghaam','tajweed[]','idghaam','tajweed','Select student makhraj weaknesses','normal','idghaam|'.$tajweed['idghaam'])?>
				<?=insertCheckboxInput('Idhaar','tajweed[]','idhaar','tajweed','Select student makhraj weaknesses','normal','idhaar|'.$tajweed['idhaar'])?>
				<?=insertCheckboxInput('Iqlaab','tajweed[]','iqlaab','tajweed','Select student makhraj weaknesses','normal','iqlaab|'.$tajweed['iqlaab'])?>
				<?=insertCheckboxInput('Ikhfaa','tajweed[]','ikhfaa','tajweed','Select student makhraj weaknesses','normal','ikhfaa|'.$tajweed['ikhfaa'])?>
				<?=insertCheckboxInput('Sheria za Meem Sakin','tajweed[]','ms','tajweed','Select student makhraj weaknesses','normal','ms|'.$tajweed['ms'])?>
				<?=insertCheckboxInput('Qalqala','tajweed[]','qalqala','tajweed','Select student makhraj weaknesses','normal','qalqala|'.$tajweed['qalqala'])?>
				<?=insertCheckboxInput('Sheria za Raa','tajweed[]','raa','tajweed','Select student makhraj weaknesses','normal','raa|'.$tajweed['raa'])?>
				<?=insertCheckboxInput('Sheria za Laam','tajweed[]','laam','tajweed','Select student makhraj weaknesses','normal','laam|'.$tajweed['laam'])?>
				<?=insertCheckboxInput('Herufi nyepesi na nzito','tajweed[]','hll','tajweed','Select student makhraj weaknesses','normal','hll|'.$tajweed['hll'])?>
				<?=insertCheckboxInput('Maddah','tajweed[]','maddah','tajweed','Select student makhraj weaknesses','normal','maddah|'.$tajweed['maddah'])?>
				<?=insertCheckboxInput('Shaddah','tajweed[]','shaddah','tajweed','Select student makhraj weaknesses','normal','shaddah|'.$tajweed['shaddah'])?>
				<?=insertCheckboxInput('Short/Long vowels','tajweed[]','slvowels','tajweed','Select student makhraj weaknesses','normal','slvowels|'.$tajweed['slvowels'])?>
				<?=insertCheckboxInput('Mashallah mwanafunzi anafuata sheria zote za tajweed','tajweed[]','none','tajweed','Select student makhraj weaknesses','normal','none|'.$tajweed['none'])?>
				<?=insertCheckboxInput('Hatujafundisha sheria za Tajweed','tajweed[]','na','tajweed','Select student makhraj weaknesses','normal','na|'.$tajweed['na'])?>
				<?=insertTextInput('|Nyinginezo','tajweed[]',$tajweed['other'],'tajweed','Enter other issues','text',1,'|Other is required')?>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				6. <label>Usahihi wa mwanafunzi kwenye kusoma Quran upoje?</label><br>
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
	</div>
</div>
<br>

<div class='grid border bd-gray p-4'>
	<div class='row'>
		<div class='cell-sm'>
			1. <?=insertSelect('Haiba na nidhamu ya mwanafunzi vipoje? (Tafadhali tazamo hapo chini ni sentensi zipi zinamhusu huyu mwanafunzi)','report[disciplineid]','disciplineid','Elezea haiba na nidhamu',0,1,$disciplines,'description_sw|id','id|'.$report['disciplineid'],'required not=""|Discipline is required','data-role="select"')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			2. <?=insertSelect('Ni maeneo yapi mwanafunzi ameboresha kuonyesha mabadiliko? (Tafadhali chagua sentensi zinazoendana na huyu mwanafunzi)','report[improvementid]','improvementid','Elezea maeneo ya kujiboresha',0,1,$improvements,'description_sw|id','id|'.$report['improvementid'],'required not=""|Improvement is required','data-role="select"')?>
		</div>
	</div><br>
	<div class='row'>
		<div class='cell-sm'>
			<?=insertTextInput('<strong>Je una chochote ambacho unataka kutuambia kuhusiana na huyu mwanafunzi?</strong>|Comments','report[comments]',$report['comments'],'','Maoni','text',1,'||Name is required')?> 
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