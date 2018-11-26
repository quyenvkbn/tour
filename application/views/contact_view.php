<section id="contact">
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
							Contact Us
						</h1>
					</div>

					<div class="body">
						<div class="map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.031779531226!2d105.77918241977537!3d21.042369100000005!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454c99118ed37%3A0x47ae4d512aa9200b!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTw6JuIGto4bqldSDEkGnhu4duIOG6o25oIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1541586870939" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						</div>

						<div class="form-contact">
							<div class="row">
								<div class="left col-xs-12 col-md-3">
									<h4 class="title-xs">
										Head Office
									</h4>
									<div class="line"></div>
								</div>

								<div class="right col-xs-12 col-md-9">
									<div class="company-info">
										<table class="table table-borderless">
											<tr>
												<td>
													<i class="fas fa-map-marker-alt"></i>
												</td>
												<td>
													Zone 3, Viet Hung, Dong Anh Town, Hanoi, Vietnam
												</td>
											</tr>
											<tr>
												<td>
													<i class="fas fa-phone"></i>
												</td>
												<td>
													95.95.414.500
												</td>
											</tr>
											<tr>
												<td>
													<i class="fas fa-envelope"></i>
												</td>
												<td>
													info@grouptourmyanmar.com
												</td>
											</tr>
										</table>
									</div>

                                    <?php
                                    echo form_open_multipart('', array('class' => 'form-horizontal'));
                                    ?>

									<div class="row">
										<div class="form-group col-xs-12 col-md-2">
                                            <?php
                                            //echo form_label('Họ tên (*)', 'contact_name');
                                            echo form_error('contact_title');
                                            //echo form_input('contact_title', set_value('contact_title'), 'class="form-control" id="contact_title"');
                                            echo form_dropdown('contact_title', $option = array('1' => 'Mr', '2' => 'Mrs', '3' => 'Miss'), '1', ' class="form-control" id="contact_title" ');
                                            ?>
										</div>
										<div class="form-group col-xs-12 col-md-10">
                                            <?php
                                            //echo form_label('Họ tên (*)', 'contact_name');
                                            echo form_error('contact_name');
                                            echo form_input('contact_name', set_value('contact_name'), 'class="form-control" id="contact_name" placeholder="Full Name" ');
                                            ?>
										</div>

										<div class="form-group col-xs-12 col-md-6">
                                            <?php
                                            //echo form_label('Email (*)', 'contact_mail');
                                            echo form_error('contact_mail');
                                            echo form_input('contact_mail', set_value('contact_mail'), 'class="form-control" id="contact_mail" placeholder="Email" ');
                                            ?>
										</div>
										<div class="form-group col-xs-12 col-md-6">
                                            <?php
                                            //echo form_label('Email (*)', 'contact_mail');
                                            echo form_error('contact_mail_confirm');
                                            echo form_input('contact_mail_confirm', set_value('contact_mail_confirm'), 'class="form-control" id="contact_mail_confirm" placeholder="Confirm Email" ');
                                            ?>
										</div>

										<div class="form-group col-xs-12 col-md-6">
                                            <?php
                                            //echo form_label('Số điện thoại (*)', 'contact_phone');
                                            echo form_error('contact_phone');
                                            echo form_input('contact_phone', set_value('contact_phone'), 'class="form-control" id="contact_phone" placeholder="Phone Number (optional)" ');
                                            ?>
										</div>
										<div class="form-group col-xs-12 col-md-6">
                                            <?php
                                            //echo form_label('Số điện thoại (*)', 'contact_phone');
                                            echo form_error('contact_nation');
                                            echo form_input('contact_nation', set_value('contact_nation'), 'class="form-control" id="contact_nation" placeholder="Country of Residence" ');
                                            ?>
										</div>

										<div class="form-group col-xs-12 col-md-12">
                                            <?php
                                            //echo form_label('Nội dung', 'contact_message');
                                            echo form_error('contact_message');
                                            echo form_textarea('contact_message', set_value('contact_message'), 'class="form-control" id="contact_message" placeholder="Any Special Request..." ');
                                            ?>
										</div>

										<div class="form-group col-xs-12 col-md-12">
											<div class="form-foot">
                                                <?php echo form_submit('submit', 'Submit', 'class="btn btn-primary"'); ?>

												<p class="paragraph">
													* Your personal information WILL NOT be disclosed to any third party
												</p>
											</div>
										</div>
									</div>

                                    <?php echo form_close(); ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>