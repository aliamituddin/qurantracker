<h3> Add Stages </h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','level_stage_save')?>>
	<?=insertHiddenInput('levelid',$id)?>
	
	<table class='table table-border cell-border'>
		<thead>
			<tr>
				<th>Stage</th>
				<th>Sort No</th>
			</tr>
		</thead>
		<tbody>
			<? foreach ($stages as $v=>$r) { ?>
			<tr>
				<td>
					<?=insertHiddenInput('lsid[]',$r['id'])?>
					<?=insertTextInput('|Stage','stage[]',$r['name'],'','Enter the stage','text',1,'||Name is required')?>
				</td>
				<td>
					<?=insertTextInput('|Sort No','sortno[]',$r['sortno'],'','Enter the sortno','text',1,'||Name is required')?>
				</td>
			</tr>
			<? } ?>
			<tr>
				<td>
				<?=insertHiddenInput('lsid[]','')?>
					<?=insertTextInput('|Stage','stage[]','','','Enter the stage','text',1,'||Name is required')?>
				</td>
				<td>
					<?=insertTextInput('|Sort No','sortno[]','','','Enter the sortno','text',1,'||Name is required')?>
				</td>
			</tr>
		</tbody>
	</table>
	
	<?=insertSaveButton('Save');?>
</form>