<table class="table table-border cell-border row-hover" data-role="" border=1>
    <thead>
        <tr>
            <th>S/N</th>
            <th>Name</th>
            <th>Class</th>
            <th>Teacher</th>
            <th>Level</th>
            <th>Stage</th>
            <th>Frequency (days)</th>
            <th>Makhraj</th>
            <th>Fluency</th>
            <th>Tajweed</th>
            <th>Accuracy</th>
            <th>Partners</th>
            <th>Recognition Letters</th>
            <th>Makhraj Letters</th>
            <th>Tajweed Letters</th>
            <th>Discipline</th>
            <th>Improvement</th>
            <th>Comments</th>
        </tr>
    </thead>
    <tbody>
<? foreach ($reports as $report) { 
    $tajweeds = $report['tajweeds'];
    $mletters = $report['mletters'];
    $wletters = $report['wletters'];
    $partners = $report['partners'];
    $report = $report['report'];
?>
        <tr>
            <td><?=$report['referenceno']?></td>
            <td><?=$report['student']?></td>
            <td><?=$report['grade']?> <?=$report['class']?></td>
            <td><?=$report['teacher']?></td>
            <td><?=$report['level']?></td>
            <td><?=$report['stage']?></td>
            <td><?=$report['frequency']?></td>
            <td><?=$report['makhraj']?></td>
            <td><?=$report['fluency']?></td>
            <td><?=$report['tajweed']?></td>
            <td><?=$report['accuracy']?></td>
            <td><?=implode(', ',$partners)?></td>
            <td><?=implode(', ',$wletters)?></td>
            <td><?=implode(', ',$mletters)?></td>
            <td><?=implode(', ',$tajweeds)?></td>
            <td><?=$report['discipline']?></td>
            <td><?=$report['improvement']?></td>
            <td><?=$report['comments']?></td>
        </tr>
<? } ?>
    </tbody>
</table>