<?php
class Jobs extends CI_Controller {

		public function __construct()
		{
				parent::__construct();
				$this->load->model('jobs_model');
		}
	
		public function index()
		{
				$data['jobs'] = $this->jobs_model->get_jobs();
				$data['title'] = 'jobs archive';
				
				$this->load->view('templates/header', $data);
				$this->load->view('jobs/index', $data);
				$this->load->view('templates/footer');
		}
	
		public function view($JobID = NULL)
		{
				$this->load->helper('form');
				$this->load->library('form_validation');			
			
				$data['jobs_item'] = $this->jobs_model->get_jobs($JobID);
				
				if (empty($data['jobs_item']))
				{
						//	show_404();
				}
								 
			
				$data['title'] = $data['jobs_item']['Title'];
				
				$this->load->view('templates/header', $data);
				$this->load->view('jobs/view', $data);
				$this->load->view('templates/footer');
		}
	
		public function create()
		{
				$this->load->helper('form');
				$this->load->library('form_validation');
				
				$data['title'] = 'Create a job listing';
				
				$this->form_validation->set_rules('jobtitle', 'job title', 'required');
				$this->form_validation->set_rules('location', 'location', 'required');
				$this->form_validation->set_rules('description', 'Description', 'required');
				$this->form_validation->set_rules('QuestionList1', 'Question List 1', 'required');
				
				if ($this->form_validation->run() === FALSE)
				{
					$this->load->view('templates/header', $data);
					$this->load->view('jobs/create', $data);
					$this->load->view('templates/footer');
				}
				else
				{
					$this->jobs_model->set_job();
					$this->load->view('jobs/success');
				}
		}
	
}
?>