<table class="" data-role="" border=1>
    <thead>
        <tr>
            <? $cols = array_keys($students[0]); ?>
            <? foreach ($cols as $col) { ?>
            <th><?=strtoupper($col)?></th>
            <? } ?>
        </tr>
    </thead>
    <tbody>
<? foreach ($students as $r) { ?>
        <tr>
            <? foreach ($cols as $col) { ?>
            <td><?=$r[$col]?></td>
            <? } ?>
        </tr>
<? } ?>
    </tbody>
</table>