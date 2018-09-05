<h2> Yearly Reports </h2>

<div>
	<span class="place-right"> <a class="button" href="?module=remarks&action=yearly_report_add"> Add </a> </span>
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
				<th>Year</th>
				<th>Teacher</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($reports as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:60px">
				<a href="?module=remarks&action=yearly_report_edit&id=<?=$R['id']?>"><span class="mif-pencil"></a>
			</td>
			<td style="width:80px"><?=$id+1?></td>
			<td><?=$R['year']?></td>
			<td><?=$R['teacher']?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>