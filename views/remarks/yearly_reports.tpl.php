<h2> Yearly Reports </h2>

<div>
	<span class="place-right"> <a class="button" href="?module=remarks&action=yearly_report_add"> Add </a> </span>
	<? if (USERTYPE == 'admin') { ?>
	<span class="place-right mr-5"> <a class="button" href="?module=remarks&action=yearly_report_export"> Export </a> </span>
	<? } ?> <br>
	<form method="GET" class='visible' >
		<input type="hidden" name="module" value="remarks">
		<input type="hidden" name="action" value="yearly_reports">
		<div class='grid'>
			<div class='row'>
				<div class='cell colspan5'>
					<label>Student Name</label> 
					<div class="input-control text">
						<input type="text" name="student" value="<?=$student?>">
					</div>
				</div>
				<div class='cell colspan5'>
					<?=insertSelect('Teacher','teacherid','','Select the teacher',0,1,$teachers,'name|id','id|'.$teacherid)?>
				</div>
				<div class='cell colspan'> <br>
					<input type="submit" value="Search">
				</div>
			</div>
		</div>
	</form>
</div>

<div>
	<table class="table table-border cell-border row-hover" border="0" data-role="dataTable">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Date</th>
				<th>Teacher</th>
				<th>Student</th>
				<th>Class</th>
				<th>Level</th>
				<th>Period</th>
				<th>Flag</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($reports as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:100px">
				<a href="?module=remarks&action=yearly_report_edit&id=<?=$R['id']?>" <?=displayHint('Edit')?>><span class="mif-pencil"></a>
				<? if (USERTYPE == 'admin') { ?>
					<a href="?module=remarks&action=yearly_report_delete&id=<?=$R['id']?>" <?=displayHint('Delete')?> onclick='return confirm("Are you sure?")'><span class="mif-cross"></a>
					<a href="?module=remarks&action=yearly_report_print&id=<?=$R['id']?>" <?=displayHint('Print')?> target='_blank'><span class="mif-printer"></a>
					<? if ($R['flag'] == 0) { ?>
						<a href="?module=remarks&action=yearly_report_flag&id=<?=$R['id']?>&flag=1" <?=displayHint('Flag')?>><span class="mif-flag sp_icon fg-red"></a>
					<? } else { ?>
						<a href="?module=remarks&action=yearly_report_flag&id=<?=$R['id']?>&flag=0" <?=displayHint('Unflag')?>><span class="mif-checkmark sp_icon fg-green"></a>
					<? } ?>
				<? } ?>
			</td>
			<td style="width:40px"><?=$id+1?></td>
			<td><?=fDate($R['doc'],'jS M y')?></td>
			<td><?=$R['teacher']?></td>
			<td><?=$R['student']?></td>
			<td>
				<a href="?module=remarks&action=yearly_report_print&gradeid=<?=$R['gradeid']?>&classid=<?=$R['classid']?>" <?=displayHint('Class Print')?> target='_blank'> <?=$R['grade']?> <?=$R['class']?> </a>
			</td>
			<td><?=$R['level']?> <?=$R['stage']?></td>
			<td><?=$R['year']?> <?=$R['term']?></td>
			<td><? if ($R['flag']) echo 'Flagged'; ?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>