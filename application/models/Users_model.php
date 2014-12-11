<?php
class Users_model extends CI_Model {

		public function __construct()
		{
			$this->load->database();
		}
	
		public function get_users($UserID = FALSE)
		{
			
				if ($UserID === FALSE)
				{
						$query = $this->db->get('Users');
						return $query->result_array();
				}
			
				$query = $this->db->get_where('Users', array('ID' => $UserID));
				return $query->row_array();
		}
	
		public function set_user() //Adds an user to the database
		{
			
			$data = array(
				'UserAlias' => $this->input->post('useralias'),
				'UserFName' => $this->input->post('userfname'),
				'UserLName' => $this->input->post('userlname'),
				'ZipCode' => $this->input->post('zipcode'),
				'GenderID' => $this->input->post('gender')
			);
			
			return $this->db->insert('Users', $data);
			
		}
	
	
	
}







?>