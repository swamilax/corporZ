<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('home_model');
	}
	public function index()
	{
		$data['metatags'] = array();

		$data['styles'] = array(
			'<link href="' . base_url() . 'assets/frontend/css/3/bootstrap.min.css" rel="stylesheet">',
			'<link href="' . base_url() . 'assets/frontend/css/bootstrap.min.css" rel="stylesheet">',
			'<link href="' . base_url() . 'assets/frontend/css/style.css" rel="stylesheet">',
		);

		$data['scripts'] = array(
			'<script src="' . base_url() . 'assets/frontend/js/jquery-min.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/popper.min.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/jquery.mainmenu.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/plugins.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/plugin.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/wow.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/magnific-popup.min.js"></script>',
			'<script src="' . base_url() . 'assets/frontend/js/custom.js"></script>',
		);

		// Get Website Settings
		$setting = $this->home_model->getWebsiteSettings();
		$data['title'] = "Home | " . $setting['name'];
		$data['logo'] = $setting['logo'];
		$data['footer_logo'] = $setting['footer_logo'];
		$data['footer_about'] = $setting['footer_about'];
		$data['alt'] = $setting['name'];
		$data['settings'] = $setting;

		// Sliders
		$data['sliders'] = $this->home_model->getWebsiteSliders();

		// Main Navbar
		$data['navigations'] = $this->home_model->getNavigation();

		// Our Services
		$data['services'] = $this->home_model->getCategoryProduct(3);

		// Our Counter
		$data['counters'] = $this->home_model->getCounters();

		// Gallery
		$data['galleries'] = $this->home_model->getGallery();

		// Partners
		$data['partners'] = $this->home_model->getPartner();

		// Blogs
		$data['blog4home'] = $this->home_model->getBlogsOnly(3);

		// Blogs
		$data['testimonials'] = $this->home_model->getTestimonials(3);

		// Social Links
		$data['sociallinks'] = $this->home_model->getSocialLinks();

		$this->load->view('includes/header', $data);
		$this->load->view('includes/navigation', $data);
		$this->load->view('includes/slider', $data);
		$this->load->view('home_view', $data);
		$this->load->view('includes/footer', $data);
	}
}
