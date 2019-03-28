<h2> Students </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=users&action=student_add')"> Add </a> </span> 
	<span class="place-right mr-5"> <a class="button" href="?module=users&action=student_export"> Export </a> </span> <br>
	<form method="GET" class='visible' >
		<input type="hidden" name="module" value="users">
		<input type="hidden" name="action" value="students">
		<div class='grid'>
			<div class='row'>
				<div class='cell colspan10'>
					<label>Name</label> 
					<div class="input-control text">
						<input type="text" name="name" value="<?=$name?>">
					</div>
				</div>
				<div class='cell colspan2'>
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
				<th>Gender</th>
				<th>Father</th>
				<th>Mother</th>
				<th>Madrasah</th>
				<th>Level</th>
				<th>Ref No</th>
				<th>Username</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($users as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:80px">
				<a href="#" onclick="openWindow('?module=users&action=student_edit&id=<?=$R['id']?>')" <?=displayHint('Edit')?> ><span class="mif-pencil"></a>
				<? if (USERTYPE=='admin') { ?>
				<a href="#" onclick="openWindow('?module=users&action=user_rights_edit&id=<?=$R['userid']?>')" <?=displayHint('User Rights')?>><span class="mif-user"></a> 
				<? } ?>
			</td>
			<td class="fg-white bg-<?=($R['status'])?'green':'crimson';?>" style="width:80px"><?=$id+1?></td>
			<td><?=$R['name']?></td>
			<td><?=$R['gender']?></td>
			<td><?=$R['father']?></td>
			<td><?=$R['mother']?></td>
			<td><?=$R['madrasah']?></td>
			<td><?=$R['level']?></td>
			<td><?=$R['referenceno']?></td>
			<td><?=$R['username']?></td>
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