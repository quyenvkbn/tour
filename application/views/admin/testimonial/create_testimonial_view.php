<style type="text/css">
    .rating {
        font-family: 'FontAwesome', 'Second Font name'
    }
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thêm mới
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
                                    echo form_input('name', set_value('name'), 'class="form-control"');
                                ?>
                            </div>
                        </div>

                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                    echo form_label('Quốc gia', 'country');
                                    echo form_error('country');
                                    echo form_input('country', set_value('country'), 'class="form-control"');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Tiêu đề', 'title');
                                echo form_error('title');
                                echo form_input('title', set_value('title'), 'class="form-control"');
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
                                    <option value="1">&#xf005;</option>
                                    <option value="2">&#xf005;&#xf005;</option>
                                    <option value="3">&#xf005;&#xf005;&#xf005;</option>
                                    <option value="4">&#xf005;&#xf005;&#xf005;&#xf005;</option>
                                    <option value="5">&#xf005;&#xf005;&#xf005;&#xf005;&#xf005;</option>
                                </select>
                            </div>
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
                                    echo form_textarea('content', set_value('content', '', false), 'class="form-control" rows="5"');
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