<?php
class Questions_model extends CI_Model {

		public function __construct()
		{
			$this->load->database();
		}
	
		public function get_questions($qid = FALSE)
		{
			
				if ($qid === FALSE)
				{
						$query = $this->db->get('questions');
						return $query->result_array();
				}
			
				$query = $this->db->get_where('questions', array('QuestionID' => $qid));
				return $query->row_array();
		}
	
		public function set_question() //Adds a question to the database
		{
		//How websites make news posts with the title matching the url
			//$this->load->helper('url');
			//$slug = url_title($this->input->post('title'), 'dash', TRUE);
			
			$data = array(
				'Contents' => $this->input->post('contents'),
				'Type' => $this->input->post('type')
			);
			
			return $this->db->insert('questions', $data);
		}
	
		public function get_answers($qid, $aType = FALSE)
		{
			
				if ($aType != "Custom")
				{
					$query = $this->db->get_where('GenericAnswerSets', array('Handle' => $aType));
						return $query->row_array();
				}
			
				
				$query = $this->db->get_where('questions', array('QuestionID' => $qid));
				return $query->row_array();
		}
}
?>