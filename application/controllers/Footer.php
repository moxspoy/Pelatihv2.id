<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Footer extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __Construct()
    {
        parent ::__construct();
    }
	 
	public function index()
	{
		$this->load->view('errors/html/forbidden');
	}
	
	public function career()
	{
		$this->load->template('footer/career');
	}

	public function about()
	{
		$this->load->template('footer/about');
	}

	public function privacy()
	{
		$this->load->template('footer/privacy');
	}

	public function terms()
	{
		$this->load->template('footer/terms');
	}

	public function faq()
	{
		$this->load->template('footer/faq');
	}
}
