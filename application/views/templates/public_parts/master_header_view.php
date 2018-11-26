<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo (isset($detail['title']) || isset($category['title']))? (isset($detail['title']))? $detail['title'] : $category['title'] : 'Myanmar Tours' ?></title>
    <meta name="description" content="<?php echo (isset($detail['title']))? (isset($detail['metadescription']) && !empty($detail['metadescription']	))? $detail['metadescription']: $detail['title'] : 'Myanmar Tours' ?>">
    <meta name="keywords" content="<?php echo (isset($detail['title']))? (isset($detail['metakeywords']) && !empty($detail['metakeywords']	))? $detail['metakeywords']: $detail['title'] : 'Myanmar Tours' ?>">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<?php echo site_url('node_modules/bootstrap/') ?>dist/css/bootstrap.min.css">

	<!-- FontAwesome 5 -->
	<link rel="stylesheet" href="<?php echo site_url('node_modules/@fortawesome/') ?>fontawesome-free/css/all.min.css">

	<!-- Style -->
	<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>style.min.css">

    <link rel="stylesheet" href="<?php echo site_url('assets/css/') ?>client.css">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/rateit.css') ?>">

	<!-- Owl Carousel CSS -->
	<link rel="stylesheet" href="<?php echo site_url('assets/lib/owl-carousel/') ?>css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php echo site_url('assets/lib/owl-carousel/') ?>css/owl.theme.default.min.css">


	<!-- jQuery 3.3.1 -->
	<script src="<?php echo site_url('node_modules/') ?>jquery/dist/jquery.min.js"></script>
	<!-- Popper JS -->
	<script src="<?php echo site_url('node_modules/') ?>popper.js/dist/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="<?php echo site_url('node_modules/') ?>bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Owl Carousel JS -->
	<script src="<?php echo site_url('assets/lib/owl-carousel/') ?>js/owl.carousel.min.js"></script>

    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/daterangepicker.css">

    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap-datepicker.min.css">
	<!-- Main Js -->
	<script src="<?php echo site_url('assets/js/') ?>main.js"></script>
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.validate.min.js"></script>
	<!-- Easing JS -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.easing.1.3.js"></script>

	<!-- Waypoint Js -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.waypoints.min.js"></script>
	<script src="<?php echo site_url('assets/js/jquery.rateit.js') ?>"></script>

	<!--Favicon-->
	<link rel="shortcut icon" type="image/png" href="<?php echo site_url('assets/img/favicon.png') ?>"/>


</head>

<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0&appId=139238366917004&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<input type="hidden" name="language" id="language" value="vi">

	<header class="">
		<nav class="nav">
			<div class="nav-brand nav-item">
				<a href="<?php echo base_url('') ?>">
					<img src="<?php echo site_url('assets/img/logo-w.png') ?>">
				</a>
			</div>

			<div class="nav-expand nav-item d-block d-sm-none" id="nav-expand">
				<a class="btn-nav-expand" role="button" id="btn-nav-expand">
					<span class="nav-icon"></span>
				</a>
			</div>

			<div class="nav-main nav-item">
				<div class="wrapper"></div>
				<ul>
					<li>
						<a href="<?php echo base_url('about/') ?>">
							About Us <i class="fas fa-caret-down"></i>
						</a>
					</li>

					<li>
						<a href="<?php echo base_url('') ?>">
							Group Tours
						</a>
					</li>

					<li>
						<a href="<?php echo base_url('tours') ?>">
							Myanmar Tours <i class="fas fa-caret-down"></i>
						</a>
					</li>

					<li>
						<a href="<?php echo base_url('post/') ?>">
							Travel Guide <i class="fas fa-caret-down"></i>
						</a>
					</li>

					<li>
						<a href="tel:024 1234 5678" class="btn btn-primary" role="button">
							Hotline: 024 1234 5678
						</a>
					</li>

					<li>
						<a href="mailto:info@grouptourmyanmar.com" class="btn btn-primary" role="button">
							Email: info@grouptourmyanmar.com
						</a>
					</li>
				</ul>
			</div>
		</nav>
	</header>

<script>
    $("a[class='change-language']").click(function(){
        $.ajax({
            method: "GET",
            url: "http://localhost/tourist1/homepage/change_language",
            data: {
                lang: $(this).data('language')
            },
            success: function(res){
                if(res.message == 'changed'){
                    window.location.reload();
                }
            },
            error: function(){

            }
        });
    });
</script>




