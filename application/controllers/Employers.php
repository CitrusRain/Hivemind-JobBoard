<?php
class Employers extends CI_Controller {

		public function __construct()
		{
				parent::__construct();
				$this->load->model('employers_model');
				$this->load->model('jobs_model');
		}
	
		public function index()
		{
				$data['employers'] = $this->employers_model->get_employers();
				$data['title'] = 'employers archive';
				
				$this->load->view('templates/header', $data);
				$this->load->view('employers/index', $data);
				$this->load->view('templates/footer');
		}
	
		public function view($EmployerID = NULL)
		{
				$this->load->helper('form');
				$this->load->library('form_validation');			
			
				$data['employers_item'] = $this->employers_model->get_employers($EmployerID);
				
				if (empty($data['employers_item']))
				{
						//	show_404();
				}
								 
			
				$data['title'] = $data['employers_item']['EmployerName'];
				
				$this->load->view('templates/header', $data);
				$this->load->view('employers/view', $data);
				$this->load->view('templates/footer');
		}
	
	
}
?>