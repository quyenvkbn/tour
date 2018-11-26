<section id="booking">
    <div class="cover">
        <div class="mask">
            <img src="https://images.unsplash.com/photo-1441107621285-05f256b47ce5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b9231273214ff2feb3e11b517d5eb700&auto=format&fit=crop&w=1276&q=80" alt="imgae cover ">
        </div>
    </div>

    <div class="main-content">
        <div class="container">
            <div class="heading">
                <div class="line"></div>
                <h1 class="title-lg">
                    Inquire this Tour
                </h1>
            </div>

            <div class="row extra">
                <div class="left col-xs-12 col-md-4">
                    <div class="mask">
                        <img src="https://images.unsplash.com/photo-1441107621285-05f256b47ce5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b9231273214ff2feb3e11b517d5eb700&auto=format&fit=crop&w=1276&q=80" alt="image of this tour">
                    </div>
                </div>

                <div class="right col-xs-12 col-md-8">
                    <h3 class="title-sm">
                        Title of Tour
                    </h3>
                    <p class="paragraph">
                        <i class="fas fa-map-marker-alt"></i> Places of Tour
                    </p>

                    <div class="row">
                        <div class="form-group col-xs-12 col-md-6">
                            <?php
                            echo form_error('tour_departure');
                            echo form_dropdown('tour_departure', $option = array('1' => 'Select Departure Day', '2' => '05', '3' => '10'), '1', ' class="form-control" id="tour_departure" ');
                            ?>
                        </div>

                        <div class="form-group col-xs-12 col-md-6">
                            <?php
                            echo form_error('tour_quantity');
                            echo form_dropdown('tour_quantity', $option = array('1' => 'Number of People', '2' => '1', '3' => '2', '4' => '3'), '1', ' class="form-control" id="tour_quantity" ');
                            ?>
                        </div>
                    </div>

                    <div class="row">
                        <div class="item col-xs-12 col-md-6">
                            <h4 class="title-xs">
                                Extra Services
                            </h4>

                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                <label class="form-check-label" for="inlineCheckbox1">Extra Night Before</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                <label class="form-check-label" for="inlineCheckbox2">Extra Night After</label>
                            </div>
                        </div>

                        <div class="item col-xs-12 col-md-6">
                            <h4 class="title-xs">
                                Promotion Code
                            </h4>

                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">Apply</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row info">
                <div class="left col-xs-12 col-md-4">
                    <h3 class="title-sm">
                        Contact Information
                    </h3>
                </div>
                <div class="right col-xs-12 col-md-8">
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
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#thankYou">
									Modal in when submit
								</button>
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

	<div class="modal fade show" id="thankYou" tabindex="-1" role="dialog" aria-labelledby="thankYouLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<h4 class="title-xs success">
						<i class="fas fa-check"></i> Your tour inquired is successful!
					</h4>

					<h1 class="title-lg">
						Thank you
					</h1>

					<h4 class="title-xs">
						for taking this tour with us!
					</h4>
					<h4 class="title-xs">
						Hope that you will have a nice tour!
					</h4>

					<a href="<?php echo base_url('tours/') ?>" class="btn btn-primary" role="button">
						Back to our List of Tours
					</a>
				</div>
			</div>
		</div>
	</div>

</section>