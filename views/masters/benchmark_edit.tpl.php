<h3> Add Benchmark </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','benchmark_save')?>>
	<?=insertHiddenInput('id',$benchmark['id'])?>
	
	<?=insertSelect('Grade','benchmark[gradeid]','','Select the grade',1,1,$grades,'name|id','id|'.$benchmark['gradeid'])?><br>
	
	<?=insertSelect('Year','benchmark[yearid]','','Select the year',1,1,$years,'name|id','id|'.$benchmark['yearid'])?><br>
	
	<?=insertSelect('Level','levelid','','Select the level',1,1
	,$levels,'name|id','id|'.$benchmark['levelid'])?><br>
	
	<?=insertSaveButton('Save');?>
</form>