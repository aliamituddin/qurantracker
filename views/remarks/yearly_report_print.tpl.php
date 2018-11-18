<div class="d-print-none">
    <? foreach ($missings as $r) { 
        echo 'Missing: '.$r.'<br>';
    } ?>
</div>
<? foreach ($reports as $report) { 
    $tajweeds = $report['tajweeds'];
    $mletters = $report['mletters'];
    $wletters = $report['wletters'];
    $report = $report['report'];
?>
<div style='page-break-after:always'>
    <div class='grid'>
        <div class='row border bd-black border-size-2 '>
            <div class='cell'>
                <div class='text-center'>
                    <img src='img/report_header.jpg' style='height:240px;width:100%' class=' p-4'>
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
                <span class='report-label'>S/N: </span> <span class='ml-5'><?=$report['referenceno']?></span>
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
			<div class='row border bd-black border-size-2 p-3 border-top-none'>
				<div class='cell'>
					<span class='report-label'>The student needs to work on the recognition of the following letter(s): </span>
					<br>
					<span><?=implode(', ',$wletters)?></span>
				</div>
			</div>
		<? } ?>
        <div class='row border bd-black border-size-2 p-3 border-top-none'>
            <div class='cell'>
                <span class='report-label'>The student requires more practice to improve the Makharij of the following letter(s): </span>
				<br>
                <span><?=implode(', ',$mletters)?></span>
			</div>
		</div>
        <? if ($report['levelid'] == 5) { ?>
			<div class='row border bd-black border-size-2 p-3 border-top-none'>
				<div class='cell'>
					<span class='report-label'>The student requires more practice on the following Tajweed rule(s): </span>
					<br>
					<span><?=implode(', ',$tajweeds)?></span>
				</div>
			</div>
		<? } ?>
        <div class='row border bd-black border-size-2 p-2 border-top-none border-bottom-none'>
            <div class='cell-7'>
                <span class='report-label'>Remarks: </span>
				<br>
                <span><?=$report['student']?> <?=$report['discipline']?> <?=$report['improvement']?></span>
			</div>
            <div class='cell-5'>
                <img src='img/stamp.jpg' class='m-12'>
			</div>
		</div>
        <div class='row border bd-black border-size-2 p-0 border-top-none' style='margin-top:-75px !important'>
            <div class='cell-7'>
                Principal: Mrs S. Abdrulrasul
			</div>
            <div class='cell-5'>
                Date: November 2018
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