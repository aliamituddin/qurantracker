<h2> Modifications </h2>

<div>
	<span class="place-right"> <a class="button" href="?module=remarks&action=modification_add"> Add </a> </span>
	<form method="GET" class='no-visible' <?=createValidator()?> >
		<input type="hidden" name="module" value="remarks">
		<input type="hidden" name="action" value="modifications">
		<label>Name</label> 
		<div class="input-control text">
			<input type="text" name="name" value="<?=$name?>">
		</div
		<input type="submit" value="Search">
	</form>
</div>

<div>
	<table class="table table-border cell-border row-hover" border="0" data-role="dataTable">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Student</th>
				<th>Prev</th>
				<th>New</th>
				<th>Modified On</th>
				<th>Modified By</th>
				<th>Approved By</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($remarks as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:60px">
				<? if (USERTYPE == 'admin' && !$R['approver']) { ?>
				<a href="?module=remarks&action=remark_approve&id=<?=$R['id']?>"><span class="mif-checkmark"></a>
				<? } ?>
			</td>
			<td style="width:80px"><?=$id+1?></td>
			<td><?=$R['student']?></td>
			<td><?=$R['plevel']?> <?=$R['pstage']?></td>
			<td><?=$R['pstage']?> <?=$R['nstage']?></td>
			<td><?=fDate($R['doc'])?></td>
			<td><?=$R['creator']?></td>
			<td><?=$R['approver']?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>