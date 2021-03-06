<link rel="stylesheet" href="<?php echo site_url('assets/sass/admin/') ?>detail.css">
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chi tiết
            <small>
                Danh mục tour
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> Chi tiết</a></li>
            <li class="active">
                Danh Mục
            </li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <?php if ($this->session->flashdata('message_success')): ?>
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                <?php echo $this->session->flashdata('message_success'); ?>
            </div>
        <?php endif ?>
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" id="csrf" />
            <div class="col-md-9">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Chi tiết</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <?php if (!empty($detail['image'])): ?>
                                <label class="col-xs-12" for="image_shared">Hình ảnh đang dùng</label>
                                <br>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-xs-6 row_<?php echo $key; ?>">
                                        <div  style="background-color: #363636;position: relative;margin-top: 10px;">
                                            <img src="<?php echo base_url('assets/upload/'. $controller .'/'.$detail['slug'].'/'. $value); ?> " width=100% style="padding: 13px;height: 200px;">
                                            <span class="glyphicon glyphicon-remove" style="position: absolute;right:0%;color: white; cursor: pointer;" onclick="remove_image('product_category','<?php echo $detail['id'] ?>','<?php echo $value; ?>','<?php echo $key;?>')"></span>
                                        </div>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                            <div class="detail-info col-md-12">
                                <div class="table-responsive">
                                    <label>Thông tin</label>
                                    <table class="table table-striped">
                                        <tr>
                                            <th colspan="2">Thông tin cơ bản</th>
                                        </tr>
                                        <tr>
                                            <th>Slug</th>
                                            <td><?php echo $detail['slug'] ?></td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <?php if ($detail['parent_id'] != 0): ?>
                                                    Danh Mục Cha
                                                <?php else: ?>
                                                    Danh Mục
                                                <?php endif ?>
                                            </th>
                                            <td>
                                                <?php if ($detail['parent_id'] != 0): ?>
                                                    <a href="<?php echo base_url('admin/'. $controller .'/detail/'.$detail['parent_id']) ?>" class="btn btn-block btn-primary btn-flat" ><?php echo $detail['parent_title'] ?></a>
                                                <?php else: ?>
                                                    <a href="javascript:void(0)" class="btn btn-block btn-primary" ><?php echo $detail['parent_title'] ?></a>
                                                <?php endif ?>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Trạng Thái</th>
                                            <td>
                                                <?php if ($detail['is_activated'] == 0): ?>
                                                    <span class="label label-success" onclick="deactive('product_category', <?php echo $detail['id'] ?>, 'Chăc chắn tắt danh mục(Lưu ý: Khi tắt danh mục thì tất cả danh mục con và thực đơn của danh mục cũng tắt theo)')" class="dataActionDelete" title="Tắt danh mục" style="cursor: pointer;">Đang sử dụng</span>
                                                <?php else: ?>
                                                    <span class="label label-warning" onclick="active('product_category', <?php echo $detail['id'] ?>, 'Chăc chắn bật danh mục(Lưu ý: Khi bật danh mục thì tất cả danh mục con và thực đơn của danh mục cũng bật theo)')" class="dataActionDelete" title="Bật danh mục" style="cursor: pointer;">Không sử dụng</span>
                                                <?php endif ?>
                                            </td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <table class="table table-striped">
                                    <tbody>
                                        <tr>
                                            <th style="width: 120px">Tiêu đề: </th>
                                            <td><?php echo $detail['title'] ?></td>
                                        </tr>
                                        <tr>
                                            <th style="width: 120px">Nội dung: </th>
                                            <td><?php echo $detail['content'] ?></td>
                                        </tr>
                                        <tr>
                                            <th style="width: 120px">Từ khóa Meta: </th>
                                            <td><?php echo $detail['metakeywords'] ?></td>
                                        </tr>
                                        <tr>
                                            <th style="width: 120px">Mô tả Meta: </th>
                                            <td><?php echo $detail['metadescription'] ?></td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>

                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3">
                <div class="box box-warning">
                    <div class="box-header">
                        <h3 class="box-title">Hành Động</h3>
                    </div>
                    <div class="box-body">
                        <a href="<?php echo base_url('admin/'.$controller.'/edit/'.$detail['id']) ?>" class="btn btn-warning" role="button">Chỉnh sửa</a>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    </div>
                </div>
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Danh Mục Con</h3>
                    </div>
                    <?php if ($sub_category): ?>
                        <?php foreach ($sub_category as $key => $value): ?>
                            <div class="box-body" style="height: 30px;">
                                <a href="<?php echo base_url('admin/'.$controller.'/detail/'.$value['id']) ?>" class="btn btn-block btn-social btn-dropbox" role="button" style="height: 30px;">
                                    <i class="fa fa-link" aria-hidden="true"></i>
                                    <?php echo $value['title'] ?>
                                </a>
                            </div>
                        <?php endforeach ?>
                    <?php else: ?>
                        <div class="box-body">
                            Hiện không có danh mục nhỏ
                        </div>
                    <?php endif ?>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- END ACCORDION & CAROUSEL-->
    </section>
</div>