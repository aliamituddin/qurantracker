<table class="table table-border cell-border row-hover" data-role="" border=1>
    <thead>
        <tr>
            <th>SID</th>
            <th>EID</th>
            <th>S/N</th>
            <th>Name</th>
            <th>Class</th>
            <th>Teacher</th>
            <th>Level</th>
            <th>Stage</th>
            <th>Frequency</th>           
            <th>Partners</th>
            <th>Recognition</th>
            <th>Makhraj</th>
            <th>Tajweed</th>
            <th>Discipline</th>
            <th>Improvement</th>
            <th>Comments</th>
        </tr>
    </thead>
    <tbody>
<? foreach ($reports as $report) { 
    $tajweeds = $report['tajweeds'];
    $makhrajs = $report['makhrajs'];
    $weaknesses = $report['weaknesses'];
    $partners = $report['partners'];
    $report = $report['report'];
?>
        <tr>
            <td><?=$report['studentid']?></td>
            <td><?=$report['enrollid']?></td>
            <td><?=$report['referenceno']?></td>
            <td><?=$report['student']?></td>
            <td><?=$report['grade']?> <?=$report['class']?></td>
            <td><?=$report['teacher']?></td>
            <td><?=$report['level']?></td>
            <td><?=$report['stage']?></td>
            <td><?=$report['frequency']?></td>
            <td>
                <? foreach ($partners as $v=>$r) { ?>
                    <span><?=($r['id'])?$r['description']:'';?></span>
                <? } ?>
                <? if ($report['opartner']){ ?>
                    <span><?=$report['opartner']?></span>
                <? } ?>
            </td>
            <td>
                <? foreach ($weaknesses as $v=>$r) { ?>
                    <span><?=($r['id'])?$r['description']:'';?></span>
                <? } ?>
                <? if ($report['oweakness']){ ?>
                    <span><?=$report['oweakness']?></span>
                <? } ?>
            </td>
            <td>
                <? foreach ($makhrajs as $v=>$r) { ?>
                    <span><?=($r['id'])?$r['description']:'';?></span>
                <? } ?>
                <? if ($report['omakhraj']){ ?>
                    <span><?=$report['omakhraj']?></span>
                <? } ?>
            </td>
            <td>
                <? foreach ($tajweeds as $v=>$r) { ?>
                    <span><?=($r['id'])?$r['description']:'';?></span>
                <? } ?>
                <? if ($report['otajweed']){ ?>
                    <span><?=$report['otajweed']?></span>
                <? } ?>
            </td>
            <td><?=$report['discipline']?></td>
            <td><?=$report['improvement']?></td>
            <td><?=$report['comments']?></td>
        </tr>
<? } ?>
    </tbody>
</table>