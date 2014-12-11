<?php
class Users extends CI_Controller {

		public function __construct()
		{
				parent::__construct();
				$this->load->model('users_model');
		}
	
		public function index()
		{
				$data['users'] = $this->users_model->get_users();
				$data['title'] = 'users archive';
				
				$this->load->view('templates/header', $data);
				$this->load->view('users/index', $data);
				$this->load->view('templates/footer');
		}
	
		public function view($UserID = NULL)
		{
				$this->load->helper('form');
				$this->load->library('form_validation');			
			
				$data['users_item'] = $this->users_model->get_users($UserID);
				
				if (empty($data['users_item']))
				{
						//	show_404();
				}
								 
			
				$data['title'] = $data['users_item']['UserFName'].' '.$data['users_item']['UserLName'];
				
				$this->load->view('templates/header', $data);
				$this->load->view('users/view', $data);
				$this->load->view('templates/footer');
		}
	
	
}
?>