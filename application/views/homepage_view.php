
<script type="text/javascript">
	function to_slug(str,space="_"){
	    str = str.toLowerCase();

	    str = str.replace(/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/g, 'a');
	    str = str.replace(/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/g, 'e');
	    str = str.replace(/(ì|í|ị|ỉ|ĩ)/g, 'i');
	    str = str.replace(/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/g, 'o');
	    str = str.replace(/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/g, 'u');
	    str = str.replace(/(ỳ|ý|ỵ|ỷ|ỹ)/g, 'y');
	    str = str.replace(/(đ|ð)/g, 'd');

	    str = str.replace(/([^0-9a-z-\s])/g, '');

	    str = str.replace(/(\s+)/g, space);

	    str = str.replace(/^-+/g, '');

	    str = str.replace(/-+$/g, '');

	    // return
	    return str;
	}    
	var list = {};
	var apiData = {};
	var i = 0;
	function temperature(id,lang){
        $.ajax({
            url: 'http://api.openweathermap.org/data/2.5/forecast?id='+id+'&mode=json&lang='+lang+'&APPID=279b4be6d54c8bf6ea9b12275a567156&cnt=3',
            type: 'GET',
            async: false,
        })
        .done(function(data) {
    		var key = to_slug(data.city.name);
            list[id] = key;
            apiData[id] = data;
            i++;
        })
        .fail(function() {
            console.log("error");
        });
    }
    temperature('1581129','<?php echo $lang;?>');
    temperature('1816670','<?php echo $lang;?>');
    temperature('1796236','<?php echo $lang;?>');
    temperature('1668341','<?php echo $lang;?>');
    temperature('1850147','<?php echo $lang;?>');
    temperature('1835848','<?php echo $lang;?>');
    temperature('4321929','<?php echo $lang;?>');
    temperature('1609350','<?php echo $lang;?>');
    temperature('1651944','<?php echo $lang;?>');
    temperature('1735161','<?php echo $lang;?>');
    temperature('1821306','<?php echo $lang;?>');
    temperature('1642911','<?php echo $lang;?>');
    temperature('1880252','<?php echo $lang;?>');
    $.ajax({
        url: '<?php echo base_url(); ?>homepage/fetch_weather_language?data=' + JSON.stringify(list),
        type: 'GET',
        success: function(response){
            var array = $.map(response.reponse, function(value, index) {
                return [value];
            });
            var count = 0;
            $.each(apiData, function(index, data){
                $('#banner-weather .line .content-weather').append('<div class="col-md-12 '+index+'" style="padding:0px; margin-bottom:10px;border-bottom:1px solid #CCC;"><div class="row"><div class="img col-md-3 col-ms-12 col-sm-12 col-xs-6" ><img src="http://openweathermap.org/img/w/'+data.list[2].weather[0].icon+'.png'+'" width="80px" alt=""></div><div class=" col-md-9 col-ms-12 col-sm-12 col-xs-6" style="padding-left:30px;"><h3 style="font-size:1em; text-transform:capitalize;font-weight:600;margin-bottom:0px;margin-top:15px;">' + array[count] + '</h3><p class="description" style="text-transform:capitalize;margin-bottom:0px;"></p><p class="nhietdo" style="margin-bottom:0px;"></p></div></div></div>');
                $("#banner-weather .line ."+index+" p.description").text(data.list[2].weather[0].description);
                $("#banner-weather .line ."+index+" p.nhietdo").text(Math.floor(data.list[2].main.temp_min/10)+'°C - '+Math.ceil(data.list[2].main.temp_max/10)+'°C');
                count++;
            })
        }
    });
</script>
<!-- Slider JS -->
<script src="<?php echo site_url('assets/js/admin/slider.js') ?>"></script>

<!-- Animate CSS -->
<link rel="stylesheet" href="<?php echo site_url('node_modules/') ?>animate.css/animate.min.css">

<section id="homepage">
	<div class="container-fluid" id="slider">
		<div id="slide" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="mask">
						<img src="https://images.unsplash.com/photo-1524991825088-9607659b25a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44574751c74ead3395fe178ca8344905&auto=format&fit=crop&w=1350&q=80" alt="First Slide">
					</div>
				</div>
				<div class="carousel-item">
					<div class="mask">
						<img src="https://images.unsplash.com/photo-1515900959941-d1cce424f5c4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c9c593bad87f0e4db0fdb8fcb965a90&auto=format&fit=crop&w=1351&q=80" alt="Second Slide">
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#slide" role="button" data-slide="prev">
				<i class="fas fa-arrow-left"></i>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#slide" role="button" data-slide="next">
				<i class="fas fa-arrow-right"></i>
				<span class="sr-only">Next</span>
			</a>

			<div class="container" id="searchbar">
				<div class="line"></div>
				<h1>
					discover yourself
					<br>wonderful myanmar
				</h1>
				<div class="search">
					<div class="heading">
						<h3>
							<i class="fas fa-search"></i> Trip Finder
						</h3>
						<div class="line">

						</div>
					</div>
					<div class="body">
						<div class="row">
							<div class="col-xs-12 col-md-4 item">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class="fas fa-map-marker-alt"></i>
										</span>
									</div>
									<input type="text" class="form-control" placeholder="Destination" aria-label="Destination" aria-describedby="basic-addon1">
								</div>
							</div>
							<div class="col-xs-12 col-md-3 item">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class="fas fa-dollar-sign"></i>
										</span>
									</div>
									<input type="text" class="form-control" placeholder="Budget" aria-label="Budget" aria-describedby="basic-addon2">
								</div>
							</div>
							<div class="col-xs-12 col-md-3 item">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class="fas fa-clock"></i>
										</span>
									</div>
									<input type="text" class="form-control" placeholder="Duration" aria-label="Duration" aria-describedby="basic-addon3">
								</div>
							</div>
							<div class="col-xs-12 col-md-2 item">
								<button class="btn btn-primary" role="button">
									Search Now
								</button>
							</div>
						</div>
					</div>

					<div class="foot">
						<p>
							or <a href="<?php echo base_url('') ?>">Customize your Trip</a>
						</p>
					</div>
				</div>
			</div>

			<div class="slider-bottom"></div>
		</div>
	</div>
	<div class="main-content">
		<div class="container-fluid" id="tours">
			<div class="container">
				<div class="description">
					<div class="row">
						<div class="left col-xs-12 col-md-6">
							<h1 class="title-lg">
								MYANMAR TOURS
							</h1>
							<p class="paragraph">
								Company is a local Vietnamese based travel company with representative Ms Katrine in Cape Town (+27 (83) 261 1693) specializing in travel packages for South African customers. We provide the best deals, small group tours and tailor made adventures in South East Asia including Vietnam, Cambodia, Laos and Myanmar.
							</p>
						</div>

						<div class="right col-xs-12 col-md-6">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/DX48mJjL7oU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
					</div>
				</div>

				<div class="list-tours">
					<div class="row">
						<div class="item col-xs-12 col-md-6 special">
							<div class="mask">
								<a href="<?php echo base_url('') ?>">
									<img src="https://images.unsplash.com/photo-1524991825088-9607659b25a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44574751c74ead3395fe178ca8344905&auto=format&fit=crop&w=1350&q=80" alt="">

									<div class="content">
										<h2 class="title-md">
											Sunshine Myanmar
										</h2>
										<p class="paragraph">
											<i class="fas fa-map-marker-alt"></i> Hanoi - Myanmar - Hanoi
										</p>
									</div>

									<div class="badge seller">
										<img src="<?php echo site_url('assets/img/badge-best-seller.png') ?>" alt="badge best seller">
									</div>

									<div class="badge saleoff">
										<span class="number">99%</span>
										<br>
										<span class="text">off</span>
									</div>

									<div class="info">
										<div class="duration">
											<div class="d-flex flex-column">
												<span class="number">05</span>
												<span class="text">days</span>
											</div>
										</div>
										<div class="price">
											<div class="left">
												From
											</div>
											<div class="right">
												<span class="price-off">
													<del>999.999.999 vnd</del>
												</span>
												<span class="price">999.999.999 vnd</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="item col-xs-12 col-md-3">
							<div class="mask">
								<a href="<?php echo base_url('') ?>">
									<img src="https://images.unsplash.com/photo-1524991825088-9607659b25a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44574751c74ead3395fe178ca8344905&auto=format&fit=crop&w=1350&q=80" alt="">

									<div class="content">
										<h2 class="title-md">
											Sunshine Myanmar
										</h2>
										<p class="paragraph">
											<i class="fas fa-map-marker-alt"></i> Hanoi - Myanmar - Hanoi
										</p>
									</div>

									<div class="badge saleoff">
										<span class="number">99%</span>
										<br>
										<span class="text">off</span>
									</div>

									<div class="info">
										<div class="duration">
											<div class="d-flex flex-column">
												<span class="number">05</span>
												<span class="text">days</span>
											</div>
										</div>
										<div class="price">
											<div class="left">
												From
											</div>
											<div class="right">
											<span class="price-off">
												<del>999.999.999 vnd</del>
											</span>
												<span class="price">999.999.999 vnd</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="row foot">
						<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
							Load all Tours
						</a>
					</div>
				</div>
			</div>
		</div>


		<div class="container" id="reviews">
			<div class="heading">
				<h1 class="title-lg">
					Customer Reviews
				</h1>
				<p class="paragraph">
					Based on 14 reviews
				</p>
			</div>

			<div class="reviews">
				<div class="owl-carousel" id="reviews-slider">
					<?php for ($i = 0; $i < 14; $i++ ){ ?>
						<div class="item">
							<div class="row">
								<div class="left col">
									<div class="mask">
										<img src="https://images.unsplash.com/photo-1540939831376-ad645b4de0c8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4cb3d9e2c3da430002f92593cdaa604e&auto=format&fit=crop&w=1350&q=80" alt="">
									</div>
								</div>
								<div class="right col">
									<h4 class="title-xs">
										Name of Customer <span class="badge"><i class="fas fa-check"></i> Verified</span>
									</h4>
									<p class="paragraph">Location of Residence</p>

									<h3 class="title-sm text-wrapper">
										Duis ac nunc id diam faucibus varius ut sit amet sapien. Sed vitae maximus orci. Proin at semper massa. Nam ac euismod velit, ac euismod tortor
									</h3>
									<div class="info">
										<ul class="rating">
											<li><i class="fas fa-star"></i></li>
											<li><i class="fas fa-star"></i></li>
											<li><i class="fas fa-star"></i></li>
											<li><i class="fas fa-star"></i></li>
											<li><i class="fas fa-star"></i></li>
										</ul>
										<p>
											Date 18-02-2018
										</p>
									</div>

									<p class="paragraph text-wrapper">
										We are now all back in South Africa and already hard at work. Visiting your beautiful country and learning more about the culture, enjoying the food and cruising Ha Long Bay will be the highlight of many of our people’s lives…
									</p>
								</div>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>

		<div class="container-fluid" id="review-link">
			<h4 class="title-xs">
				Recommended on <a href="" target="_blank">THE TRAVEL MANUEL</a>
			</h4>
		</div>

		<div class="container" id="whyus">
			<div class="heading">
				<h1 class="title-lg">
					WHY BOOKING WITH US?
				</h1>
			</div>
			<div class="body">
				<div class="row">
					<?php for($i = 0; $i < 6; $i++){ ?>
						<div class="item col-xs-12 col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.<?php echo $i ?>s">
							<div class="icon">
								<i class="fas fa-plane"></i>
							</div>

							<div class="text">
								Booking directly with a local agent means you Save More
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- WOW JS -->
<script src="<?php echo site_url('node_modules/') ?>wow.js/dist/wow.min.js"></script>
<script>
    $(document).ready(function(){
        $("#reviews-slider").owlCarousel({
			items: 1,
			loop: true,
			dots: true
		});

        new WOW().init();
    });
</script>

