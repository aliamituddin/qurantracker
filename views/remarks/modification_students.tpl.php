<table class='table table-border cell-border' data-role=''>
	<thead>
		<tr>
			<th>Student</th>
			<th>Grade Class</th>
			<th>Prev Level</th>
			<th>New Level</th>
			<th>Remarks</th>
			<th>Comments</th>
		</tr>
	</thead>
	<tbody>
		<? foreach ($students as $group=>$groups) { ?>
		<tr>
			<th colspan=6><?=$group?></th>
		</tr>
		<?	foreach ($groups as $r) { ?>
		<tr>
			<td>
				<?=$r['student']?>
				<?=insertHiddenInput('enrollid[]',$r['enrollid'])?>	
			</td>
			<td><?=$r['grade']?> <?=$r['class']?></td>
			<td>
				<?=$r['clevel']?>
				<?=insertHiddenInput('flevelid[]',$r['clevelid'])?>
			</td>
			<td>
				<?=insertSelect('','tlevelid[]','tlevelid','Select the new level',1,1,$levels,'name|id','id|0')?>
			</td>
			<td>
				<?=insertTextInput('','remarks[]','','','The remarks','text',1,'||Name is required','')?>
			</td>
			<td>
				<?=insertTextInput('','comments[]','','','The comments','text',1,'||Name is required','')?>
			</td>
		</tr>
		<? }
		} ?>
	</tbody>
</table>