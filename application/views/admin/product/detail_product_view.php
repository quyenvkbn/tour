<link rel="stylesheet" href="<?php echo site_url('assets/sass/admin/') ?>detail.css">

<style type="text/css">
    table{
        width: 100%;
        margin: 0 0 15px 0;
        background-color: transparent;
        border-spacing: 0;
        border-collapse: collapse;
            display: table;
        border-collapse: separate;
        border-spacing: 2px;
        border-color: grey;
    }
    tbody {
        display: table-row-group;
        vertical-align: middle;
        border-color: inherit;
    }
    .hotel-table tr:first-child {
        background: #aab2bd;
        color: #fff;
        text-align: center;
        font-size: 16px;
        text-transform: uppercase;
    }
    .hotel-table tr:first-child td:first-child {
        background-image: linear-gradient( to top right, #aab2bd 49%, #ededed, #aab2bd 50% );
        position: relative;
        width: 140px;
        height: 70px;
        font-size: 12px;
        text-transform: none;
    }
    .hotel-table tr td {
        padding: 9px 10px;
        border: 1px solid #ededed;
        font-size: 14px;
    }
    .hotel-table tr td {
        padding: 9px 10px;
        border: 1px solid #ededed;
        font-size: 14px;
    }
    .hotel-table tr:first-child td:first-child span:last-child {
        position: absolute;
        left: 8px;
        bottom: 10px;
    }
    .hotel-table tr:first-child td:first-child span:first-child {
        position: absolute;
        right: 5px;
        top: 4px;
    }
    .hotel-table {
        margin-bottom: 20px !important;
    }
    .hotelprice{
        text-align: center;
    }
    .country-name{
        font-weight: 600;
    }
    @media screen and (max-width: 767px){
        .table-responsive>.table>tbody>tr>td, .table-responsive>.table>tbody>tr>th, .table-responsive>.table>tfoot>tr>td, .table-responsive>.table>tfoot>tr>th, .table-responsive>.table>thead>tr>td, .table-responsive>.table>thead>tr>th {
            white-space: normal;
        }
    }
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chi tiết
            <small>
                Tour
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> Chi tiết</a></li>
            <li class="active">
                Tour
            </li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" id="csrf" />
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <ul class="nav nav-tabs" role="tablist" id="nav-product">
                            <li role="presentation" class="<?php echo ($this->uri->segment(5) == '' && !isset($_GET['active']))? 'active' : '' ?>"><a href="#tour" class="btn btn-primary" aria-controls="tour" role="tab" data-toggle="tab">Tour</a></li>
                            <li role="presentation"><a href="#date-tour" class="btn btn-primary" aria-controls="date-tour" role="tab" data-toggle="tab">Date tour</a></li>
                            <li role="presentation"><a href="#price-detail" class="btn btn-primary <?php echo ($detail['type'] == '2') ? 'hidden': ''; ?>" aria-controls="price-detail" role="tab" data-toggle="tab">Chi tiết Hotel</a></li>
                            <li role="presentation"><a href="#start-detail" class="btn btn-primary <?php echo ($detail['type'] == '1') ? 'hidden': ''; ?>" aria-controls="start-detail" role="tab" data-toggle="tab">Chi tiết Những ngày khởi hành</a></li>
                        </ul>
                    </div>
                    <!-- /.box-header -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade <?php echo ($this->uri->segment(5) == '' && !isset($_GET['active']))? 'in active' : '' ?>" id="tour">
                            <div class="box-body">
                                <div class="row">
                                    <div class="detail-info col-sm-8">
                                        <div class="table-responsive">
                                            <h3>Thông tin</h3>
                                            <table class="table table-striped">
                                                <tr>
                                                    <th style="width:150px;">Slug</th>
                                                    <td><?php echo $detail['slug'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Danh Mục</th>
                                                    <td><?php echo $detail['parent_title'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Số ngày tour</th>
                                                    <td><?php echo count($detail['datetitle']) ?></td>
                                                </tr>
                                                <!-- <tr class="<?php echo ($detail['type'] == 1)? 'hidden': '' ?>">
                                                    <th style="width:150px;">Ngày khởi hành</th>
                                                    <td>
                                                        <?php
                                                            if($detail['date'] != "0000-00-00 00:00:00" && $detail['date'] != "1970-01-01 08:00:00"){
                                                                $time = explode("-",str_replace(" 00:00:00","",$detail['date']));
                                                                if(count($time) == 3){
                                                                    echo $time[2]."/".$time[1]."/".$time[0];
                                                                }
                                                            }
                                                        ?>
                                                    </td>
                                                </tr> -->
                                                <tr>
                                                    <th style="width:150px;">Giá</th>
                                                    <td><?php echo 'R'.number_format($detail['price']); ?></td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Giám giá</th>
                                                    <td><?php echo $detail['percen'] ?>%</td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Giá sau khi giảm giá</th>
                                                    <td><?php echo 'R'.number_format(($detail['pricepromotion'] != 0)?$detail['pricepromotion']:$detail['price']); ?></td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Hiển thị khuyến mãi</th>
                                                    <td><i class="<?php echo ($detail['showpromotion'] == 1)?'glyphicon glyphicon-ok':'glyphicon glyphicon-remove'; ?>"></i></td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Những nơi đi</th>
                                                    <td><?php echo $detail['localtion'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th style="width:150px;">Khu vực</th>
                                                    <td><?php 
                                                        $rs = '';
                                                        foreach ($detail['librarylocaltion'] as $key => $value) {
                                                            $rs .= $value['vi'].", ";
                                                        }
                                                        echo substr(trim($rs), 0,strlen(trim($rs))-1);
                                                     ?></td>
                                                </tr>
                                                    <tr>
                                                        <th >Tiêu đề: </th>
                                                        <td><?php echo $detail['title'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th >Từ khóa meta: </th>
                                                        <td><?php echo $detail['metakeywords'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th >Mô tả meta: </th>
                                                        <td><?php echo $detail['metadescription'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th >Ghi chú: </th>
                                                        <td><?php echo $detail['tripnodes'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th >Bao gồm: </th>
                                                        <td><?php echo $detail['inclusions'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th >Loại trừ: </th>
                                                        <td><?php echo $detail['exclusions'] ?></td>
                                                    </tr>

                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-sm-4" style="padding: 0px 10px;">
                                        <?php if (!empty($detail['imglocaltion'])): ?>
                                            <div class="detail-image col-sm-12" style="margin-bottom: 5px;">
                                                <label>Hình ảnh avatar</label>
                                                <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="mask-sm">
                                                                <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$detail['slug'].'/'.$detail['imglocaltion']) ?>" alt="anh-cua-<?php echo $detail['slug'] ?>" style="padding: 0px;">
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                        <?php endif ?>
                                        <?php if (!empty($detail['image'])): ?>
                                            <div class="detail-image col-sm-12" style="margin-bottom: 5px;">
                                                <label>Hình ảnh của tour</label>
                                                <div class="row">
                                                    <?php foreach ($detail['image'] as $key => $value): ?>

                                                        <div class="col-sm-12 row_<?php echo $key; ?>" style="margin-top: 10px;">
                                                            <div class="mask-sm" style="position: relative;">
                                                                <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$detail['slug'].'/'.$value) ?>" alt="anh-cua-<?php echo $detail['slug'] ?>" style="padding: 0px;">
                                                                <span class="glyphicon glyphicon-remove" style="position: absolute;right:0%;color: white; cursor: pointer;" onclick="remove_image('product','<?php echo $detail['id'] ?>','<?php echo $value; ?>','<?php echo $key;?>')"></span>
                                                            </div>
                                                        </div>
                                                    <?php endforeach ?>
                                                </div>
                                            </div>
                                        <?php endif ?>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="date-tour">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <?php for ($i=0; $i < count($detail['datetitle']); $i++): ?>
                                            <div role="tabpanel" class="tab-pane active" id="<?php echo $i; ?>">
                                                <div class="title-content-date showdate <?php echo $i; ?>">
                                                    <div class="btn btn-primary col-xs-12 btn-margin collapsed" type="button" data-toggle="collapse" href="#showdatecontent_<?php echo $i; ?>" aria-expanded="false" aria-controls="messageContent" style="padding:10px 0px;margin-bottom:3px;">
                                                        <div class="col-xs-11">Nội dung Đầy đủ Ngày <?php echo $i+1; ?></div>
                                                    </div>
                                                    <div class="no_border">
                                                        <div class="collapse" id="showdatecontent_<?php echo $i; ?>">
                                                            <div class="col-xs-12 title-content-date date " style="margin-top:-5px;">
                                                                <div class="img-vehicles">
                                                                    <div class="table-responsive">
                                                                        <table class="table table-responsive">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th style="width: 150px">Tiêu đề ngày <?php echo ($i+1); ?>: </th>
                                                                                    <td><?php echo $detail['datetitle'][$i]; ?></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <th style="width: 150px">Nội dung ngày <?php echo ($i+1); ?>: </th>
                                                                                    <td><?php echo $detail['datecontent'][$i]; ?></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endfor; ?>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade <?php echo ($detail['type'] == '2') ? 'hidden': ''; ?>" id="price-detail">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="hotel-box-pc">
                                            <p class="country-name">Tên danh sách Hotel</p>
                                            <table class="hotel-table">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <span>Hotel <br> Category</span>
                                                            <span>Destination</span>
                                                        </td>
                                                        <td>Budget</td>
                                                        <td>3 - Star</td>
                                                        <td>4 - Star</td>
                                                        <td>5 - Star</td>
                                                    </tr>
                                                    <?php foreach ($detail['hotelsingle'] as $key => $value): ?>
                                                        <tr>
                                                            <td rowspan="1" class="destination-name"><?php echo $value['title'] ?></td>
                                                                <td><?php echo $value['budget'] ?></td>
                                                                <td><?php echo $value['star3'] ?></td>
                                                                <td><?php echo $value['star4'] ?></td>
                                                                <td><?php echo $value['star5'] ?></td>
                                                        </tr>
                                                    <?php endforeach ?>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="hotel-box-pc">
                                            <p class="country-name">Giá tour khi sử dụng Hotel</p>
                                            <table class="hotel-table hotelprice">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <span>Price/p</span>
                                                            <span>Hotel</span>
                                                        </td>
                                                        <td>Twin Share</td>
                                                        <td>Single Traveller</td>
                                                    </tr>
                                                    <tr>
                                                        <td rowspan="1" class="destination-name">Budget</td>
                                                            <td>R<?php echo $detail['pricesingle'][1]['budget'] ?></td>
                                                            <td>R<?php echo $detail['pricesingle'][0]['budget'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td rowspan="1" class="destination-name">3 - Star</td>
                                                            <td>R<?php echo $detail['pricesingle'][1]['star3'] ?></td>
                                                            <td>R<?php echo $detail['pricesingle'][0]['star3'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td rowspan="1" class="destination-name">4 - Star</td>
                                                            <td>R<?php echo $detail['pricesingle'][1]['star4'] ?></td>
                                                            <td>R<?php echo $detail['pricesingle'][0]['star4'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td rowspan="1" class="destination-name">5 - Star</td>
                                                            <td>R<?php echo $detail['pricesingle'][1]['star5'] ?></td>
                                                            <td>R<?php echo $detail['pricesingle'][0]['star5'] ?></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade <?php echo ($detail['type'] == '1') ? 'hidden': ''; ?>" id="start-detail">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="hotel-box-pc">
                                            <p class="country-name">Giá tour của từng ngày khởi hành</p>
                                            <table class="hotel-table hotelprice">
                                                <tbody>
                                                    <tr>
                                                        <td class="hidden">
                                                            <span>Price/p</span>
                                                            <span>Hotel</span>
                                                        </td>
                                                        <td>DATE</td>
                                                        <td>PRICE/PAX</td>
                                                        <td>AVAILABILITY</td>
                                                        <td>SINGLE SUPPLEMENT</td>
                                                    </tr>
                                                    <?php foreach ($detail['avaliability'] as $key => $value): ?>
                                                        <tr>
                                                            <td><?php echo $detail['date_content'][$key]; ?></td>
                                                            <td>R<?php echo $detail['pricedate'][$key]; ?></td>
                                                            <td><?php echo $value; ?></td>
                                                            <td>R<?php echo $detail['single_supplement'][$key]; ?></td>
                                                        </tr>
                                                    <?php endforeach ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-12">
                <div class="box box-warning">
                    <div class="box-body">
                        <button style="float: left;" class="btn btn-warning" onclick="history.back(-1);" role="button">Go back</button>
                        <a style="float: right;" href="<?php echo base_url('admin/'.$controller.'/edit/'.$detail['id']) ?>" class="btn btn-warning" role="button">Chỉnh sửa</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- END ACCORDION & CAROUSEL-->
    </section>
</div>

<script type="text/javascript">
    $('#btn-active-comment').click(function(){
        if(window.location.search != '?active=true'){
            window.location.replace(window.location.href+"?active=true");
        }
    });
</script>