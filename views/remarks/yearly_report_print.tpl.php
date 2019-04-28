<div class="d-print-none">
    <? foreach ($missings as $r) { 
        'Missing: '.$r.'<br>';
    } ?>
</div>
<? foreach ($reports as $report) {
    $tajweeds = $report['tajweeds'];
    $makhrajs = $report['makhrajs'];
    $partners = $report['partners'];
    $weaknesses = $report['weaknesses'];
    $report = $report['report'];

    foreach ($weaknesses as $v=>$r) { 
        if ($r['id']) $wRecords[] = $r['description'];
    }
    if ($report['oweakness']) $wRecords[] = $report['oweakness'];

    foreach ($makhrajs as $v=>$r) { 
        if ($r['id']) $mRecords[] = $r['description'];
    }
    if ($report['omakhraj']) $mRecords[] = $report['omakhraj'];

    foreach ($tajweeds as $v=>$r) { 
        if ($r['id']) $tRecords[] = $r['description'];
    }
    if ($report['otajweed']) $tRecords[] = $report['otajweed'];
    
?>
<div style='page-break-after:always'>
    <div class='grid'>
        <div class='row border bd-black border-size-2 '>
            <div class='cell'>
                <div class='text-center'>
                    <img src='img/report_header.jpg' style='height:270px;width:100%' class=' p-4'>
				</div>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-3 border-top-none border-bottom-none'>
            <div class='cell'>
                <span class='report-label'>Student's Name: </span> <span class='ml-5'><?=$report['student']?></span> <br>
			</div>
		</div>
		<div class='row border bd-black border-size-2 pl-3 pr-3 pb-3 border-top-none border-bottom-none'>
            <div class='cell'>
                <span class='report-label'>S/N: </span> <span class='ml-5'><?=$report['studentid']?></span>
			</div>
            <div class='cell'>
                <span class='report-label'>Class: </span> <span><?=$report['grade']?> <?=$report['class']?></span> <br>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-3'>
            <div class='cell'>
                <span class='report-label'>Teacher's Name: </span> <span><?=$report['teacher']?></span> <br>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-3 border-top-none'>
            <div class='cell'>
                <span class='report-label'>Current Level: </span> <span><?=$report['level']?></span> <br>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-3 border-top-none'>
            <div class='cell'>
                <span class='report-label'>Stage of Recitation: </span> <span><?=$report['stage']?></span> <br>
			</div>
		</div>
        <? if ($report['levelid'] != 5) { ?>
			<div class='row border bd-black border-size-2 p-3 border-top-none' style='height:100px'>
				<div class='cell'>
					<span class='report-label'>The student needs to work on the recognition of the following letter(s): </span>
					<br>
                    <span><?=implode(', ',$wRecords)?></span> 
				</div>
			</div>
		<? } ?>
        <div class='row border bd-black border-size-2 p-3 border-top-none' style='height:100px'>
            <div class='cell'>
                <span class='report-label'>The student requires more practice to improve the Makharij of the following letter(s): </span>
				<br>
                <span><?=implode(', ',$mRecords)?></span> 
			</div>
		</div>
        <? if ($report['levelid'] == 5) { ?>
			<div class='row border bd-black border-size-2 p-3 border-top-none' style='height:100px'>
				<div class='cell'>
					<span class='report-label'>The student requires more practice on the following Tajweed rule(s): </span>
					<br>
                    <span><?=implode(', ',$tRecords)?></span> 
				</div>
			</div>
		<? } ?>
        <div class='row border bd-black border-size-2 p-2 border-top-none border-bottom-none' style='height:200px'>
            <div class='cell-7'>
                <span class='report-label'>Remarks: </span>
				<br>
                <span><?=getFirstName($report['student'])?> <?=$report['discipline']?> <?=$report['improvement']?></span>
			</div>
			<div class='cell-5'>
                <img src='img/stamp.jpg' style='width:180px;height:180px;position:absolute;'>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-0 border-top-none' style=''>
            <div class='cell-7'>
                Principal: Mrs S. Abdrulrasul
				<img src='img/signature.png' style='width:80px;position:absolute;left:140px;bottom:-5px'>
			</div>
            <div class='cell-5'>
                Date: <?=($report['termid'] == 1)?'April':'December';?> <?=$report['year']?>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-3 border-top-none'>
            <div class='cell text-center'>
                QURAN STAGES: <br>
                Level- 1, 2, 3, 4;  Big Qur'an- Beginner, Intermediate, Advanced
			</div>
		</div>
	</div>
</div>
<? } ?>