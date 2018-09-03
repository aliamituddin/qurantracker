<h2> Benchmarks </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=masters&action=benchmark_add')"> Add </a> </span>
	<form method="GET" class='no-visible' <?=createValidator()?> >
		<input type="hidden" name="module" value="masters">
		<input type="hidden" name="action" value="benchmarks">
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
				<th>Grade</th>
				<th>Year</th>
				<th>Level</th>
				<th>Remarks</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($benchmarks as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:120px">
				<a href="#" onclick="openWindow('?module=masters&action=benchmark_edit&id=<?=$R['id']?>')"><span class="mif-pencil"></a>
				<a href="#" onclick="openWindow('?module=masters&action=benchremark_edit&id=<?=$R['id']?>')"><span class="mif-folder"></a>
			</td>
			<td class="" style="width:80px"><?=$id+1?></td>
			<td><?=$R['grade']?></td>
			<td><?=$R['year']?></td>
			<td><?=$R['level']?></td>
			<td><?=$R['remarks']?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>