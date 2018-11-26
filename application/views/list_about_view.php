<section id="list-about">
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
                            List Post Title
                        </h1>
                    </div>

                    <div class="body">
                        <div class="row">
                            <?php for($i = 0; $i < 4; $i++){ ?>
                                <div class="item col-xs-12 col-md-6">
                                    <div class="wrapper">
                                        <a href="<?php echo base_url('about/detail/') ?>" ?>
                                            <div class="mask">
                                                <img src="https://images.unsplash.com/photo-1524991825088-9607659b25a2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44574751c74ead3395fe178ca8344905&auto=format&fit=crop&w=1350&q=80" alt="image trip">
                                            </div>
                                            <div class="content">
                                                <h3 class="title-sm">
                                                    Trip Title
                                                </h3>
                                                <p class="paragraph">
                                                    <i class="fas fa-map-marker-alt"></i> Hanoi - Myanmar - Hanoi
                                                </p>
                                                <a href="<?php echo base_url('about/detail') ?>" class="btn btn-primary" role="button">
                                                    View Detail
                                                </a>
                                            </div>
                                        </a>
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