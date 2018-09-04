<h2> Teacher Allocations </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=allocations&action=allocation_add')"> Add </a> </span>
	
	<form method="GET" class='no-visible' <?=createValidator()?> >
		<input type="hidden" name="module" value="allocations">
		<input type="hidden" name="action" value="allocations">
		
		<div class='flex-grid'>
			<div class='row'>
				<div class='cell colspan3'>
					<?=insertSelect('Class','classid','','Select the class',0,1,$classes,'name|id','id|'.$classid)?>
				</div>			
				<div class='cell colspan8'>
					<input type="submit" value="Search">
				</div>
			</div>
		</div>
	</form>
</div>

<div>
	<table class="table table-border cell-border row-hover" border="0" data-role="">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Group</th>
				<th>Year</th>
				<th>Students</th>
				<th>Teacher</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($groups as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:50px">
				<a href="#" onclick="openWindow('?module=allocations&action=allocation_edit&id=<?=$R['id']?>')" <?=displayHint('Edit')?> ><span class="mif-pencil"></a>
			</td>
			<td class="fg-white bg-<?=($R['status'])?'green':'crimson';?>" style="width:80px"><?=$id+1?></td>
			<td><?=$R['name']?></td>
			<td><?=$R['year']?></td>
			<td><?=$R['students']?></td>
			<td><?=$R['teacher']?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>


<script>
	$(document).ready(function() {
		$('.table').DataTable( {
			"order": [[ 1, "asc" ]]
		} );
	} );
</script>