

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3><?php echo $product; ?></h3>

                        <p>Số Tours</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-sort-numeric-asc"></i>
                    </div>
                    <a href="<?php echo base_url('admin/product'); ?>" class="small-box-footer">Xem danh sách <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            
            <!-- ./col -->
            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3><?php echo $post; ?></h3>

                        <p>Số bài viết</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-sort-numeric-asc"></i>
                    </div>
                    <a href="<?php echo base_url('admin/post'); ?>" class="small-box-footer">Xem danh sách <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div>
        <!-- /.row -->
        

    </section>
    <!-- /.content -->
</div>
