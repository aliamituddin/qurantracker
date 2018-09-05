<? 
	if (!$report) { 
		$report['date'] = date('Y-m-d');
		$report['yearid'] = $settings['yearid'];
	}
?>

<h3> Modify Level </h3>
<form enctype="multipart/form-data" <?=createValidator()?>  action="?module=remarks&action=yearly_report_save" method="post">	
	<?=insertHiddenInput('report[yearid]',$report['yearid'])?>
	
	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				<?=insertSelect('Teacher','report[sid][teacherid]','teacherid','Select the teacher',1,1,$teachers,'name|id','id|'.$report['teacherid'])?>
			</div>
			<div class='cell-sm'>
				<?=insertSelect('Year','','report[sid][yearid]','Select the year',1,1,$years,'name|id','id|'.$report['yearid'],'','disabled')?>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				<big>Student Progress and Current Level of Quran recitation</big><br>
				<p>Please give accurate details<br>
				If using Quran manual- indicate which manual 1, 2, 3 or 4 and the level.<br>
				If in Big Quran- then state if Beginner, Intermediate or Advanced level.<br></p>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				<?=insertSelect('Current Level','student[sid][levelid]','','Select the level',1,1,$levels,'name|id','id|'.$report['levelid'])?><br>
			</div>
		</div><br>
		<div class="row">
			<div class='cell-sm'>
				<label>How often does the Student recite Quran during the week:</label><br>
				<?=insertRadioInput('Once a week','student[sid][levelid]','1','frequency','Select the frequency',0,"1|".$report['frequency'])?>
				<?=insertRadioInput('Twice a week','student[sid][levelid]','2','frequency','Select the frequency',0,"2|".$report['frequency'])?>
				<?=insertRadioInput('Thrice a week','student[sid][levelid]','3','frequency','Select the frequency',0,"3|".$report['frequency'])?>
				<?=insertRadioInput('Four times a week','student[sid][levelid]','4','frequency','Select the frequency',0,"4|".$report['frequency'])?>
				<?=insertRadioInput('Every day','student[sid][levelid]','n','frequency','Select the frequency',0,"n|".$report['frequency'])?>
				<?=insertRadioInput('None of the days - except Saturday Madressa','student[sid][frequency]','0','frequency','Select the frequency',0,"0|".$report['frequency'])?>
			</div>
		</div><br>
		<div class="row">
			<div class='cell-sm'>
				<label>Student recites Quran with (Can choose more than one option):</label>
				<?=insertCheckboxInput('Parent/Guardian at home','student[sid][partner]','parent','partner','Select recitation partner','normal','parent|'.$report['partner'])?>
				<?=insertCheckboxInput('Maalim comes home','student[sid][partner]','maalim','partner','Select recitation partner','normal','maalim|'.$report['partner'])?>
				<?=insertCheckboxInput('Goes to a Quran teachers home','student[sid][partner]','teacher','partner','Select recitation partner','normal','teacher|'.$report['partner'])?>
				<?=insertCheckboxInput('Attends Madrastus Sadiq or other madressa','student[sid][partner]','madressa','partner','Select recitation partner','normal','madressa|'.$report['partner'])?>
				<?=insertCheckboxInput('Does not recite Quran at home and does not attend other Madressa','student[sid][partner]','none','partner','Select recitation partner','normal','none|'.$report['partner'])?>
			</div>
		</div><br>
	</div>

	<div class='manual-options'>
		<h3>Manuals</h3>
		<div class='grid'>
			<div class='row'>
				<div class='cell-sm'>
					<?=insertSelect('Indicate the level of the student','student[sid][stageid]','','Select the level',1,1,$stages,'name|id','id|'.$student['stageid'])?><br>
				</div>
			</div><br>
			<div class='row'>
				<div class='cell-sm'>
					<label>The student needs to work on recognition of the following letter(s)</label><br>
					<? foreach ($letters as $r) { ?>
						<?=insertCheckboxInput($r['name'],'student[sid][weaknesses][]',$r['name'],'weaknesses','Select student weaknesses','normal','|')?>
					<? } ?>
					<?=insertCheckboxInput('The student can recognize all her letters well Mashallah!','student[sid][weaknesses][]','all','weaknesses','Select student weaknesses','normal','all|')?><br>
				</div>
			</div><br>
		</div>
	</div>

	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				<label>How is the student's Makharij?</label><br>
			</div>
		</div>
		<div class='row'>
			<div class='cell-sm'>
				<table style='width:100%'>
					<tr>
						<td colspan=2>Fair</td>
						<td colspan=1></td>
						<td colspan=2 class='text-right'>Excellent</td>
					</tr>
					<tr>
						<? for ($i=1;$i<6;$i++) { ?>
						<td>
							<small class="input-control radio makhraj">
								<input type="radio" name="student[sid][makhraj]" value="<?=$i?>" class="makhraj" title="Select the makhraj">
								<span class="check"></span>
								<span class="caption"><?=$i?></span>
							</small>
						</td>
						<? } ?>
					</tr>
				</table>
			</div>
		</div>
		<div class='row'>
			<div class='cell-sm'>
				<label>The student needs more practise to improve the Makharij of the following letter(s)</label><br>
				<? foreach ($letters as $r) { ?>
					<?=insertCheckboxInput($r['name'],'student[sid][makhrajs][]',$r['name'],'makhrajs','Select student makhraj weaknesses','normal','|')?>
				<? } ?>
				<?=insertCheckboxInput('Sound Origination- Lip letters','student[sid][makhrajs][]','lip','makhrajs','Select student makhraj weaknesses','normal','lip|')?>
				<?=insertCheckboxInput('Sound Origination- Tongue letters','student[sid][makhrajs][]','tongue','makhrajs','Select student makhraj weaknesses','normal','tongue|')?>
				<?=insertCheckboxInput('Sound Origination- Throat letters','student[sid][makhrajs][]','throat','makhrajs','Select student makhraj weaknesses','normal','throat|')?>
				<?=insertCheckboxInput('Light letters','student[sid][makhrajs][]','light','makhrajs','Select student makhraj weaknesses','normal','light|')?>
				<?=insertCheckboxInput('Heavy letters','student[sid][makhrajs][]','heavy','makhrajs','Select student makhraj weaknesses','normal','heavy|')?>
				<?=insertCheckboxInput('None. Their Makharij is excellent MashaAllah!','student[sid][makhrajs][]','none','makhrajs','Select student makhraj weaknesses','none','none|')?><br>
			</div>
		</div><br>
	</div>

	<div class="bigquran-options">
		<div class='grid'>
			<div class='row'>
				<div class='cell-sm'>
					<label>How is the student's Tajweed?</label><br>
					<table style='width:100%'>
						<tr>
							<td colspan=2>Fair</td>
							<td colspan=1></td>
							<td colspan=2 class='text-right'>Excellent</td>
						</tr>
						<tr>
							<? for ($i=1;$i<6;$i++) { ?>
							<td>
								<small class="input-control radio tajweed">
									<input type="radio" name="student[sid][tajweed]" value="<?=$i?>" class="tajweed" title="Select the tajweed">
									<span class="check"></span>
									<span class="caption"><?=$i?></span>
								</small>
							</td>
							<? } ?>
						</tr>
					</table>
				</div>
			</div><br>
			<div class='row'>
				<div class='cell-sm'>
					<label>The student needs more practise on the following Tajweed rules</label><br>
					<?=insertCheckboxInput('Stopping signs','student[sid][tajweed][]','stop','tajweed','Select student makhraj weaknesses','normal','stop|')?>
					<?=insertCheckboxInput('Rules of Nun Sakin and Tanween','student[sid][tajweed][]','nst','tajweed','Select student makhraj weaknesses','normal','nst|')?>
					<?=insertCheckboxInput('Idghaam','student[sid][tajweed][]','idghaam','tajweed','Select student makhraj weaknesses','normal','idghaam|')?>
					<?=insertCheckboxInput('Idhaar','student[sid][tajweed][]','idhaar','tajweed','Select student makhraj weaknesses','normal','idhaar|')?>
					<?=insertCheckboxInput('Iqlaab','student[sid][tajweed][]','iqlaab','tajweed','Select student makhraj weaknesses','normal','iqlaab|')?>
					<?=insertCheckboxInput('Ikhfaa','student[sid][tajweed][]','ikhfaa','tajweed','Select student makhraj weaknesses','normal','ikhfaa|')?>
					<?=insertCheckboxInput('Rules of Meem Sakin','student[sid][tajweed][]','ms','tajweed','Select student makhraj weaknesses','normal','ms|')?>
					<?=insertCheckboxInput('Qalqala','student[sid][tajweed][]','qalqala','tajweed','Select student makhraj weaknesses','normal','qalqala|')?>
					<?=insertCheckboxInput('Rules of Raa','student[sid][tajweed][]','raa','tajweed','Select student makhraj weaknesses','normal','raa|')?>
					<?=insertCheckboxInput('Rules of Laam','student[sid][tajweed][]','laam','tajweed','Select student makhraj weaknesses','normal','laam|')?>
					<?=insertCheckboxInput('Heavy and Light letters','student[sid][tajweed][]','hll','tajweed','Select student makhraj weaknesses','normal','hll|')?>
				</div>
			</div><br>
			<div class='row'>
				<div class='cell-sm'>
					<label>How is the student's Accuracy in recitation?</label><br>
					<table style='width:100%'>
						<tr>
							<td colspan=2>Fair</td>
							<td colspan=1></td>
							<td colspan=2 class='text-right'>Excellent</td>
						</tr>
						<tr>
							<? for ($i=1;$i<6;$i++) { ?>
							<td>
								<small class="input-control radio accuracy">
									<input type="radio" name="student[sid][accuracy]" value="<?=$i?>" class="accuracy" title="Select the accuracy">
									<span class="check"></span>
									<span class="caption"><?=$i?></span>
								</small>
							</td>
							<? } ?>
						</tr>
					</table>
				</div>
			</div><br>
		</div>
	</div>

	<div class='grid'>
		<div class='row'>
			<div class='cell-sm'>
				<label>How is the students discipline and personality? (Please select a comment that best fits the student)</label>
				<select class='' name='student[sid][discipline]'>
					<option>Is an enthusiastic learner who has shown great progress throughout the term.</option>
					<option>Is a cheerful and capable student and has demonstrated good progress this year.</option>
					<option>Is a determined learner who takes keen effort while reciting the Holy Quran.</option>
					<option>Is a disciplined student who consistently works hard to improve recitation.</option>
					<option>Is an active and cheerful learner and has demonstrated good progress this year.</option>
					<option>Is an enthusiastic student and has demonstrated excellent progress.</option>
					<option>Is a very hardworking and calm student and has shown remarkable progress.</option>
					<option>Grasps new concepts quickly and recites very fluently. A great achievement mashA!</option>
					<option>Is a polite and disciplined student.</option>
					<option>Is a cheerful and well-behaved learner who enjoys reciting the Qur’an.</option>
					<option>Is a well behaved child and recites the Quran very carefully.</option>
					<option>I see great potential in this learner to recite very well!</option>
					<option>Is a well-mannered student who has shown good progress.</option>
					<option>Has worked tremendously to improve letter recognition, reading fluently, and pronounciation of heavy letters.</option>
					<option>The student grasps concepts quickly and recites very fluently and implements all the rules of level 3/4 and will soon be ready to start the big Quran.</option>
					<option>The student shows great interest and affection for the recitation of the Holy Quran and recites well and carefully.</option>
					<option>Is a cooperative child who enjoys socializing with peers.</option>
					<option>Is a keen student who enjoys reading Quran.</option>
					<option>The student is an active group member and enjoys participating in discussions with peers.</option>
					<option>Is a well-mannered and hard working child and can recognize all the Arabic letters very well.</option>
					<option>Is a calm and enthusiastic learner who enjoys learning the Arabic letters.</option>
					<option>Is an active and cheerful student who puts in good effort to read Quran and recognize the letters.</option>
					<option>Is an enthusiastic learner who enjoys Quran recitation and has made great progress.</option>
				</select>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				<label>What are the students areas for improvement? (Please select a comment that best fits the student)</label>
				<select class='' name='student[sid][improvement]'>
					<option>Practicing regularly at home will enable the student to make a swift progress in Quran recitation. Thank you for your ongoing support and effort.</option>
					<option>Regular practice will enable the student to improve on fluency and progress to the next level.</option>
					<option>Regular practice will enable the student to improve on fluency and excel in recitation. Keep up the determined spirit!</option>
					<option>The student finds it difficult to stay focused on recitation and prefers working with hands-on Quran activities. With more practice and encouragement, the student will be able to achieve even more.</option>
					<option>Tends to confuse some letters but with more practice will be able to learn the letters fluently. I see great potential in the student. All the best!</option>
					<option>Practicing regularly at home will greatly improve recognition and fluency skills as the student has the potential to do well in Quran.</option>
					<option>The student has good fluency and has worked on improving makharij but struggles with the pronounciation of some heavy letters. Please continue practice at home to excel at Quran recitation.</option>
					<option>Performs better when recites on one to one basis. With regular practice and encouragement, the student will be able to achieve even more.</option>
					<option>Due to frequent absenteeism, the student has missed out on many Quran lessons. Please encourage the child to attend madressa regularly and to practice at home to excel at Quran recitation.</option>
					<option>Due to frequent absenteeism, it has been difficult to track the students progress. With more practice and encouragement, the student will be able to achieve even more.</option>
					<option>The student has improved makharij and needs to work on long/short vowels and maddahs. Please continue encouraging practice at home to excel at Quran recitation.</option>
					<option>The student has good fluency and letter recognition and has worked on improving makharij and needs to now work on the application of tajweed rules. Please continue encouraging practice at home to excel at Quran recitation.</option>
					<option>The student finds words with shaddah slightly challenging and needs to practice to overcome this. With continuous practice, the student can become an excellent reciter!</option>
					<option>With more practice and encouragement, the student can learn the letters fluently. I see great potential to learn the Qur’an in the best way possible.</option>
					<option>With continuous practice, the student can excel in recitation and avoid occasional mistakes in accuracy. All the best!</option>
					<option>Regular practice will build fluency and help improve on heavy letters. Please encourage your child to practice daily at home for enhancing Quran recitation.</option>
					<option>With more practice and encouragement, the student will be able to achieve even more.</option>
					<option>Additional practice will enable the student to achieve even more. All the best!</option>
					<option>With regular practice, the student has great potential to learn the Qur’an in the best way possible.</option>
					<option>Practicing every day will help to improve fluency and build confidence. All the best!</option>
				</select>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell-sm'>
				<?=insertTextInput('Any other comments or information you would like to share about the student?','student[sid][discipline]',$report['comments'],'','Comments','text',1,'||Name is required')?> 
			</div>
		</div>
	</div><br>

	<?=insertSaveButton('Save')?>
</form>