<footer>
	<div class="container-fluid" id="advisor">
		<div class="row">
			<div class="content col-xs-12 col-md-6">
				<h3 class="title-sm">
					COULD NOT FIND A SUITABLE TRIP? LET US HELP YOU!
				</h3>
				<p class="paragraph">
					Send us your details: departure dates, trip duration, number of people traveling, your budget and any special requests and we will reply to you within 12 hours with the best tour options for you decide on.
				</p>
				<a href="" class="btn btn-primary" role="button">
					send us your request
				</a>

				<div class="background">
					<div class="mask">
						<img src="https://images.unsplash.com/photo-1540202404-b37a2124ed0d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c376c1d52466ab9d92f11d826dc3981&auto=format&fit=crop&w=1490&q=80" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="footer">
		<div class="wrapper"></div>
		<div class="container" id="addresses">
			<div class="row">
				<div class="item col">
					<h4 class="title-xs">
						Vietnam Office
					</h4>
					<ul>
						<li>
							<i class="fas fa-building"></i> Zone 3, Viet Hung, Dong Anh Town, Hanoi, Vietnam
						</li>
						<li>
							<a href="tel:95.95.414.500">
								<i class="fas fa-phone"></i> 95.95.414.500
							</a>
						</li>
						<li>
							<a href="mailto:info@grouptourmyanmar.com">
								<i class="far fa-envelope"></i> info@grouptourmyanmar.com
							</a>
						</li>
					</ul>
				</div>
				<div class="item col">
					<h4 class="title-xs">
						Myanmar Office
					</h4>
					<ul>
						<li>
							<i class="fas fa-building"></i> Zone 3, Viet Hung, Dong Anh Town, Hanoi, Vietnam
						</li>
						<li>
							<a href="tel:95.95.414.500">
								<i class="fas fa-phone"></i> 95.95.414.500
							</a>
						</li>
						<li>
							<a href="mailto:info@grouptourmyanmar.com">
								<i class="far fa-envelope"></i> info@grouptourmyanmar.com
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="container" id="featured">
			<div class="heading">
				<h4 class="title-xs">
					Featured in
				</h4>
			</div>
			<div class="body">
				<div class="owl-carousel" id="featured-slider">
					<div class="item">
						<a href="" target="_blank">
							<img src="<?php echo site_url('assets/img/getaway.png') ?>" alt="logo brand name">
						</a>
					</div>
					<div class="item">
						<a href="" target="_blank">
							<img src="<?php echo site_url('assets/img/Vacation.png') ?>" alt="logo brand name">
						</a>
					</div>
					<div class="item">
						<a href="" target="_blank">
							<img src="<?php echo site_url('assets/img/travelleisure.png') ?>" alt="logo brand name">
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="container" id="nav-bottom">
			<ul class="left item">
				<li>
					<a href="" target="_blank">
						<i class="fab fa-facebook-square"></i>
					</a>
				</li>
				<li>
					<a href="" target="_blank">
						<i class="fab fa-instagram"></i>
					</a>
				</li>
			</ul>

			<ul class="center item">
				<li>
					<a href="">
						About Us
					</a>
				</li>
				<li>
					<a href="">
						Group Tours
					</a>
				</li>
				<li>
					<a href="">
						Myanmar Tours
					</a>
				</li>
				<li>
					<a href="">
						Travel Guide
					</a>
				</li>
			</ul>

			<ul class="right item">
				<li>
					<i class="fab fa-cc-visa"></i>
				</li>
				<li>
					<i class="fab fa-cc-amex"></i>
				</li>
			</ul>
		</div>

		<div class="container" id="copyright">
			<p class="paragraph">
				© Copyright 2013. www.myanmarexcursion.com - Managed by Myanmar Private Holidays. All rights reserved.
			</p>
		</div>
	</div>
</footer>

<script>
    $(document).ready(function(){
        $("#featured-slider").owlCarousel({
			center: true,
            items: 3,
			margin: 30,
			responsiveClass: true,
			responsive: {
			    0 : {
			        items: 1
				},
				768 : {
			        items: 2
				},
				1024: {
			        items: 4
				}
			}
        });
    });
</script>

<script type="text/javascript">
	$('.menu-tabs').hover(function(){
		$('li.menu-href').removeClass('active');
		$(this).find('li.menu-href').first().addClass('active');
	});
	$('li.menu-href').hover(function(){
		$('li.menu-href').removeClass('active');
		$(this).addClass('active');
	});
</script>

<script src="<?php echo site_url('assets/lib/bootstrap/js/bootstrap-datepicker.min.js') ?>"></script>
<script src="<?php echo site_url('assets/lib/bootstrap/js/daterangepicker.js') ?>"></script>
<script src="<?php echo site_url('assets/js/') ?>main.js"></script>
<script src="<?php echo site_url('assets/js/') ?>client.js"></script>

</body>
</html>
