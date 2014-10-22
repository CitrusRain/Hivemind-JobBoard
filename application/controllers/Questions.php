<?php
class Questions extends CI_Controller {

		public function __construct()
		{
				parent::__construct();
				$this->load->model('questions_model');
		}
	
		public function index()
		{
				$data['questions'] = $this->questions_model->get_questions();
				$data['title'] = 'Questions archive';
				
				$this->load->view('templates/header', $data);
				$this->load->view('questions/index', $data);
				$this->load->view('templates/footer');
		}
	
		public function view($qid = NULL)
		{
				$data['questions_item'] = $this->questions_model->get_questions($qid);
				
				if (empty($data['questions_item']))
				{
						//	show_404();
				}
				else if($data['questions_item']['Type'] != "Custom")
				{
					$data['questions_item']['answers'] = $this->questions_model->get_answers($qid, $data['questions_item']['Type']);			
				} 
			
				$data['title'] = $data['questions_item']['Contents'];
				
				$this->load->view('templates/header', $data);
				$this->load->view('questions/view', $data);
				$this->load->view('templates/footer');
		}
	
		public function create()
		{
				$this->load->helper('form');
				$this->load->library('form_validation');
				
				$data['title'] = 'Create a question';
				
				$this->form_validation->set_rules('contents', 'Contents', 'required');
//				$this->form_validation->set_rules('text', 'text', 'required');
				
				if ($this->form_validation->run() === FALSE)
				{
					$this->load->view('templates/header', $data);
					$this->load->view('questions/create');
					$this->load->view('templates/footer');
				}
				else
				{
					$this->questions_model->set_question();
					$this->load->view('questions/success');
				}
		}
}
?>