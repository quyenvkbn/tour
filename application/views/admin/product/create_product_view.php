<style type="text/css">
    .label-date, {
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
    @media (max-width: 768px) {

        .label-date, .label-area{
            top: -20px;
        }
    }
</style>
<div class="content-wrapper" id="create-product-view">
    <div id="encypted_ppbtn_all"></div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thêm mới
            <small>
                Tour
            </small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php if ($this->session->flashdata('message_error')): ?>
                    <div class="alert alert-warning alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Alert!</h4>
                        <?php echo $this->session->flashdata('message_error'); ?>
                    </div>
                <?php endif ?>
                <?php
                    echo form_open_multipart('', array('class' => 'form-horizontal','id' => 'register-form'));
                ?>
                <ul class="nav nav-tabs" role="tablist"></ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                        <div class="box box-default">
                            <div class="box-body">
                                <div class="col-xs-12">
                                    <h4 class="box-title">Thông tin cơ bản</h4>
                                </div>
                                <div class="row">
                                    <span><?php echo $this->session->flashdata('message'); ?></span>
                                </div>
                                <img src="" alt="">
                                <div class="col-xs-12">
                                    <?php
                                    echo form_label('Hình ảnh avatar', 'image_localtion');
                                    echo form_error('image_localtion');
                                    echo form_upload('image_localtion', set_value('image_localtion'), 'class="form-control" id="image_localtion"');
                                    ?>
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
                                    echo form_input('price', "", 'class="form-control" id="price" placeholder ="Đơn vị tiền: R" onkeypress=" return isNumberKey(event)"');
                                    ?>
                                </div>
                                <div class="col-xs-12">
                                    <div class="checkbox" style="padding-top: 10px;">
                                        <label style="padding-right: 10px;">
                                            <input type="checkbox" id="promotion" name="promotion"> Khuyến mãi
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xs-12" id="box-promotion">
                                    <div class="col-xs-12" style="border:1px solid #d2d6de;">
                                    <?php
                                    echo form_label('Giảm giá', 'percen');
                                    echo form_error('percen');
                                    echo form_input('percen', "", 'class="form-control" id="percen" placeholder ="Đơn vị : Phần trăm (%)" onkeypress=" return isNumberKey(event)"');
                                    ?>
                                    <?php
                                    echo form_label('Giá tour sau khi giảm giá', 'pricepromotion');
                                    echo form_error('pricepromotion');
                                    echo form_input('pricepromotion', "", 'class="form-control" id="pricepromotion" placeholder ="Đơn vị tiền: R" onkeypress=" return isNumberKey(event)"');
                                    ?>
                                    <div class="checkbox">
                                        <label style="padding-right: 10px;padding-bottom: 10px;">
                                            <input type="checkbox" id="showpromotion" name="showpromotion"> Hiển thị khuyến mãi
                                        </label>
                                    </div>
                                    </div>
                                </div>
                                <?php $type=0;?>
                                <?php if ($type == '1'): ?>
                                    <div class="col-xs-12">
                                        <label>Date:</label>
                                        <div class="input-group date">
                                          <div class="input-group-addon" title="Xóa giá trị ngày tháng">
                                            <i class="fa fa-calendar"></i>
                                          </div>
                                          <input type="text" name="date" class="form-control pull-right" id="datepicker" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-12" id="show-price" style="display: none;">
                                        <label class="control-label">Nhập chi tiết cho từng ngày xuất phát</label>
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
                                                <label class="control-label">Giá Hotel loại BUDGET</label>
                                                <input name="priceonebudget[]" class="priceonebudget form-control">
                                                <label class="control-label">Giá Hotel loại 3 - STAR</label>
                                                <input name="priceonestar3[]" class="priceonestar3 form-control">
                                                <label class="control-label">Giá Hotel loại 4 - STAR</label>
                                                <input name="priceonestar4[]" class="priceonestar4 form-control">
                                                <label class="control-label">Giá Hotel loại 5 - STAR</label>
                                                <input name="priceonestar5[]" class="priceonestar5 form-control" >
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="two">
                                                <label class="control-label">Giá Hotel loại BUDGET</label>
                                                <input name="pricetwobudget[]" class="pricetwobudget form-control">
                                                <label class="control-label">Giá Hotel loại 3 - STAR</label>
                                                <input name="pricetwostar3[]" class="pricetwostar3 form-control">
                                                <label class="control-label">Giá Hotel loại 4 - STAR</label>
                                                <input name="pricetwostar4[]" class="pricetwostar4 form-control">
                                                <label class="control-label">Giá Hotel loại 5 - STAR</label>
                                                <input name="pricetwostar5[]" class="pricetwostar5 form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12" id="area">
                                        <label class="control-label">Nhập số khu vực sử dụng khách sạn</label>
                                        <div class="col-md-10 col-sm-9 col-xs-7 input-area" style="margin-top:5px;">
                                            <div class="col-xs-12" style="padding: 0px">
                                                <?php  
                                                    echo form_input("number", '', 'class="form-control" onkeypress=" return isNumberKey(event)" id="numberarea"');
                                                ?>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-3 col-xs-5 span-area" style="margin-top:5px;">
                                            <span class="btn btn-primary form-control append-date" id="button-numberarea" onclick="addhotel(Number(document.getElementById('numberarea').value))">Xác nhận</span>
                                        </div>
                                        <div id="content-full-hotel">
                                        </div>
                                    </div>
                                <?php endif ?>
                                <div class="col-xs-12">
                                    <?php echo form_label('Chọn khu vực', ''); ?>
                                    <select class="form-control select2 select2-hidden-accessible" name="parengoplace_9999"  multiple="" data-idlocaltion="9999" style="width: 100%;" data-placeholder="Select a State"  tabindex="-1" aria-hidden="true"  id="paren-go-place">
                                        <?php foreach ($area_selected as $key => $value): ?>
                                            <option value="<?php echo $value['id']; ?>"><?php echo $value['vi']; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                                <div class="col-xs-12">
                                    <?php
                                        echo form_label('Vị trí đến', 'localtion');
                                        echo form_error('localtion');
                                        echo form_input('localtion', "", 'class="form-control" id="localtion" placeholder ="VD:Hanoi, Halong Bay, Hue, Hoian, Saigon, Cu Chi"');
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
                                        echo form_input('title', set_value('title'), 'class="form-control" id="title"');
                                    
                                        echo form_label('Slug', 'slug_shared');
                                        echo form_error('slug_shared');
                                        echo form_input('slug_shared', set_value('slug_shared'), 'class="form-control" id="slug_shared" readonly');
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
                                        echo form_input('metakeywords', set_value('metakeywords', '', false), 'class="form-control" id="metakeywords" ');
                                        echo form_label('Mô tả meta', 'metadescription');
                                        echo form_error('metadescription');
                                        echo form_input('metadescription', set_value('metadescription', '', false), 'class="form-control" id="metadescription" ');
                                        echo form_label('Ghi chú', 'tripnodes');
                                        echo form_error('tripnodes');
                                        echo form_textarea('tripnodes', set_value('tripnodes', '', false), 'class="tinymce-area form-control" rows="5" ');
                                        echo form_label('Bao gồm', 'inclusions');
                                        echo form_error('inclusions');
                                        echo form_textarea('inclusions', set_value('inclusions', '', false), 'class="tinymce-area form-control" rows="5" ');
                                        echo form_label('Loại trừ', 'exclusions');
                                        echo form_error('exclusions');
                                        echo form_textarea('exclusions', set_value('exclusions', '', false), 'class="tinymce-area form-control" rows="5" ');
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
                                        <?php  
                                            echo form_input("number", set_value("number"), 'class="form-control" onkeypress=" return isNumberKey(event)" id="numberdate"');
                                        ?>
                                    </div>
                                    <div class="col-md-2" style="margin-top:5px;">
                                        <span class="btn btn-primary form-control append-date" id="button-numberdate">Xác nhận</span>
                                    </div>
                                </div>

                                <div class="col-md-12" id="content-full-date">
                                </div>
                                <div class="col-md-12 tab-content">
                                    <span class="append-date" id="append-date"><i class="fa-2x fa fa-plus-square"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box box-default">
                        <div class="box-body">
                            <div class="col-xs-12">
                            <ul class="nav nav-tabs" role="tablist" id="nav-product">
                                <a class="btn btn-primary" id="go-back" onclick="history.back(-1);" >Go back</a>
                                <li role="presentation" id="content-home" class="active"><button href="#home" class="btn btn-primary" aria-controls="home" role="tab" data-toggle="tab">Tour</button></li>
                                <li role="presentation" id="add-date"><button href="#add-date" class="btn btn-primary" aria-controls="add-date" role="tab" data-toggle="tab">Tour date</button></li>
                                <input type="button" name="submit_shared" id="submit-shared" value="OK" class="btn btn-primary">
                            </ul>
                            </div>
                        </div>
                    </div>
                    <div class="hidden">
                        <input type="text" name="datetitle[]" value=""/>
                        <input type="text" name="datecontent[]" value=""/>
                        <input type="file" name="dateimg[]" multiple="">
                        <input type="text" name="librarylocaltion[]">
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url('assets/js/');?>jquery.validate.js"></script>
<script src="<?php echo base_url('assets/js/admin/');?>admin.js" type="text/javascript" charset="utf-8" async defer></script>
<script type="text/javascript">
    function isNumberKey(evt)
    {
       var charCode = (evt.which) ? evt.which : event.keyCode;
       if (charCode > 31 && (charCode < 48 || charCode > 57) || charCode == 190 || charCode == 196)
          return false;
       return true;
    }
</script>
<script>
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
  var arr_date = [];
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
                <input name="price[]" value="${money}" class="price form-control">
                <label class="control-label">Avaliability</label>
                <input name="avaliability[]" class="avaliability form-control">
                <label class="control-label">Single Supplement</label>
                <input name="single_supplement[]" class="single_supplement form-control" style="margin-bottom:15px;">
                <input type="hidden" name="date-content[]" value="${array_new[0]}">
            </div>
        `;
        document.getElementById('show-price').insertAdjacentHTML('beforeend', html);
    }else{
        var array_new = getArrayDiff(arr_date,function_arr_date);
        document.querySelector(`#show-price`).removeChild(document.querySelector(`input[value="${array_new[0]}"]`).parentElement);
    }
    arr_date = function_arr_date;
  });
  function addhotel(number){
    var html ='';
    for (var i = 0; i < number; i++) {
        html += `
            <div class="col-xs-12" style="border:1px solid gray;margin:10px 0px;">
                <label class="control-label label-area" style="margin-bottom:-10px;">Khu vực ${i+1}</label>
                <label class="control-label">Tên khu vực thuê Hotel</label>
                <input name="hoteltitle[]" value="" class="hoteltitle form-control">

                <label class="control-label">Tên Hotel loại BUDGET</label>
                <input name="budget[]" class="budget form-control">
                <label class="control-label">Tên Hotel loại 3 - STAR</label>
                <input name="star3[]" class="star3 form-control">
                <label class="control-label">Tên Hotel loại 4 - STAR</label>
                <input name="star4[]" class="star4 form-control">
                <label class="control-label">Tên Hotel loại 5 - STAR</label>
                <input name="star5[]" class="star5 form-control" style="margin-bottom:15px;">
                <i style="position:absolute;top:0px;right:10px;cursor:pointer" class="fa-2x fa fa-close remove" onclick="remove_hotel(${i+1},this)"></i>
            </div>
        `;
    }
    document.getElementById('content-full-hotel').innerHTML = `${html}`;
  }
  function remove_hotel(id,ev){
    document.querySelector(`#content-full-hotel`).removeChild(ev.parentElement);
    var number = document.querySelectorAll('.hoteltitle');
    for (i = id; i <= number.length; i++) {
        number[i-1].parentElement.querySelector('.label-area').innerHTML = `Khu vực ${i}`;
        number[i-1].parentElement.querySelector('.remove').setAttribute('onclick',`remove_hotel(${i},this)`);
    }
    number_area = number.length == 0 ? '' : number.length;
    document.querySelector(`#numberarea`).value = number_area;
  }

</script>