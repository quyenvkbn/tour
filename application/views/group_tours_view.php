<section id="group-tours">
    <div class="cover">
        <div class="mask">
            <img src="https://images.unsplash.com/photo-1441107621285-05f256b47ce5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b9231273214ff2feb3e11b517d5eb700&auto=format&fit=crop&w=1276&q=80" alt="imgae cover ">

            <div class="cover-bottom"></div>
        </div>
    </div>

	<div class="main-content">
		<div class="container">
			<div class="row">
				<div class="left col-xs-12 col-md-3">
					<div class="search-bar">
						<div class="heading">
							<h3 class="title-sm">
								<i class="fas fa-search"></i> Trip Finder
							</h3>
						</div>

						<div class="body">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
								<span class="input-group-text">
									<i class="fas fa-map-marked-alt"></i>
								</span>
								</div>
								<input type="text" class="form-control" placeholder="Destination" aria-label="Destination" aria-describedby="basic-addon1">
							</div>

							<div class="input-group mb-3">
								<div class="input-group-prepend">
								<span class="input-group-text">
									<i class="fas fa-dollar-sign"></i>
								</span>
								</div>
								<input type="text" class="form-control" placeholder="Budget" aria-label="Budget" aria-describedby="basic-addon2">
							</div>

							<div class="input-group mb-3">
								<div class="input-group-prepend">
								<span class="input-group-text">
									<i class="fas fa-clock"></i>
								</span>
								</div>
								<input type="text" class="form-control" placeholder="Duration" aria-label="Duration" aria-describedby="basic-addon3">
							</div>
						</div>

						<div class="foot">
							<button class="btn btn-primary" type="button">Search Now</button>

							<a href="<?php base_url('') ?>" class="btn btn-link">Customize your Trip</a>
						</div>
					</div>

					<div class="trip-ads">
						<div class="mask">
							<img src="https://images.unsplash.com/photo-1524991825088-9607659b25a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44574751c74ead3395fe178ca8344905&auto=format&fit=crop&w=1350&q=80" alt="best seller trip image">

							<div class="content">
								<h2 class="title-md">
									Title Name
								</h2>
								<h4 class="title-xs">
									Duration
								</h4>

								<div class="price">
									<p>From</p>
									<h3 class="title-sm">999.999.999 vnd</h3>
								</div>

								<a href="<?php base_url('tours/detail') ?>" class="btn btn-primary" role="button">
									View Detail
								</a>
							</div>

							<div class="badge seller">
								<img src="<?php echo site_url('assets/img/badge-best-seller-top-right.png') ?>" alt="badge best seller">
							</div>

							<div class="badge saleoff">
								<span class="number">99%</span>
								<br>
								<span class="text">off</span>
							</div>
						</div>
					</div>
				</div>

				<div class="right col-xs-12 col-md-9">
					<div class="heading">
						<div class="line"></div>
						<h1 class="title-lg">
							List Tour Title
						</h1>

						<p class="paragraph">
							Cras imperdiet libero eget dictum hendrerit. Mauris fermentum enim a elementum tristique. Phasellus egestas, dui eu mattis pharetra, felis magna iaculis sem, nec placerat massa augue id tellus. Fusce posuere sit amet erat a ornare. Phasellus vel consectetur est. Vivamus maximus id nisl eget convallis. Nunc pretium arcu ac arcu aliquet aliquet. Aliquam erat volutpat. Donec tempor facilisis mi, quis sollicitudin orci rhoncus quis
						</p>
					</div>

					<div class="body">
						<div class="accordion" id="toursList">
							<?php for ($i = 0; $i < 4; $i++) { ?>
								<div class="card">
									<div class="card-header" id="heading<?php echo $i ?>">
										<div class="tour-overall">
											<div class="left">
												<div class="tour-image item">
													<div class="mask">
														<img src="https://images.unsplash.com/photo-1524991825088-9607659b25a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44574751c74ead3395fe178ca8344905&auto=format&fit=crop&w=1350&q=80" alt="tour image">
													</div>
												</div>
											</div>
											<div class="right">
												<div class="tour-name item">
													<h3 class="title-sm">Name of Tour</h3>
													<p class="paragraph">
														<i class="fas fa-map-marker-alt"></i> List of Destinations
													</p>
												</div>
												<div class="tour-departure item">
													<h4 class="title-xs">20 May 2018</h4>
													<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse<?php echo $i ?>" aria-expanded="true" aria-controls="collapse<?php echo $i ?>">
														All Departure Days <i class="fas fa-caret-down"></i>
													</button>
												</div>
												<div class="tour-duration item">
													<h4 class="title-xs">05</h4>
												</div>
												<div class="tour-price item">
													<p class="paragraph">999.999.999 vnd</p>
													<h3 class="title-sm">
														999.999.999 vnd
													</h3>
												</div>
												<div class="tour-detail item">
													<a href="<?php echo base_url('tours/detail/') ?>" class="btn btn-primary" role="button">
														View Detail
													</a>
												</div>
											</div>
										</div>
									</div>

									<div id="collapse<?php echo $i ?>" class="collapse" aria-labelledby="heading<?php echo $i ?>" data-parent="#toursList">
										<div class="card-body">
											<nav>
												<div class="nav nav-tabs nav-justified" id="nav-tab" role="tablist">
													<?php for ($j = 2018; $j < 2020; $j++) { ?>
														<a class="nav-item nav-link <?php echo ($j == 2018)? 'active' : '' ?>" id="nav-<?php echo $j ?>-tab" data-toggle="tab" href="#nav-<?php echo $j ?>" role="tab" aria-controls="nav-<?php echo $j ?>" aria-selected="true">
															<?php echo $j ?>
														</a>
													<?php } ?>
												</div>
											</nav>
											<div class="tab-content" id="nav-tabContent">
                                                <?php for ($j = 2018; $j < 2020; $j++) { ?>
													<div class="tab-pane fade <?php echo ($j == 2018)? 'show active' : '' ?>" id="nav-<?php echo $j ?>" role="tabpanel" aria-labelledby="nav-<?php echo $j ?>-tab">
                                                        <div class="table-responsive">
															<table class="table table-bordered table-striped">
																<?php for ($m = 0; $m < 12; $m++) { ?>
																	<?php
																		$month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')
																	?>
																	<tr>
																		<td><?php echo $month[$m] ?></td>
																		<td>
																			<ul>
																				<li>
																					05
																				</li>
																				<li>
																					10
																				</li>
																				<li>
																					15
																				</li>
																				<li>
																					20
																				</li>
																			</ul>
																		</td>
																	</tr>
																<?php } ?>
															</table>
														</div>
													</div>
                                                <?php } ?>
											</div>
										</div>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>