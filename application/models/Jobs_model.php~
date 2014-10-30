<?php
class Jobs_model extends CI_Model {

		public function __construct()
		{
			$this->load->database();
		}
	
		public function get_jobs($JobId = FALSE)
		{
			
				if ($JobId === FALSE)
				{
						$query = $this->db->get('Jobs');
						return $query->result_array();
				}
			
				$query = $this->db->get_where('Jobs', array('ID' => $JobId));
				return $query->row_array();
		}
	
		public function set_job() //Adds a job to the database
		{
			
			$data = array(
				'EmployerIdentificationNumber' => $this->input->post('EIN'),
				'Title' => $this->input->post('jobtitle'),
				'Location' => $this->input->post('location'),
				'Description' => $this->input->post('description'),
				'QuestionList1' => $this->input->post('QuestionList1'),
				'QuestionList2' => $this->input->post('QuestionList2')
			);
			
			return $this->db->insert('Jobs', $data);
			
		}
	
	
	
}







?>