<h2> Students </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=users&action=student_add')"> Add </a> </span>
	<form method="GET" class='no-visible' <?=createValidator()?> >
		<input type="hidden" name="module" value="users">
		<input type="hidden" name="action" value="students">
		<label>Name</label> 
		<div class="input-control text">
			<input type="text" name="name" value="<?=$name?>">
		</div
		<input type="submit" value="Search">
	</form>
</div>

<div>
	<table class="table table-border cell-border row-hover" border="0" data-role="">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>Name</th>
				<th>Father</th>
				<th>Mother</th>
				<th>Madrasah</th>
				<th>Level</th>
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
			<td><?=$R['father']?></td>
			<td><?=$R['mother']?></td>
			<td><?=$R['madrasah']?></td>
			<td><?=$R['level']?></td>
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