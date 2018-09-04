<h3> Add Bench Remarks (Grade <?=$gbench['grade']?> <?=$gbench['year']?>)</h3>
<form enctype="multipart/form-data" method="post" <?=createValidator()?>  <?=windowOnSubmit('masters','benchremark_save')?>>
	<?=insertHiddenInput('gbid',$gbench['id'])?>
	
	<table class='table table-border cell-border'>
		<thead>
			<tr>
				<th>Variance</th>
				<th style='width:75%'>Remark</th>
			</tr>
		</thead>
		<tbody>
			<? for ($i=0;$i<6;$i++) { ?>
			<tr>
				<td>
					<?=insertTextInput('|Variance','variance[]',$remarks[$i]['variance'],'','Enter the variance','number',1,'||Name is required')?>
				</td>
				<td>
					<?=insertTextInput('|Remark','remarks[]',$remarks[$i]['remarks'],'','Enter the remark','text',1,'||Name is required')?>
				</td>
			</tr>
			<? } ?>
		</tbody>
	</table>
	
	<?=insertSaveButton('Save');?>
</form>