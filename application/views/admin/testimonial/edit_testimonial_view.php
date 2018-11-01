<style type="text/css">
    .rating {
        font-family: 'FontAwesome', 'Second Font name'
    }

    img {
        border-radius: 2px;
        cursor: pointer;
        transition: 0.3s;
        animation-name: zoom;
        animation-duration: 0.6s;
    }
    img:hover {opacity: 0.7;}
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.9); /* Black w/ opacity */

        transition: 0.3s;
    }

    /* Modal Content (Image) */
    .modal-content {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
    }

    @keyframes zoom {
        from {transform:scale(0)} 
        to {transform:scale(1)}
    }

    /* 100% Image Width on Smaller Screens */
    @media only screen and (max-width: 700px){
        .modal-content {
            width: 100%;
        }
    }
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập Nhật
            <small>
                Lời Chứng Thực
            </small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-default">
                    <div class="box-body">
                        <?php
                        echo form_open_multipart('', array('class' => 'form-horizontal'));
                        ?>
                        <div class="col-xs-12">
                            <h4 class="box-title">Thông tin cơ bản</h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Ảnh đại diện đang dùng</label>
                            <br>
                            <img src="<?php echo base_url('assets/upload/'. $controller .'/'. $detail['slug'] .'/'. $detail['avatar']); ?>" width=250px>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Ảnh đại diện', 'avatar');
                            echo form_error('avatar');
                            echo form_upload('avatar', set_value('avatar'), 'class="form-control"');
                            ?>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                    echo form_label('Họ tên', 'name');
                                    echo form_error('name');
                                    echo form_input('name', $detail['name'], 'class="form-control"');
                                ?>
                            </div>
                        </div>

                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                    echo form_label('Quốc gia', 'country');
                                    echo form_error('country');
                                    echo form_input('country', $detail['country'], 'class="form-control"');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Tiêu đề', 'title');
                                echo form_error('title');
                                echo form_input('title', $detail['title'], 'class="form-control"');
                                ?>
                            </div>
                        </div>
                        
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Danh giá', 'rating');
                                echo form_error('rating');
                                ?>
                                <select name="rating" class="form-control rating">
                                    <option value="">Chọn đánh giá</option>
                                    <option value="1" <?php echo ($detail['rating'] == 1) ? 'selected' : '' ?> >&#xf005;</option>
                                    <option value="2" <?php echo ($detail['rating'] == 2) ? 'selected' : '' ?> >&#xf005;&#xf005;</option>
                                    <option value="3" <?php echo ($detail['rating'] == 3) ? 'selected' : '' ?> >&#xf005;&#xf005;&#xf005;</option>
                                    <option value="4" <?php echo ($detail['rating'] == 4) ? 'selected' : '' ?> >&#xf005;&#xf005;&#xf005;&#xf005;</option>
                                    <option value="5" <?php echo ($detail['rating'] == 5) ? 'selected' : '' ?> >&#xf005;&#xf005;&#xf005;&#xf005;&#xf005;</option>
                                </select>
                            </div>
                        </div>
                        

                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh đang dùng</label>
                            <br>
                            <div class="detail-image col-xs-12">
                                <!-- <input type="hidden" name="csrf_honghanh_token" value="<?php echo $this->security->get_csrf_hash(); ?>"> -->
                                <?php if (!empty($detail['image'])): ?>
                                    <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                        <div class="col-md-2 col-xs-6 row_<?php echo $key;?>" style="position: relative;padding-right:20px;padding-left: 0px; margin-bottom: 10px;">
                                            <img src="<?php echo base_url('assets/upload/'.$controller .'/'.$detail['slug'].'/'.$value); ?>" alt="anh-mo-ta" width=100% height=350px>
                                            <i class="fa-2x fa fa-times" style="cursor: pointer; position: absolute;color:red; top:0px;right: 25px;" onclick="remove_image('<?php echo $controller;?>','<?php echo $detail["id"]; ?>','<?php echo $value; ?>','<?php echo $key ?>')"></i>
                                        </div>
                                    <?php endforeach ?>
                                <?php else: ?>
                                    Chưa có ảnh
                                <?php endif ?>
                            </div>
                            <br>
                        </div>


                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Hình ảnh', 'image');
                            echo form_error('image');
                            echo form_upload('image[]', set_value('image'), 'class="form-control" multiple');
                            ?>
                            <br>
                        </div>

                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                    echo form_label('Mô tả', 'content');
                                    echo form_error('content');
                                    echo form_textarea('content', $detail['content'], 'class="form-control" rows="5"');
                                ?>
                            </div>
                        </div>
                        <?php echo form_submit('submit', 'OK', 'class="btn btn-primary"'); ?>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>