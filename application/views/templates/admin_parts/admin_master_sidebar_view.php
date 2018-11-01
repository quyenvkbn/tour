<?php
//if($this->ion_auth->logged_in()) {
//?>
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<?php echo site_url('assets/img/logo.png') ?>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p><h4><b>Mato</b> creative</h4></p>
                </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">MAIN NAVIGATION</li>
                <li class="<?php echo ($this->uri->segment(2) == '')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin') ?>">
                        <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'team' || $this->uri->segment(2) == 'testimonial' || $this->uri->segment(2) == 'about')? 'active' : 'treeview' ?>">
                    <a href="">
                        <i class="fa fa-newspaper-o"></i>
                        <span>Về Chúng Tôi</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="<?php echo ($this->uri->segment(2) == 'about')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/about') ?>"><i class="fa fa-list"></i> Danh Sách Bài Viêt Giới Thiệu</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'team')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/team') ?>"><i class="fa fa-filter"></i> Đội Ngũ Thành Viên</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'testimonial')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/testimonial') ?>"><i class="fa fa-list"></i> LỜI CHỨNG THỰC</a>
                        </li>
                    </ul>
                </li>

                <li class="<?php echo ($this->uri->segment(2) == 'post_category' || $this->uri->segment(2) == 'post')? 'active' : 'treeview' ?>">
                    <a href="">
                        <i class="fa fa-newspaper-o"></i>
                        <span>Bài Viết</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu" style="padding-left: 15px;">
                        <li class="<?php echo ($this->uri->segment(2) == 'post_category')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/post_category') ?>"><i class="fa fa-filter"></i> Danh Mục Bài Viêt</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'post')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/post') ?>"><i class="fa fa-list"></i> Danh Sách Bài Viêt</a>
                        </li>
                    </ul>
                </li>

                <li class="<?php echo ($this->uri->segment(2) == 'product_category')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/product') ?>"><i class="fa fa-list"></i> Danh sách tour</a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'product')? 'active' : 'treeview' ?>">
                    <a href="">
                        <i class="fa fa-newspaper-o"></i>
                        <span>Tour</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu" style="padding-left: 15px;">
                        <li class="<?php echo ($this->uri->segment(3) == 'single')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/product/single') ?>"><i class="fa fa-filter"></i> Danh sách tour</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(3) == 'group')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/product/group') ?>"><i class="fa fa-filter"></i> Danh sách tour group</a>
                        </li>
                    </ul>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'booking')? 'active' : 'treeview' ?>">
                    <a href="">
                        <i class="fa fa-newspaper-o"></i>
                        <span>Đặt Tour</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu" style="padding-left: 15px;">
                        <li class="<?php echo ($this->uri->segment(2) == 'booking' && ($this->uri->segment(3) == 'index' || $this->uri->segment(3) == ''))? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/booking') ?>"><i class="fa fa-filter"></i> Chờ Xử Lý</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'booking' && $this->uri->segment(3) == 'success')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/booking/success') ?>"><i class="fa fa-list"></i> Đã Hoàn Thành</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'booking' && $this->uri->segment(3) == 'cancel')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/booking/cancel') ?>"><i class="fa fa-list"></i> Đã Hủy</a>
                        </li>
                    </ul>
                </li>
                 <li class="<?php echo ($this->uri->segment(2) == 'localtion' || $this->uri->segment(2) == 'area')? 'active' : 'treeview' ?>">
                    <a href="">
                        <i class="fa fa-globe"></i>
                        <span>Địa điểm</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu" style="padding-left: 15px;">
                        <li class="<?php echo ($this->uri->segment(2) == 'area')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/area') ?>"><i class="fa fa-filter"></i> Danh mục địa điểm</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'localtion')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/localtion') ?>"><i class="fa fa-list"></i> Danh sách địa điểm</a>
                        </li>
                    </ul>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'customize')? 'active' : 'treeview' ?>">
                    <a href="">
                        <i class="fa fa-newspaper-o"></i>
                        <span>Tùy Biến Khách Hàng</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu" style="padding-left: 15px;">
                        <li class="<?php echo ($this->uri->segment(2) == 'customize' && ($this->uri->segment(3) == 'index' || $this->uri->segment(3) == ''))? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/customize') ?>"><i class="fa fa-filter"></i> Chờ Xử Lý</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'customize' && $this->uri->segment(3) == 'success')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/customize/success') ?>"><i class="fa fa-list"></i> Đã Hoàn Thành</a>
                        </li>
                        <li class="<?php echo ($this->uri->segment(2) == 'customize' && $this->uri->segment(3) == 'cancel')? 'active' : '' ?>">
                            <a href="<?php echo base_url('admin/customize/cancel') ?>"><i class="fa fa-list"></i> Đã Hủy</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
<?php //} ?>



