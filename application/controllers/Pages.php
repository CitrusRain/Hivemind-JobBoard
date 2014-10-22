<?php
class Pages extends CI_Controller {
//this controller will be the center of every request
	public function view($page = 'home')
	{
			if ( ! file_exists(APPPATH.'/views/pages/'.$page.'.php'))
			{
				//There is not a page for that
				show_404();
			}
			
			$data['title'] = ucfirst($page); //Capitalizes the first letter
			
			$this->load->view('templates/header', $data);
			$this->load->view('pages/'.$page, $data);
			$this->load->view('templates/footer', $data);
	}

}