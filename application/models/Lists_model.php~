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
	
		public function set_question() //Adds a question to the database, and any custom answers
		{
		//How websites make news posts with the title matching the url
			//$this->load->helper('url');
			//$slug = url_title($this->input->post('title'), 'dash', TRUE);
			
			$data = array(
				'Contents' => $this->input->post('contents'),
				'Type' => $this->input->post('type')
			);
			
			if ($this->input->post('type') != "0")
				return $this->db->insert('questions', $data);
			else
				$this->db->insert('questions', $data);
			
			$data2 = array(
				'QuestionID' => $this->db->insert_id(),
				'Answer1' => $this->input->post('Answer1'),			
				'Answer2' => $this->input->post('Answer2'),			
				'Answer3' => $this->input->post('Answer3'),			
				'Answer4' => $this->input->post('Answer4'),			
				'Answer5' => $this->input->post('Answer5')
				);			
	
			return $this->db->insert('CustomAnswerSets', $data2);
			
			
		}
	
		public function get_answers($qid, $aType = FALSE)
		{
			
				if ($aType != "0")
				{
					$query = $this->db->get_where('GenericAnswerSets', array('ID' => $aType));
						return $query->row_array();
				}
				
				$query = $this->db->get_where('CustomAnswerSets', array('QuestionID' => $qid));
						return $query->row_array();
		}
	
		//Get a listing of generic answer sets for when creating a question
		public function get_GenericAnswerSets()
		{
				$query = $this->db->get('GenericAnswerSets');
						return $query->result_array();	
		}
	
		//Get question lists
		public function get_QuestionLists($listOwnerID = FALSE, $listID = FALSE)
		{
			if ($listID != "0")
			{
				$query = $this->db->get_where('QuestionList', array('ListID' => $listID));
				return $query->row_array();
			}
			if ($listOwnerID != "0")
			{
					$query = $this->db->get_where('QuestionList', array('ListOwnerID' => $listOwnerID));
					return $query->row_array();
			}
			
			$query = $this->db->get('QuestionList');
			return $query->result_array();	
	
		}	
	
	
		public function set_QuestionList() //Adds an empty question list to the database
		{
						
			$data = array(
				'ListName' => $this->input->post('ListName'),
				'ListOwnerID' => 0
			);
			
			$this->db->insert('QuestionList', $data);
	
			return $this->db->insert_id();			
			
		}
	
	
		public function set_QuestionListItem($qid) //Adds a filled in QuestionListItem item to the list in the database
		{
						
			$data = array(
				'ListID' => $this->input->post('listlist'),
				'QuestionID' => $qid,
				'CorrectAnswer' => $this->input->post('answer'),
				'PointsScored' => $this->input->post('pointvalue')
			);
			
			$this->db->insert('QuestionListItem', $data);
	
			return $this->db->insert_id();			
			
		}
	
	
}







?>