<?php
header('Content-Type: application/force-download');
header('Content-disposition: attachment; filename='.$fname);
// Fix for crappy IE bug in download.
header("Pragma: ");
header("Cache-Control: ");

echo $content;
?>