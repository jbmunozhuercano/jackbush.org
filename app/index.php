<?php
	require_once 'inc/markdown/markdown.php';
?>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>The Jack Bush Catalogue Raisonné Project</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">

		<link rel="shortcut icon" type="image/x-icon" href="/static/images/favicon.ico" />
		<link rel="apple-touch-icon" sizes="114x114" href="/static/images/apple-touch-icon.png" />

		<link rel="stylesheet" href="static/sass/site.css" media="screen, projection" type="text/css" />
		<script src="/static/js/Modernizr.js" type="text/javascript"></script>
		<script src="/static/js/require.js" type="text/javascript"></script>
		<script src="/static/coffeescript/jackbush/main-conf.js" type="text/javascript"></script>
		<script type="text/javascript">
			require(['jackbush/main']);
		</script>
	</head>
	<body>
		<div class="container">
			<div class="content">
				<header id="main-header">
					<div class="logo">
						<a href="#">
							<img src="/static/images/logo.png" width="32" height="39" alt="" />
						</a>
					</div>
					<h1>Jack Bush Paintings</h1>
					<h2>A Catalogue Raisonné</h2>
					<div class="lead">
						<?= Markdown(file_get_contents('content/lead.md')); ?>
					</div>
					<div id="slide-pink-with-border">
						<a
							href="/static/images/pink_with_border_full.jpg"
							data-fancybox-title="Jack Bush (1909 &ndash; 1977) standing in front of his painting,<br />&ldquo;Pink with Border&rdquo; (1967), acryllic on canvas, 81&times;108 inches, Private Collection">
								<img src="/static/images/pink_with_border.png" width="300" alt="Jack Bush standing in front of his painting &ldquo;Pink With Border&rdquo; (1967)" />
						</a>
					</div>
				</header>

				<div class="content-body">
					<?= Markdown(file_get_contents('content/body.md')); ?>
				</div>
			</div>

<?php
/*
		<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
		<script>
			var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
			(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
			g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
			s.parentNode.insertBefore(g,s)}(document,'script'));
		</script>
*/
?>

		</div>
	</body>
</html>
