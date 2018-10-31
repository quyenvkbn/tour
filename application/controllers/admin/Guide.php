<?php

/**
 * 
 */
class Guide extends Admin_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('guide_model');
		$this->data['controller'] = 'guide';
		$this->load->helper('common');
        $this->load->helper('file');
        $this->author_data = handle_author_common_data();
	}


	public function index()
	{
		$keywords = '';
        if($this->input->get('search')){
            $keywords = $this->input->get('search');
        }
        $total_rows  = $this->guide_model->count_search();
        if($keywords != ''){
            $total_rows  = $this->guide_model->count_search($keywords);
        }
        $this->data['keywords'] = $keywords;
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/'. $this->data['controller'] .'/index');
        $per_page = 10;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();

        $result = $this->guide_model->get_all_with_pagination_search('desc', $per_page, $this->data['page']);
        if($keywords != ''){
            $result = $this->guide_model->get_all_with_pagination_search('desc', $per_page, $this->data['page'], $keywords);
        }
        $this->data['result'] = $result;
		$this->render('admin/'.$this->data['controller'].'/list_guide_view');
	}

	public function create()
	{
		$this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('slug', 'Slug', 'required');

        if ($this->form_validation->run() == FALSE) {
        	$this->render('admin/'.$this->data['controller'].'/create_guide_view');
        } else {
        	if($this->input->post()){
            	$slug = $this->input->post('slug');
                $unique_slug = $this->guide_model->build_unique_slug($slug);
                $shared_request = array(
                    'slug' => $unique_slug,
                    'title' => $this->input->post('title'),
                    'description' => $this->input->post('description'),
                    'content' => $this->input->post('content'),
                    'created_at' => $this->author_data['created_at'],
                    'created_by' => $this->author_data['created_by'],
                    'updated_at' => $this->author_data['updated_at'],
                    'updated_by' => $this->author_data['updated_by']
                );
                $insert = $this->guide_model->common_insert($shared_request);
                if($insert){
                    $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                    redirect('admin/'. $this->data['controller'], 'refresh');
                }else {
                    $this->load->libraries('session');
                    $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                    $this->render('admin/'. $this->data['controller'] .'/create_guide_view');
                }
        	}
        }
	}

	public function detail($id)
	{
		$this->load->helper('form');
        $this->load->library('form_validation');

        $detail = $this->guide_model->get_by_id($id);
        $this->data['detail'] = $detail;
		$this->render('admin/'. $this->data['controller'] .'/detail_guide_view');
	}

	public function edit($id)
	{
		$this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('slug', 'Slug', 'required');

        $detail = $this->guide_model->get_by_id($id);
        $this->data['detail'] = $detail;

        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/'. $this->data['controller'] .'/edit_guide_view');
        } else {
            if($this->input->post()){
                $slug = $this->input->post('slug');
                $unique_slug = $this->guide_model->build_unique_slug($slug, $id);
                $shared_request = array(
                    'slug' => $unique_slug,
                    'title' => $this->input->post('title'),
                    'description' => $this->input->post('description'),
                    'content' => $this->input->post('content'),
                    'created_at' => $this->author_data['created_at'],
                    'created_by' => $this->author_data['created_by'],
                    'updated_at' => $this->author_data['updated_at'],
                    'updated_by' => $this->author_data['updated_by']
                );
                $update = $this->guide_model->common_update($id, $shared_request);
                if($update){
                    $this->session->set_flashdata('message_success', MESSAGE_EDIT_SUCCESS);
                    redirect('admin/'. $this->data['controller'] .'', 'refresh');
                }else {
                    $this->load->libraries('session');
                    $this->session->set_flashdata('message_error', MESSAGE_EDIT_ERROR);
                    $this->render('admin/'. $this->data['controller'] .'/edit/'.$id);
                }
            }
        }
	}

	public function remove(){
        $id = $this->input->post('id');
        $data = array('is_deleted' => 1);
        $update = $this->guide_model->common_update($id, $data);
        if($update == 1){
            $reponse = array(
                'csrf_hash' => $this->security->get_csrf_hash()
            );
            return $this->return_api(HTTP_SUCCESS,MESSAGE_REMOVE_SUCCESS,$reponse);
        }
        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_REMOVE_ERROR);
    }
}