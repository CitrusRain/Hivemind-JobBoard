<?php
class Employers_model extends CI_Model {

		public function __construct()
		{
			$this->load->database();
		}
	
		public function get_employers($EmployerID = FALSE)
		{
			
				if ($EmployerID === FALSE)
				{
						$query = $this->db->get('Employers');
						return $query->result_array();
				}
			
				$query = $this->db->get_where('Employers', array('ID' => $EmployerID));
				return $query->row_array();
		}
	
		public function set_employer() //Adds an employer to the database
		{
			
			$data = array(
				'EmployerIdentificationNumber' => $this->input->post('EIN'),
				'EmployerName' => $this->input->post('employername'),
				'Location' => $this->input->post('location'),
				'EmployerBio' => $this->input->post('bio')
			);
			
			return $this->db->insert('Employers', $data);
			
		}
	
	
	
}







?>