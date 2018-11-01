<?php 

/**
* 
*/
class Product extends Admin_Controller{
    private $request_vehicles = array(
        'Chọn phương tiện','Không xác định','Máy bay','Tàu thủy','Tàu hỏa','Ô tô','Xe máy','Xe đạp','Đi bộ'
    );
    private $hotel = array(
        'Budget','3-Star','4-Star','5-Star'
    );
    private $author_data = array();

	function __construct(){
		parent::__construct();
		$this->load->model('product_model');
        $this->load->model('product_category_model');
        $this->load->model('area_model');
        $this->load->model('tour_date_model');
		$this->load->helper('common');
        $this->load->helper('file');
        $this->data['request_vehicles'] = $this->request_vehicles;
        $this->data['hotel'] = $this->hotel;
        $this->data['controller'] = $this->product_model->table;
		$this->author_data = handle_author_common_data();
	}

    public function index($type = ''){
        if($type == 1 || $type == 2){
            $this->data['keyword'] = '';
            $this->data['bestselling'] = '';
            $this->data['hot'] = '';
            $this->data['promotion'] = '';
            $this->data['banner'] = '';
            if($this->input->get('hot') || $this->input->get('bestselling') || $this->input->get('promotion') || $this->input->get('banner')){
                $this->data['bestselling'] = ($this->input->get('bestselling') !== null)?'1':'';
                $this->data['hot'] = ($this->input->get('hot') !== null)?'1':'';
                $this->data['promotion'] = ($this->input->get('promotion') !== null)?'1':'';
                $this->data['banner'] = ($this->input->get('banner') !== null)?'1':'';
            }
            if($this->input->get('search')){
                $this->data['keyword'] = $this->input->get('search');
            }
            $this->load->library('pagination');
            $per_page = 10;
            $total_rows  = $this->product_model->count_search($this->data['keyword'],1,$type,$this->data['promotion']);
            $config = $this->pagination_config(base_url('admin/'.$this->data['controller'].'/index'), $total_rows, $per_page, 4);
            $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
            $this->pagination->initialize($config);
            $this->data['page_links'] = $this->pagination->create_links();
            $this->data['result'] = $this->product_model->get_all_with_pagination_search('desc', $per_page, $this->data['page'], $this->data['keyword'],1,$type,$this->data['promotion']);
            foreach ($this->data['result'] as $key => $value) {
                $parent_title = $this->build_parent_title($value['product_category_id']);
                $this->data['result'][$key]['parent_title'] = $parent_title;
            }
            $this->render('admin/product/list_product_view');
        }else{
            $this->session->set_flashdata('message_error', "Lỗi xem danh sách tour");
            redirect('admin/'. $this->data['controller'].'/1', 'refresh');
        }
    }

    public function create($type = 1){
        if($type == 1 || $type == 2){
            $this->load->helper('form');
            $this->data['area_selected'] = $this->area_model->get_all_area();
            $product_category = $this->product_category_model->get_by_parent_id(null,'asc');
            $this->build_new_category($product_category,0,$this->data['product_category']);
            $this->data['type'] = $type;
            if($this->input->post()){
                if($this->check_all_file_img($_FILES) === false){
                    return false;
                }
                if($this->input->post('parent_id_shared') == '' || $this->input->post('title') == ''){
                    return $this->return_api(HTTP_NOT_FOUND,MESSAGE_CREATE_ERROR_VALIDATE);
                }
                for ($i=0; $i < count($this->input->post('datetitle')); $i++) {
                    if($this->input->post('datetitle')[$i] == ''){
                        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_CREATE_ERROR_VALIDATE);
                    }
                }
                $slug = $this->input->post('slug');
                $unique_slug = $this->product_model->build_unique_slug($slug);
                if(!file_exists("assets/upload/".$this->data['controller']."/".$unique_slug)){
                    mkdir("assets/upload/".$this->data['controller']."/".$unique_slug, 0777);
                    mkdir("assets/upload/".$this->data['controller']."/".$unique_slug.'/thumb', 0777);
                }
                if(!empty($_FILES['image_shared']['name'][0])){
                    $image = $this->upload_file('assets/upload/product/'.$unique_slug, 'image_shared', 'assets/upload/product/'.$unique_slug.'/thumb');
                }
                if(!empty($_FILES['image_localtion']['name'])){
                    $localtionimage = $this->upload_image('image_localtion', $_FILES['image_localtion']['name'], 'assets/upload/product/'.$unique_slug, 'assets/upload/product/'.$unique_slug.'/thumb');
                }
                $single = [];
                $pricesingle = [];
                if($type == 1){
                    for ($i=0; $i < count($this->input->post('hoteltitle')); $i++) { 
                        $single[$i] = [
                            'title' => $this->input->post('hoteltitle')[$i],
                            'budget' => $this->input->post('budget')[$i],
                            'star3' => $this->input->post('star3')[$i],
                            'star4' => $this->input->post('star4')[$i],
                            'star5' => $this->input->post('star5')[$i],
                        ];
                    }
                    for ($i=0; $i < 2; $i++) { 
                        $pricesingle[$i] = [
                            'budget' => $this->input->post('pricebudget')[$i],
                            'star3' => $this->input->post('pricestar3')[$i],
                            'star4' => $this->input->post('pricestar4')[$i],
                            'star5' => $this->input->post('pricestar5')[$i],
                        ];
                    }
                }
                if($type == 2){
                    $avaliability = json_encode($this->input->post('avaliability'));
                    $single_supplement = json_encode($this->input->post('single_supplement'));
                    $date_content = json_encode($this->input->post('date_content'));
                    $pricedate = json_encode($this->input->post('pricedate'));
                }
                $showpromotion = ($this->input->post('showpromotion') == 'true')? '1': '0';
                $shared_request = array(
                    'slug' => $unique_slug,
                    'title' => $this->input->post('title'),
                    'price' => $this->input->post('price'),
                    'percen' => $this->input->post('percen'),
                    'pricepromotion' => $this->input->post('pricepromotion'),
                    'showpromotion' => $showpromotion,
                    'date' => ($this->input->post('date') != null) ? $this->input->post('date') : '',
                    'librarylocaltion' => json_encode($this->input->post('parengoplace_9999')),
                    'localtion' => $this->input->post('localtion'),
                    'product_category_id' => $this->input->post('parent_id_shared'),
                    'description' => $this->input->post('description'),
                    'content' => $this->input->post('content'),
                    'metakeywords' => $this->input->post('metakeywords'),
                    'metadescription' => $this->input->post('metadescription'),
                    'tripnodes' => $this->input->post('tripnodes'),
                    'inclusions' => $this->input->post('inclusions'),
                    'exclusions' => $this->input->post('exclusions'),
                    'detailsprice' => $this->input->post('detailsprice'),
                    'datetitle' => json_encode($this->input->post('datetitle')),
                    'datecontent' => json_encode($this->input->post('datecontent')),
                    'hotelsingle' => json_encode($single),
                    'pricesingle' => json_encode($pricesingle),
                    'type' => $type
                );
                if(isset($avaliability)){
                    $shared_request['avaliability'] = $avaliability;
                    $shared_request['single_supplement'] = $single_supplement;
                    $shared_request['date_content'] = $date_content;
                    $shared_request['pricedate'] = $pricedate;
                }
                if(isset($image)){
                    $shared_request['image'] = json_encode($image);
                }
                if(isset($localtionimage)){
                    $shared_request['imglocaltion'] = $localtionimage;
                }
                $insert = $this->product_model->common_insert(array_merge($shared_request,$this->author_data));
                if($insert){
                    $reponse = array(
                        'csrf_hash' => $this->security->get_csrf_hash()
                    );
                    return $this->return_api(HTTP_SUCCESS,MESSAGE_CREATE_SUCCESS,$reponse);
                }else {
                    return $this->return_api(HTTP_NOT_FOUND,MESSAGE_CREATE_ERROR);
                }
            }
            $this->render('admin/product/create_product_view');
        }else{
            $this->session->set_flashdata('message_error', "Lỗi thêm mới");
            redirect('admin/'. $this->data['controller'].'/1', 'refresh');
        }
    }
    public function detail($id){
        if($id &&  is_numeric($id) && ($id > 0)){
            if($this->product_model->find_rows(array('id' => $id,'is_deleted' => 0)) != 0){
                $this->load->helper('form');
                $this->load->library('form_validation');
                $detail = $this->product_model->get_by_id($id);
              
                $parent_title = $this->build_parent_title($detail['product_category_id']);
                $detail['parent_title'] = $parent_title;
                $detail['image'] = (!empty(json_decode($detail['image']))) ? json_decode($detail['image']) : array();
                $detail['datetitle'] = json_decode($detail['datetitle'],true);
                $detail['datecontent'] = json_decode($detail['datecontent'],true);
                $librarylocaltion = $this->area_model->get_libraryarea_by_id_array(json_decode($detail['librarylocaltion']));
                $detail['librarylocaltion'] = $librarylocaltion;
                if($detail['type'] == 1){
                    $detail['pricesingle'] = json_decode($detail['pricesingle'],true);
                    $detail['hotelsingle'] = json_decode($detail['hotelsingle'],true);
                }else{
                    $detail['avaliability'] = json_decode($detail['avaliability']);
                    $detail['single_supplement'] = json_decode($detail['single_supplement']);
                    $detail['date_content'] = json_decode($detail['date_content']);
                    $detail['pricedate'] = json_decode($detail['pricedate']);
                }

           
                $this->data['detail'] = $detail;
               
                $this->render('admin/product/detail_product_view');
            }else{
                $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
                redirect('admin/product', 'refresh');
            }
        }else{
            $this->session->set_flashdata('message_error',MESSAGE_ID_ERROR);
            return redirect('admin/'.$this->data['controller'],'refresh');
        }
    }
    public function ajax_form($numberdate,$numbercurrent = 0){
        $reponse = '';
        for ($i=$numbercurrent; $i < $numberdate; $i++) {
            $reponse .= '<div class="vi">';
            $reponse .='<div role="tabpanel" class="tab-pane active" id="'.$i.'"><div class="title-content-date showdate '.$i.'">';
            $reponse .= '<div class="btn btn-primary col-xs-12 btn-margin" type="button" data-toggle="collapse" href="#showdatecontent_'.$i.'" aria-expanded="true" aria-controls="messageContent" style="padding:10px 0px;margin-bottom:3px;">';
            $reponse .= '<div class="col-xs-11">Nội dung Đầy đủ Ngày '.($i+1).'</div>';
            $reponse .= '</div>';
            $reponse .= '<div class="no_border"><div class="collapse in" id="showdatecontent_'.$i.'">';
            $reponse .= '<div class="col-xs-12 title-content-date date " style="margin-top:-5px;">';
            $reponse .= form_label('Tiêu đề ngày '.($i+1), 'title_date_'.$i,'class="title_date"   id="label_title_date_'.$i.'" ');
            $reponse .= form_error('title_date_'.$i);
            $reponse .= form_input('title_date_'.$i,"", 'class="form-control" id="title_date_'.$i.'"');
            $reponse .= form_label('Nội dung ngày '.($i+1),'content_date_'.$i,'class="content_date"  id="label_content_date_'.$i.'" ');
            $reponse .= form_error('content_date_'.$i);
            $reponse .= form_textarea('content_date_'.$i,"", 'class="tinymce-area form-control" id="content_date_'.$i.'" rows="3"');
            $reponse .= '</div></div></div></div></div></div>';
        }
        return $this->return_api(HTTP_SUCCESS,MESSAGE_CREATE_SUCCESS,$reponse);    
    }
    function remove(){
        $id = $this->input->post('id');
        if($id &&  is_numeric($id) && ($id > 0)){
            if($this->product_model->find_rows(array('id' => $id,'is_deleted' => 0)) == 0){
                return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ISSET_ERROR,$reponse);
            }
            $data = array('is_deleted' => 1);
            $update = $this->product_model->common_update($id, $data);
            if($update){
                $reponse = array(
                    'csrf_hash' => $this->security->get_csrf_hash()
                );
                return $this->return_api(HTTP_SUCCESS,MESSAGE_REMOVE_SUCCESS,$reponse);
            }
            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_REMOVE_ERROR);
        }
        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ID_ERROR);
    }
    public function edit($id){
        if($id &&  is_numeric($id) && ($id > 0)){
            $this->data['area_selected'] = $this->area_model->get_all_area();
            $product_category = $this->product_category_model->get_by_parent_id(null,'asc');
            $this->load->helper('form');
            if($this->product_model->find_rows(array('id' => $id,'is_deleted' => 0)) == 0){
                $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
                redirect('admin/product', 'refresh');
            }
            $detail = $this->product_model->get_by_id($id);
            $subs = $this->product_model->get_by_parent_id($id, 'asc');
            $this->build_new_category($product_category,0,$this->data['product_category'],$subs['product_category_id']);
            $detail['image'] = (!empty(json_decode($detail['image']))) ? json_decode($detail['image']) : array();
            $detail['datetitle'] = json_decode($detail['datetitle'],true);
            $detail['datecontent'] = json_decode($detail['datecontent'],true);
            $detail['librarylocaltion'] = json_decode($detail['librarylocaltion']);
            if($detail['type'] == 1){
                $detail['pricesingle'] = (empty(json_decode($detail['pricesingle'],true))) ? array() : json_decode($detail['pricesingle'],true);
                $detail['hotelsingle'] = (empty(json_decode($detail['hotelsingle'],true))) ? array() : json_decode($detail['hotelsingle'],true);
            }else{
                $detail['avaliability'] = (empty(json_decode($detail['avaliability'],true))) ? array() : json_decode($detail['avaliability'],true);
                $detail['single_supplement'] = json_decode($detail['single_supplement']);
                $detail['date_content'] = json_decode($detail['date_content']);
                $detail['pricedate'] = json_decode($detail['pricedate']);
            }
            $this->data['detail'] = $detail;
            if($this->input->post()){
                if($this->check_all_file_img($_FILES) === false){
                    return false;
                }
                if($this->input->post('parent_id_shared') == '' || $this->input->post('title') == ''){
                            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_EDIT_ERROR_VALIDATE);
                }
                for ($i=0; $i < count($this->input->post('datetitle')); $i++) {
                    if($this->input->post('datetitle')[$i] == ''){
                        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_EDIT_ERROR_VALIDATE);
                    }
                }
                $unique_slug = $this->data['detail']['slug'];
                if($unique_slug !== $this->input->post('slug')){
                    $unique_slug = $this->product_model->build_unique_slug($this->input->post('slug'));
                    if(file_exists("assets/upload/product/".$detail['slug'])) {
                        rename("assets/upload/product/".$detail['slug'], "assets/upload/product/".$unique_slug);
                    }
                }
                if(!empty($_FILES['image_shared']['name'][0])){
                    $image = $this->upload_file('assets/upload/product/'.$unique_slug, 'image_shared', 'assets/upload/product/'.$unique_slug.'/thumb');
                }
                if(!empty($_FILES['image_localtion']['name'])){
                    $localtionimage = $this->upload_image('image_localtion', $_FILES['image_localtion']['name'], 'assets/upload/product/'.$unique_slug, 'assets/upload/product/'.$unique_slug.'/thumb');
                }
                $single = [];
                $pricesingle = [];
                if($detail['type'] == 1){
                    if($this->input->post('hoteltitle') != null){
                        for ($i=0; $i < count($this->input->post('hoteltitle')); $i++) { 
                            $single[$i] = [
                                'title' => $this->input->post('hoteltitle')[$i],
                                'budget' => $this->input->post('budget')[$i],
                                'star3' => $this->input->post('star3')[$i],
                                'star4' => $this->input->post('star4')[$i],
                                'star5' => $this->input->post('star5')[$i],
                            ];
                        }
                    }
                    for ($i=0; $i < 2; $i++) { 
                        $pricesingle[$i] = [
                            'budget' => $this->input->post('pricebudget')[$i],
                            'star3' => $this->input->post('pricestar3')[$i],
                            'star4' => $this->input->post('pricestar4')[$i],
                            'star5' => $this->input->post('pricestar5')[$i],
                        ];
                    }
                }
                if($detail['type'] == 2){
                    $avaliability = json_encode($this->input->post('avaliability'));
                    $single_supplement = json_encode($this->input->post('single_supplement'));
                    $date_content = json_encode($this->input->post('date_content'));
                    $pricedate = json_encode($this->input->post('pricedate'));
                }
                $showpromotion = ($this->input->post('showpromotion') == 'true' && (!empty($this->input->post('percen')) || !empty($this->input->post('pricepromotion'))))? '1': '0';
                $shared_request = array(
                    'title' => $this->input->post('title'),
                    'price' => $this->input->post('price'),
                    'percen' => $this->input->post('percen'),
                    'pricepromotion' => $this->input->post('pricepromotion'),
                    'showpromotion' => $showpromotion,
                    'date' => ($this->input->post('date') != null) ? $this->input->post('date') : '',
                    'librarylocaltion' => json_encode($this->input->post('parengoplace_9999')),
                    'localtion' => $this->input->post('localtion'),
                    'product_category_id' => $this->input->post('parent_id_shared'),
                    'description' => $this->input->post('description'),
                    'content' => $this->input->post('content'),
                    'metakeywords' => $this->input->post('metakeywords'),
                    'metadescription' => $this->input->post('metadescription'),
                    'tripnodes' => $this->input->post('tripnodes'),
                    'inclusions' => $this->input->post('inclusions'),
                    'exclusions' => $this->input->post('exclusions'),
                    'detailsprice' => $this->input->post('detailsprice'),
                    'datetitle' => json_encode($this->input->post('datetitle')),
                    'datecontent' => json_encode($this->input->post('datecontent')),
                    'hotelsingle' => json_encode($single),
                    'pricesingle' => json_encode($pricesingle),
                );
                if(isset($avaliability)){
                    $shared_request['avaliability'] = $avaliability;
                    $shared_request['single_supplement'] = $single_supplement;
                    $shared_request['date_content'] = $date_content;
                    $shared_request['pricedate'] = $pricedate;
                }
                if($unique_slug != $this->data['detail']['slug']){
                    $shared_request['slug'] = $unique_slug;
                }
                if(isset($image)){
                    $shared_request['image'] = json_encode(array_merge($detail['image'],$image));
                }
                if(isset($localtionimage)){
                    $shared_request['imglocaltion'] = $localtionimage;
                }
                $update = $this->product_model->common_update($id,array_merge($shared_request,$this->author_data));
                if($update){
                    if(isset($localtionimage) && !empty($this->data['detail']['imglocaltion'])) {
                        $this->remove_img($unique_slug,$this->data['detail']['imglocaltion']);
                    }
                    $reponse = array(
                        'csrf_hash' => $this->security->get_csrf_hash()
                    );
                    return $this->return_api(HTTP_SUCCESS,MESSAGE_EDIT_SUCCESS,$reponse);
                }else {
                    return $this->return_api(HTTP_NOT_FOUND,MESSAGE_EDIT_ERROR);
                }
            }
        }else{
            $this->session->set_flashdata('message_error',MESSAGE_ID_ERROR);
            redirect('admin/'. $this->data['controller'].'/1', 'refresh');
        }
        $this->render('admin/product/edit_product_view');
    }
    public function active(){
        $id = $this->input->post('id');
        if($id &&  is_numeric($id) && ($id > 0)){
            $product = $this->product_model->find($id);
            $product_category = $this->product_category_model->find($product['product_category_id']);
            if($product_category['is_activated'] == 1){
                return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(404)
                    ->set_output(json_encode(array('status' => 404,'message' => MESSAGE_ERROR_ACTIVE_PRODUCT)));
            }
            if($this->product_model->find_rows(array('id' => $id,'is_deleted' => 0)) != 0){
                $update = $this->product_model->common_update($id,array_merge(array('is_activated' => 0),$this->author_data));
                if($update){
                    $reponse = array(
                        'csrf_hash' => $this->security->get_csrf_hash()
                    );
                    return $this->return_api(HTTP_SUCCESS,'',$reponse);
                }
                return $this->return_api(HTTP_BAD_REQUEST);
            }
            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ISSET_ERROR);
        }
        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ID_ERROR);
    }
    public function deactive(){
        $id = $this->input->post('id');
        if($id &&  is_numeric($id) && ($id > 0)){
            if($this->product_model->find_rows(array('id' => $id,'is_deleted' => 0)) != 0){
                $update = $this->product_model->common_update($id,array_merge(array('is_activated' => 1),$this->author_data));
                if($update){
                    $reponse = array(
                        'csrf_hash' => $this->security->get_csrf_hash()
                    );
                    return $this->return_api(HTTP_SUCCESS,'',$reponse);
                }
                return $this->return_api(HTTP_BAD_REQUEST);
            }
            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ISSET_ERROR);
        }
        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ID_ERROR);
    }
    public function remove_image(){
        $id = $this->input->post('id');
        $image = $this->input->post('image');
        $detail = $this->product_model->get_by_id($id);
        $upload = [];
        $upload = json_decode($detail['image']);
        $key = array_search($image, $upload);
        unset($upload[$key]);
        $newUpload = [];
        foreach ($upload as $key => $value) {
            $newUpload[] = $value;
        }
        
        $image_json = json_encode($newUpload);
        $data = array('image' => $image_json);

        $update = $this->product_model->common_update($id, $data);
        if($update == 1){
            $reponse = array(
                'csrf_hash' => $this->security->get_csrf_hash()
            );
            if($image != '' && file_exists('assets/upload/product/'.$detail['slug'].'/'.$image)){
                unlink('assets/upload/product/'.$detail['slug'].'/'.$image);
                $new_array = explode('.', $image);
                $typeimg = array_pop($new_array);
                $nameimg = str_replace(".".$typeimg, "", $image);
                if(file_exists('assets/upload/product/'.$detail['slug'].'/thumb/'.$nameimg.'_thumb.'.$typeimg)){
                    unlink('assets/upload/product/'.$detail['slug'].'/thumb/'.$nameimg.'_thumb.'.$typeimg);
                }
            }
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'reponse' => $reponse)));
        }
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }


    /**
     * [build_parent_title description]
     * @param  [type] $parent_id [description]
     * @return [type]            [description]
     */
    protected function build_parent_title($parent_id){
        $sub = $this->product_category_model->get_by_id($parent_id);

        if($parent_id != 0){
            $title = $sub['title'];
        }else{
            $title = 'Danh mục gốc';
        }
        return $title;
    }
    
    protected function check_img($filename, $filesize){
        $reponse = array(
            'csrf_hash' => $this->security->get_csrf_hash()
        );
        $map = strripos($filename, '.')+1;
        $fileextension = substr($filename, $map,(strlen($filename)-$map));
        if(!($fileextension == 'jpg' || $fileextension == 'jpeg' || $fileextension == 'png' || $fileextension == 'gif')){
            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_FILE_EXTENSION_ERROR,$reponse);
        }
        if ($filesize > 1228800) {
            return $this->return_api(HTTP_NOT_FOUND,sprintf(MESSAGE_PHOTOS_ERROR, 1200),$reponse);
        }
        return true;
    }
    protected function check_imgs($filename, $filesize){
        $reponse = array(
            'csrf_hash' => $this->security->get_csrf_hash()
        );
        $images = array('jpg', 'jpeg', 'png', 'gif');
        foreach ($filename as $key => $value) {
            $map[] = explode('.',$value);
        }
        foreach ($map as $key => $value) {
            if(!empty($value[1])){
                $new_map[] = $value[1];
            }
        }
        if(array_diff($new_map, $images) != null){
            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_FILE_EXTENSION_ERROR,$reponse);
        }
        $image_size = array('success');

        foreach ($filesize as $key => $value) {
            if ($value > 1228800) {
                $check_size[] = 'error';
            }else{
                $check_size[] = 'success';
            }
        }
        if (array_diff($check_size, $image_size) != null) {
            return $this->return_api(HTTP_NOT_FOUND,sprintf(MESSAGE_PHOTOS_ERROR, 1200),$reponse);
        }
        return true;
    }
    function build_new_category($categorie, $parent_id = 0,&$result, $id = "",$char=""){
        $cate_child = array();
        foreach ($categorie as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $cate_child[] = $item;
                unset($categorie[$key]);
            }
        }
        if ($cate_child){
            foreach ($cate_child as $key => $value){
            $select = ($value['id'] == $id)? 'selected' : '';
            $result.='<option value="'.$value['id'].'"'.$select.'>'.$char.$value['title'].'</option>';
            $this->build_new_category($categorie, $value['id'],$result, $id, $char.'---|');
            }
        }
    }
    function remove_img_date($numberdate=array(),$dateimg_array=array(),$unique_slug = '',$dateimg= ''){
        for ($i=0; $i < count($this->input->post('datetitle')); $i++) { 
            if(!array_key_exists($i,array_flip($dateimg)) && !empty($dateimg_array[$i])){
                if(file_exists('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/'.$dateimg_array[$i])){
                    unlink('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/'.$dateimg_array[$i]);
                    $new_array = explode('.', $dateimg_array[$i]);
                    $typeimg = array_pop($new_array);
                    $nameimg = str_replace(".".$typeimg, "", $dateimg_array[$i]);
                    if(file_exists('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/thumb/'.$nameimg.'_thumb.'.$typeimg)){
                        unlink('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/thumb/'.$nameimg.'_thumb.'.$typeimg);
                    }
                }
            }
        }
    }
    function remove_img($unique_slug = '',$image= ''){
        if(file_exists('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/'.$image)){
            unlink('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/'.$image);
            $new_array = explode('.', $image);
            $typeimg = array_pop($new_array);
            $nameimg = str_replace(".".$typeimg, "", $image);
            if(file_exists('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/thumb/'.$nameimg.'_thumb.'.$typeimg)){
                unlink('assets/upload/'. $this->data['controller'] .'/'.$unique_slug.'/thumb/'.$nameimg.'_thumb.'.$typeimg);
            }
        }
    }
    function area_selected($type='create'){
        $result = '<option value="0">Chọn khu vực</option>';
        foreach ($this->area_model->get_all_area() as $key => $value) {
            $result .= '<option value="'.$value['id'].'">'.$value['vi'].'</option>';
        }
        return $result;
    }
    public function check_banner(){
        $id = $this->input->get('id');
        $total =4;
        $total = $this->product_model->count_is_banner(1);
        if(is_numeric($id)){
            $detail = $this->product_model->find($id);
            if($detail['is_banner'] == 1){
                $total = $total - 1;
            }
        }
        if($total >=4){
            return $this->return_api(HTTP_SUCCESS,MESSAGE_CHECK_BANNER_ERROR,'', false);
        }else{
            return $this->return_api(HTTP_SUCCESS,'','', true);
        }
    }

    protected function check_all_file_img($file) {
        foreach ($file as $key => $value) {
            if(is_array($value['name'])){
                if(!empty($value['name'][0])){
                    if($this->check_imgs($value['name'], $value['size']) !== true){
                        return false;
                    }
                }
            }else{
                if(!empty($value['name'])){
                    if($this->check_img($value['name'], $value['size']) !== true){
                        return false;
                    }
                }
            }
        }
        return true;
    }
}