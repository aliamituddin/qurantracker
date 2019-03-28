<h2> Frequencies </h2>

<div>
	<span class="place-right"> <a class="button" href="#" onclick="openWindow('?module=reportmasters&action=frequency_add')"> Add </a> </span>
	<form method="GET" class='no-visible' <?=createValidator()?> >
		<input type="hidden" name="module" value="reportmasters">
		<input type="hidden" name="action" value="years">
		<label>Name</label> 
		<div class="input-control text">
			<input type="text" name="name" value="<?=$name?>">
		</div>
		<input type="submit" value="Search">
	</form>
</div>

<div>
	<table class="table table-border cell-border row-hover" border="0" data-role="dataTable">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>No.</th>
				<th>English</th>
			</tr>
		</thead>
		<tbody>
	<?php foreach($frequencies as $id=>$R) { ?>
		<tr>
			<td nowrap style="width:120px">
				<a href="#" onclick="openWindow('?module=reportmasters&action=frequency_edit&id=<?=$R['id']?>')" <?=displayHint('Edit')?> ><span class="mif-pencil"></a>
				<? if ($R['status'] == 1) { ?>
					<a href="?module=reportmasters&action=frequency_status_change&id=<?=$R['id']?>&status=0" <?=displayHint('Deactivate')?>><span class="mif-cross sp_icon fg-red"></a>
				<? } else { ?>
					<a href="?module=reportmasters&action=frequency_status_change&id=<?=$R['id']?>&status=1" <?=displayHint('Activate')?>><span class="mif-checkmark sp_icon fg-green"></a>
				<? } ?>
			</td>
			<td style="width:80px"><?=$id+1?></td>
			<td><?=$R['description']?></td>
		</tr>
	<?php } ?>
		</tbody>

	</table>
</div>