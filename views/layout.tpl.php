<!DOCTYPE html>
<html lang="ar">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta name="author" content="Shakir Moledina">
		
		<title><?=$title?></title>
		
		<link rel="stylesheet" href="css/metro.css">
		<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="css/froala_page.min.css" rel="stylesheet" type="text/css">
		<link href="css/froala_editor.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/style.css">
		<link href="css/StyleSheet.css" media="screen" rel="stylesheet" type="text/css"/>
		<link href="css/datatables.css" media="screen" rel="stylesheet" type="text/css"/>
		<link href="css/select2.main.css" media="screen" rel="stylesheet" type="text/css"/>
		<link href="css/select2.min.css" media="screen" rel="stylesheet" type="text/css"/>
		
		<script>
			window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')
		</script>		
	</head>
	<body class="">
		<div id="maincontent">
			<div class="">
				<?=$menu?>
			</div>
			
			<div class="bg-white mt-20 m-10">
				<div class="grid">
					<div class="row">
						<div class="cell">
							<?=$content?>
						</div>
					</div>
				</div>
				
				<div data-role="dialog" id="dialog"></div>

			</div>
			
		</div>
		<div class="bg-logo">
			<img src='img/<?=LOGO?>' class='logo'>
		</div>
		
		<script src="js/datatables.js"></script>
		<script src="js/select2.min.js"></script>
		<script src="js/maskinput.js"></script>
		
		<!--Validation Scripts-->
		<script language="javascript" src="<?=base_url()?>js/yahoo-min.js" type="text/javascript"></script>
		<script language="javascript" src="<?=base_url()?>js/event-min.js" type="text/javascript"></script>
		<script language="javascript" src="<?=base_url()?>js/jsvalidate.js" type="text/javascript"></script>
		<!--Validation Scripts-->
		
		<!-- Metro UI CSS JavaScript plugins -->
		<script src="js/metro.js"></script>
		<script src="js/custom.js"></script>
		<? include_once('js/scripts.js'); ?>
	</body>
</html>