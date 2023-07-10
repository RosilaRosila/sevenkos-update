<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->model('Login_model');
		$this->load->model('User_model');
		$this->load->library('pagination');
		$this->load->library('form_validation');
		$this->load->helper('url');
		$this->load->library('session');
		$this->load->helper('security');
	}

	public function index($page = 0)
	{
		$jumlahkos = $this->User_model->getJumlahKos()->num_rows();
		$jumlahuser = $this->User_model->getJumlahUser()->num_rows();
		$jumlahsewa = $this->User_model->getJumlahSewa()->num_rows();
		$jumlahrequest = $this->User_model->getJumlahRequest()->num_rows();
		$kota = $this->User_model->list_kota();

		$data = array(
			'kota' => $kota,
			'jumlahkos' => $jumlahkos,
			'jumlahuser' => $jumlahuser,
			'jumlahsewa' => $jumlahsewa,
			'jumlahrequest' => $jumlahrequest
		);

		//config
		$config['base_url'] = site_url('semua-kos');
		$config['total_rows'] = $this->User_model->countAllkos();
		$config['per_page'] = 6;
		$data['sql'] = $this->User_model->info_beberapa_kos($config['per_page'], $page);

		//Membuat Style pagination untuk BootStrap v4
		$config['first_link']       = 'First';
		$config['last_link']        = 'Last';
		$config['next_link']        = 'Next';
		$config['prev_link']        = 'Prev';
		$config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
		$config['full_tag_close']   = '</ul></nav></div>';
		$config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
		$config['num_tag_close']    = '</span></li>';
		$config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
		$config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
		$config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
		$config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['prev_tagl_close']  = '</span>Next</li>';
		$config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
		$config['first_tagl_close'] = '</span></li>';
		$config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['last_tagl_close']  = '</span></li>';


		//inisial
		$this->pagination->initialize($config);
		$this->load->view('navbar_user', $data);
		$this->load->view('user/home', $data);
		$this->load->view('user/footer');
	}
}