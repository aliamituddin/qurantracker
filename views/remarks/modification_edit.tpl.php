<? 
	if (!$modification) { 
		$modification['date'] = date('Y-m-d');
		$modification['yearid'] = $settings['yearid'];
		$modification['termid'] = $settings['termid'];
	}
?>

<h3> Modify Level </h3>
<form enctype="multipart/form-data" <?=createValidator()?>  action="?module=remarks&action=modification_save" method="post">	
	<?=insertHiddenInput('modification[yearid]',$modification['yearid'])?>
	<?=insertHiddenInput('modification[termid]',$modification['termid'])?>	
	<?=insertHiddenInput('mteacher',$teachers[0]['mteacher'])?>	
	
	<div class='grid'>
		<div class='row'>
			<div class='cell'>
				<?=insertSelect('Teacher','modification[teacherid]','teacherid','Select the teacher',1,1,$teachers,'name|id','id|'.$modification['teacherid'])?>
			</div>
			<div class='cell'>
				<?=insertTextInput('Update Date','',fDate($modification['date']),'','The update date','text',1,'||Name is required','disabled')?>
			</div>
		</div><br>
		<div class='row'>
			<div class='cell'>
				<?=insertSelect('Year','','yearid','Select the year',1,1,$years,'name|id','id|'.$modification['yearid'],'','disabled')?>
			</div>
			<div class='cell'>
				<?=insertSelect('Term','','termid','Select the term',1,1,$terms,'name|id','id|'.$modification['termid'],'','disabled')?>
			</div>
		</div>
	</div>

	<div id='students'></div>
	
	<?=insertSaveButton('Save')?>
</form>

<script>
	
	function getStudents() {
		var teacherid = $('.teacherid').val();
		var yearid = $('.yearid').val();
		
		$('#students').load('?module=remarks&action=getStudents&teacherid='+teacherid+'&yearid='+yearid);
	}
	
	$( function() {
		$(document).on('change','.teacherid', function() {
			getStudents();
		})
	})
</script>