<link rel="stylesheet" href="<?php echo site_url('assets/sass/admin/') ?>detail.css">
<style type="text/css">
    
    .label-date{
        position: absolute;
        top: -28px;
        background: white;
        right: 20px;
    }
    .label-area{
        position: absolute;
        top: -28px;
        background: white;
        left: 15px;
    }
    #area .input-area{
         padding-left: 0px;
    }
    #area .span-area{
         padding-right: 0px;
    }
    .form-horizontal .control-label{
        text-align: left;
    }
    @media (max-width: 768px) {

        .label-date, .label-area{
            top: -20px;
        }
        .form-horizontal .control-label{
            text-align: left;
        }
    }
</style>
<div class="content-wrapper">
    <input type="text" value='<?php echo (!empty($detail['avaliability'])) ? json_encode($detail['date_content']) : json_encode(array()); ?>' placeholder="" class="form-control hidden" id="datetime_content">
    <div id="encypted_ppbtn_all"></div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Tour
            </small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php
                echo form_open_multipart('', array('class' => 'form-horizontal','id' => 'register-form'));
                ?>
                <ul class="nav nav-tabs" role="tablist"></ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                        <div class="box box-default">
                            <div class="box-body">
                                <div class="col-xs-12">
                                    <h4 class="box-title">Basic Information</h4>
                                </div>
                                <div class="row">
                                    <span><?php echo $this->session->flashdata('message'); ?></span>
                                </div>
                                <div class="col-xs-12">
                                    <label for="image_shared">Hình ảnh avatar đang dùng</label>
                                    </br>
                                    <div class="col-sm-4" style="padding-left: 0px;">
                                        <?php if(!empty($detail['imglocaltion'])): ?>
                                            <img src="<?php echo base_url('assets/upload/'. $controller .'/'. $detail['slug'] .'/'. $detail['imglocaltion']); ?>" style="width: 100%;">
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <?php
                                    echo form_label('Hình ảnh avatar', 'image_localtion');
                                    echo form_error('image_localtion');
                                    echo form_upload('image_localtion', set_value('image_localtion'), 'class="form-control" id="image_localtion"');
                                    ?>
                                </div>
                                <div class="col-xs-12">
                                    <label for="image_shared">Hình ảnh đang có</label>
                                    </br>
                                    <?php if(!empty($detail['image'])): ?>
                                        <?php foreach ($detail['image'] as $key => $value): ?>
                                            <div class="col-sm-4" style="padding-left: 0px;margin-bottom: 5px;">
                                                <img src="<?php echo base_url('assets/upload/'. $controller .'/'. $detail['slug'] .'/'. $value); ?>" style="width: 100%;">
                                            </div>
                                        <?php endforeach ?>
                                    <?php endif; ?>
                                </div>
                                <div class="col-xs-12">
                                    <?php
                                    echo form_label('Hình ảnh', 'image_shared');
                                    echo form_error('image_shared');
                                    echo form_upload('image_shared[]', set_value('image_shared'), 'class="form-control" id="image_shared" multiple');
                                    ?>
                                </div>
                                 <div class="col-xs-12">
                                    <?php
                                    echo form_label('Giá tour', 'price');
                                    echo form_error('price');
                                    echo form_input('price', $detail['price'], 'class="form-control" id="price" placeholder ="Đơn vị tiền: R" onkeypress=" return isNumberKey(event)"');
                                    ?>
                                </div>
                                <div class="col-xs-12">
                                    <div class="checkbox" style="padding-top: 10px;">
                                        <label style="padding-right: 10px;">
                                            <input type="checkbox" id="promotion" name="promotion" <?php echo (!empty(trim($detail['pricepromotion'])) || !empty(trim($detail['percen'])))?'checked':''; ?>> Khuyến mãi
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xs-12" id="box-promotion">
                                    <div class="col-xs-12" style="border:1px solid #d2d6de;">
                                    <?php
                                    echo form_label('Giảm giá', 'percen');
                                    echo form_error('percen');
                                    echo form_input('percen', trim($detail['percen']), 'class="form-control" id="percen" placeholder ="Đơn vị : Phần trăm (%)" onkeypress=" return isNumberKey(event)"');
                                    ?>
                                    <?php
                                    echo form_label('Giá tour sau khi giảm giá', 'pricepromotion');
                                    echo form_error('pricepromotion');
                                    echo form_input('pricepromotion', trim($detail['pricepromotion']), 'class="form-control" id="pricepromotion" placeholder ="Đơn vị tiền: VNĐ" onkeypress=" return isNumberKey(event)"');
                                    ?>
                                    <div class="checkbox">
                                        <label style="padding-right: 10px;padding-bottom: 10px;">
                                            <input type="checkbox" id="showpromotion" name="showpromotion" <?php echo (!empty(trim($detail['showpromotion'])))?'checked':''; ?>> Hiển thị khuyến mãi
                                        </label>
                                    </div>
                                    </div>
                                </div>
                                <?php if ($detail['type'] == '2'): ?>
                                    <div class="col-xs-12">
                                        <label>Date:</label>
                                        <div class="input-group date">
                                          <div class="input-group-addon" title="Xóa giá trị ngày tháng">
                                            <i class="fa fa-calendar"></i>
                                          </div>
                                          <input type="text" name="date" value ="<?php echo $detail['date']; ?>" class="form-control pull-right" id="datepicker" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-12" id="show-price" style="display: none;">
                                        <label class="control-label col-xs-12" style="padding: 0px;">Nhập chi tiết cho từng ngày xuất phát</label>
                                        <?php foreach ($detail['avaliability'] as $key => $value): ?>
                                            <div class="col-xs-12" style="border:1px solid gray;margin:10px 0px;">
                                                <label class="control-label label-date" style="margin-bottom:-10px;"><?php echo $detail['date_content'][$key];?></label>
                                                <label class="control-label">Price/Pax</label>
                                                <input name="pricedate[]" value="<?php echo $detail['pricedate'][$key];?>" class="price form-control">
                                                <label class="control-label">Avaliability</label>
                                                <input name="avaliability[]" value="<?php echo $detail['avaliability'][$key];?>" class="avaliability form-control">
                                                <label class="control-label">Single Supplement</label>
                                                <input name="single_supplement[]" value="<?php echo $detail['single_supplement'][$key];?>" class="single_supplement form-control" style="margin-bottom:15px;">
                                                <input type="hidden" name="date_content[]" value="<?php echo $detail['date_content'][$key];?>">
                                            </div>
                                        <?php endforeach ?>
                                    </div>
                                <?php else:?>
                                    <div class="col-xs-12" style="margin-top: 10px;">
                                        <ul class="nav nav-pills nav-justified" role="tablist">
                                            <li role="presentation" class="active">
                                                <a href="#one" aria-controls="one" role="tab" data-toggle="tab">
                                                    <span class="badge">1</span> Nhiều người
                                                </a>
                                            </li>
                                            <li role="presentation" class="">
                                                <a href="#two" aria-controls="two" role="tab" data-toggle="tab">
                                                    <span class="badge">2</span> Đơn lẻ
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="one">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại BUDGET</label>
                                                <input name="pricebudget[]" value="<?php echo $detail['pricesingle'][0]['budget']; ?>" class="pricebudget form-control">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại 3 - STAR</label>
                                                <input name="pricestar3[]" value="<?php echo $detail['pricesingle'][0]['star3']; ?>" class="pricestar3 form-control">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại 4 - STAR</label>
                                                <input name="pricestar4[]" value="<?php echo $detail['pricesingle'][0]['star4']; ?>" class="pricestar4 form-control">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại 5 - STAR</label>
                                                <input name="pricestar5[]" value="<?php echo $detail['pricesingle'][0]['star5']; ?>" class="pricestar5 form-control" >
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="two">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại BUDGET</label>
                                                <input name="pricebudget[]" value="<?php echo $detail['pricesingle'][1]['budget']; ?>" class="pricebudget form-control">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại 3 - STAR</label>
                                                <input name="pricestar3[]" value="<?php echo $detail['pricesingle'][1]['star3']; ?>" class="pricestar3 form-control">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại 4 - STAR</label>
                                                <input name="pricestar4[]" value="<?php echo $detail['pricesingle'][1]['star4']; ?>" class="pricestar4 form-control">
                                                <label class="control-label">Giá tour khi sử dụng Hotel loại 5 - STAR</label>
                                                <input name="pricestar5[]" value="<?php echo $detail['pricesingle'][1]['star5']; ?>" class="pricestar5 form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12" id="area">
                                        <label class="control-label">Nhập số khu vực sử dụng khách sạn</label>
                                        <div class="col-md-10 col-sm-9 col-xs-7 input-area" style="margin-top:5px;margin-bottom: 10px;">
                                            <div class="col-xs-12" style="padding: 0px">
                                                <?php  
                                                    echo form_input("number", (count($detail['hotelsingle']) == 0)? '' : count($detail['hotelsingle']), 'class="form-control" onkeypress=" return isNumberKey(event)" id="numberarea"');
                                                ?>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-3 col-xs-5 span-area" style="margin-top:5px;margin-bottom: 10px;">
                                            <span class="btn btn-primary form-control append-date" id="button-numberarea" onclick="addhotel(Number(document.getElementById('numberarea').value))">Xác nhận</span>
                                        </div>
                                        <div id="content-full-hotel">
                                            <?php foreach ($detail['hotelsingle'] as $key => $value): ?>
                                                <div class="col-xs-12" style="border:1px solid gray;margin:10px 0px;">
                                                    <label class="control-label label-area" style="margin-bottom:-10px;">Khu vực <?php echo $key+1;?></label>
                                                    <label class="control-label">Tên khu vực thuê Hotel</label>
                                                    <input name="hoteltitle[]" value="<?php echo $value['title'] ?>" class="hoteltitle form-control">

                                                    <label class="control-label">Tên Hotel loại BUDGET</label>
                                                    <input name="budget[]" value="<?php echo $value['budget'] ?>" class="budget form-control">
                                                    <label class="control-label">Tên Hotel loại 3 - STAR</label>
                                                    <input name="star3[]" value="<?php echo $value['star3'] ?>" class="star3 form-control">
                                                    <label class="control-label">Tên Hotel loại 4 - STAR</label>
                                                    <input name="star4[]" value="<?php echo $value['star4'] ?>" class="star4 form-control">
                                                    <label class="control-label">Tên Hotel loại 5 - STAR</label>
                                                    <input name="star5[]" value="<?php echo $value['star5'] ?>" class="star5 form-control" style="margin-bottom:15px;">
                                                    <i style="position:absolute;top:0px;right:10px;cursor:pointer" class="fa-2x fa fa-close remove" onclick="remove_hotel(<?php echo $key+1;?>,this)"></i>
                                                </div>
                                            <?php endforeach ?>
                                        </div>

                                        <div class="col-xs-12" style="padding: 0px;">
                                            <i class="fa-2x fa fa-plus-square" id="addpend-one-hotel" onclick="addOnehotel()" style="float: right;cursor: pointer;"></i>
                                        </div>
                                    </div>
                                <?php endif ?>
                                <div class="col-xs-12">
                                    <?php echo form_label('Chọn khu vực', ''); ?>
                                    <select class="form-control select2 select2-hidden-accessible" name="parengoplace_9999[]"  multiple="" data-idlocaltion="9999" style="width: 100%;" data-placeholder="Select a State"  tabindex="-1" aria-hidden="true"  id="paren-go-place">
                                        <?php foreach ($area_selected as $key => $value): ?>
                                            <option <?php 
                                                    foreach($detail['librarylocaltion'] as $k => $val){
                                                        if($value['id'] == $val){
                                                            echo ' selected ';
                                                        }
                                                    }
                                                ?> value="<?php echo $value['id']; ?>"><?php echo $value['vi']; ?>
                                            </option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                                <div class="col-xs-12">
                                    <?php
                                        echo form_label('Vị trí đến', 'localtion');
                                        echo form_error('localtion');
                                        echo form_input('localtion', trim($detail['localtion']), 'class="form-control" id="localtion" placeholder ="VD:Hanoi, Halong Bay, Hue, Hoian, Saigon, Cu Chi"');
                                    ?>
                                </div>
                                <div class="col-xs-12">
                                    <?php echo form_label('Danh mục cha', 'parent_id_shared'); ?>
                                    <select name="parent_id_shared" id="parent_id_shared" class="form-control" style="margin-top: 0px">
                                        <option selected="" value="">Chọn danh mục</option>
                                        <?php echo $product_category; ?>
                                    </select>
                                </div>
                                <div class="col-xs-12">
                                    <?php
                                        echo form_label('Tiêu đề', 'title');
                                        echo form_error('title');
                                        echo form_input('title', trim($detail['title']), 'class="form-control" id="title"');
                                    
                                        echo form_label('Slug', 'slug');
                                        echo form_error('slug');
                                        echo form_input('slug', $detail['slug'], 'class="form-control" id="slug" readonly');
                                    ?>
                                    <div class="hidden">
                                        <?php
                                            echo form_label('Mô tả', 'description');
                                            echo form_error('description');
                                            echo form_textarea('description', set_value('description', '', false), 'class="form-control" rows="5" id="description" ');
                                            echo form_label('Nội dung', 'content');
                                            echo form_error('content');
                                            echo form_textarea('content', set_value('content', '', false), 'class="tinymce-area form-control" rows="5" ');
                                        ?>
                                    </div>
                                    <?php
                                        echo form_label('Từ khóa meta', 'metakeywords');
                                        echo form_error('metakeywords');
                                        echo form_input('metakeywords', trim($detail['metakeywords']), 'class="form-control" id="metakeywords" ');
                                        echo form_label('Mô tả meta', 'metadescription');
                                        echo form_error('metadescription');
                                        echo form_input('metadescription', trim($detail['metadescription']), 'class="form-control" id="metadescription" ');
                                        echo form_label('Ghi chú', 'tripnodes');
                                        echo form_error('tripnodes');
                                        echo form_textarea('tripnodes', trim($detail['tripnodes']), 'class="tinymce-area form-control" rows="5" ');
                                        echo form_label('Bao gồm', 'inclusions');
                                        echo form_error('inclusions');
                                        echo form_textarea('inclusions', trim($detail['inclusions']), 'class="tinymce-area form-control" rows="5" ');
                                        echo form_label('Loại trừ', 'exclusions');
                                        echo form_error('exclusions');
                                        echo form_textarea('exclusions', trim($detail['exclusions']), 'class="tinymce-area form-control" rows="5" ');
                                    ?>
                                </div>
                                <div class="hidden">
                                    <?php
                                        echo form_label('Chi tiết giá', 'detailsprice');
                                        echo form_error('detailsprice');
                                        echo form_textarea('detailsprice', set_value('detailsprice', '', false), 'class="tinymce-area form-control" rows="5" ');
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="add-date">
                        <div class="box box-default">
                            <div class="box-body">
                                <div class="col-xs-12">
                                    <h4 class="box-title">Thông tin cơ bản</h4>
                                </div>
                                <div class="row">
                                    <span><?php echo $this->session->flashdata('message'); ?></span>
                                </div>
                                <div class="col-md-12" style="padding: 0px;margin-bottom: 10px;">
                                    <label class="col-md-12" for="">
                                            Nhập số ngày Tour
                                    </label>
                                    <div class="col-md-10" style="margin-top:5px;">
                                        <div class="col-xs-12" style="padding: 0px">
                                            <?php  
                                                echo form_input("number", (int)count($detail['datetitle']), 'class="form-control" onkeypress=" return isNumberKey(event)" id="numberdate"');
                                            ?>
                                        </div>
                                    </div>
                                    <div class="col-md-2" style="margin-top:5px;">
                                        <span class="btn btn-primary form-control append-date" id="button-numberdate">Xác nhận</span>
                                    </div>
                                </div>
                                <div class="col-md-12" id="content-full-date">
                                    <?php for ($i=0; $i < count($detail['datecontent']); $i++): ?>
                                        <div class="vi">
                                            <div role="tabpanel" class="tab-pane active" id="<?php echo $i; ?>">
                                                <div class="title-content-date showdate <?php echo $i; ?>">
                                                    <div class="btn btn-primary col-xs-12 btn-margin" type="button" data-toggle="collapse" href="#showdatecontent_<?php echo $i; ?>" aria-expanded="true" aria-controls="messageContent" style="padding:10px 0px;margin-bottom:3px;">
                                                        <div class="col-xs-11">Nội dung Đầy đủ Ngày <?php echo $i+1; ?></div>
                                                        <?php echo ((count($detail['datecontent']) -1) > 0 && $i == (count($detail['datecontent']) -1))?"<span class='col-xs-1 remove' style='float:right;padding:0px;z-index:9999;' onclick='removeDate();'><i class='glyphicon glyphicon-remove'></i></span>":""; ?>
                                                    </div>
                                                    <div class="no_border">
                                                        <div class="collapse in" id="showdatecontent_<?php echo $i; ?>">
                                                            <div class="col-xs-12 title-content-date date " style="margin-top:-5px;">
                                                            <?php
                                                                echo form_label('Tiêu đề ngày '.($i+1), 'title_date_'.$i,'class="title_date"   id="label_title_date_'.$i.'" ');
                                                                echo form_error('title_date_'.$i);
                                                                echo form_input('title_date_'.$i,$detail['datetitle'][$i], 'class="form-control" id="title_date_'.$i.'"');
                                                                echo form_label('Nội dung ngày '.($i+1),'content_date_'.$i,'class="content_date"  id="label_content_date_'.$i.'" ');
                                                                echo form_error('content_date_'.$i);
                                                                echo form_textarea('content_date_'.$i,$detail['datecontent'][$i], 'class="tinymce-area form-control" id="content_date_'.$i.'" rows="3"');

                                                            ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endfor; ?>
                                </div>
                                <div class="col-md-12 tab-content">
                                    <span class="append-date" id="append-date"><i class="fa-2x fa fa-plus-square"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                <div class="box box-default">
                    <div class="box-body">
                        <div class="col-xs-12">
                            <ul class="nav nav-tabs" role="tablist" id="nav-product">
                                <a class="btn btn-primary" id="go-back" onclick="history.back(-1);" >Go back</a>
                                <li role="presentation" id="content-home"><button href="#home" class="btn btn-primary" aria-controls="home" role="tab" data-toggle="tab">Tour</button></li>
                                <li role="presentation" id="add-date"><button href="#add-date" class="btn btn-primary" aria-controls="add-date" role="tab" data-toggle="tab">Tour date</button></li>
                                <input type="button" name="submit_shared" id="submit-shared" value="OK" class="btn btn-primary">
                            </ul>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </section>
    </div>
<script type="text/javascript" src="<?php echo base_url('assets/js/');?>jquery.validate.js"></script>
<script src="<?php echo base_url('assets/js/admin/');?>admin.js" type="text/javascript" charset="utf-8" async defer></script>
<script type="text/javascript">
    $(".collapse").css("height","0px");
    numberdate = $(".title-content-date.showdate.vi .title-content-date.date.vi").length;
    if(numberdate>=2){
        $($(".title-content-date.date.vi .title_date")[numberdate-1]).before("<span class='remove' onclick='removeDate();'><i class='glyphicon glyphicon-remove'></i></span>");
        $($(".title-content-date.date.en .title_date")[numberdate-1]).before("<span class='remove' onclick='removeDate();'><i class='glyphicon glyphicon-remove'></i></span>");
    }
    function isNumberKey(evt)
    {
       var charCode = (evt.which) ? evt.which : event.keyCode;
       if(charCode == 59 || charCode == 46)
        return true;
       if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;
       return true;
    }
</script>
<script>
    if(document.querySelectorAll('.avaliability').length){
        document.getElementById('show-price').style.display = 'block';
    }
  function getArrayDiff(a, b) {
      var ret = [],
          merged = [];

      merged = a.concat(b);

      for (var i = 0; i < merged.length; i++) {
        if (merged.indexOf(merged[i]) ==
            merged.lastIndexOf(merged[i])) {
          ret.push(merged[i]);
        }
      }

      return ret;
    }
  $(function () {
    //Date picker
    $('#datepicker').datepicker({
      format: 'dd/mm/yyyy',
      multidate:true
    })
  })
  var arr_date = JSON.parse(document.getElementById('datetime_content').value);
  $(document).off('change','#datepicker').on('change','#datepicker',function(){
    var function_arr_date = [];
    var money = (document.getElementById('pricepromotion').value == '') ? document.getElementById('price').value : document.getElementById('pricepromotion').value;
    if($('#datepicker').val() != ''){
        document.getElementById('show-price').style.display = 'block';
        var function_arr_date = $('#datepicker').val().split(",");
    }else{
        document.getElementById('show-price').style.display = 'none';
    }
    if(arr_date.length < function_arr_date.length){
        var array_new = getArrayDiff(arr_date,function_arr_date);
        html = `
            <div class="col-xs-12" style="border:1px solid gray;margin:10px 0px;">
                <label class="control-label label-date" style="margin-bottom:-10px;">${array_new[0]}</label>
                <label class="control-label">Price/Pax</label>
                <input name="pricedate[]" value="${money}" class="price form-control">
                <label class="control-label">Avaliability</label>
                <input name="avaliability[]" class="avaliability form-control">
                <label class="control-label">Single Supplement</label>
                <input name="single_supplement[]" class="single_supplement form-control" style="margin-bottom:15px;">
                <input type="hidden" name="date_content[]" value="${array_new[0]}">
            </div>
        `;
        document.getElementById('show-price').insertAdjacentHTML('beforeend', html);
    }else{
        var array_new = getArrayDiff(arr_date,function_arr_date);
        document.querySelector(`#show-price`).removeChild(document.querySelector(`input[value="${array_new[0]}"]`).parentElement);
    }
    arr_date = function_arr_date;
  });
</script>

