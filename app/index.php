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

		<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

		<link rel="stylesheet" href="static/sass/site.css" media="screen, projection" type="text/css" />
		<script src="/static/js/Modernizr.js" type="text/javascript"></script>
		<script src="/static/js/require.js" type="text/javascript"></script>
		<script src="/static/coffeescript/jackbush/main-conf.js" type="text/javascript"></script>
		<script type="text/javascript">
			require(['jackbush/main']);
		</script>
	</head>
	<body>
		<!--[if lt IE 7]>
			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
		<![endif]-->

		<div class="container">
			<header>
				<h1>Jack Bush Paintings</h1>
				<h2>A Catalogue Raisonné</h2>
				<div class="lead">
					<p>
						Work has now begun on the compilation of a comprehensive record
						of paintings produced by the Canadian artist Jack Bush (1909 –
						1977).  With the support of the Estate of Jack Bush, the
						catalogue raisonné will document no fewer than 1,600 works of
						art in full colour.
					</p>
				</div>
			</header>


			<?= Markdown(file_get_contents('content.md')); ?>

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
