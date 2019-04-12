<table class="table table-border cell-border row-hover" border="0" data-role="">
	<tr>
		<th></th>
		<th>Student</th>
	</tr>
	<? foreach ($enrollments as $v=>$r) { ?>
	<tr>
		<td style='width:80px'> 
			<? if ($r['cenrollmentid']) { 
				echo 'Existing'; 
			} else { 
				echo insertCheckboxInput('','studentid[]',$r['studentid'],'studentid','','normal','0|0');
			} ?>
		</td>
		<td>
			<?=$r['student']?>
		</td>
	</tr>
	<? } ?>
</table>
<small> *This batch of students shall be inactivated </small><br><br>

<?=insertSaveButton('Save','','','','return confirm("Are you sure?")');?>