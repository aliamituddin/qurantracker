<h2> Enrollments </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=allocations&action=enrollment_add')"> Add </a> </span>
	<form method="GET" class='visible'>
		<input type="hidden" name="module" value="allocations">
		<input type="hidden" name="action" value="enrollments">
		
		<div class='flex-grid'>
			<div class='row'>
				<div class='cell colspan5'>
					<?=insertSelect('Grade','gradeid','','Select the grade',0,1,$grades,'name|id','id|'.$gradeid)?>
				</div>				
				<div class='cell colspan5'>
					<?=insertSelect('Class','classid','','Select the class',0,1,$classes,'name|id','id|'.$classid)?>
				</div>
				<div class='cell colspan2'><br>
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
				<th>Name</th>
				<th>Grade Class</th>
				<th>Year</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($enrolls as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:50px">
				<a href="#" onclick="openWindow('?module=allocations&action=enrollment_edit&id=<?=$R['id']?>')" <?=displayHint('Edit')?> ><span class="mif-pencil"></a>
			</td>
			<td class="fg-white bg-<?=($R['status'])?'green':'crimson';?>" style="width:80px"><?=$id+1?></td>
			<td><?=$R['student']?></td>
			<td><?=$R['grade']?> <?=$R['class']?></td>
			<td><?=$R['year']?></td>
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