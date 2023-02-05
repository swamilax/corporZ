<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Contact extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('home_model');
    }

    public function send()
    {
        $secretKey = "6LeqV7MZAAAAAGzqaiKMCQI2Z5wAEJkIA0zFxIeP";
        $ip = $_SERVER['REMOTE_ADDR'];
        $captcha = $_POST['g-recaptcha-response'];
        // post request to server
        $url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($secretKey) .  '&response=' . urlencode($captcha);
        $response = file_get_contents($url);
        $responseKeys = json_decode($response, true);
        // should return JSON with success as true
        if ($responseKeys["success"]) {
            $contactData = array(
                'name' => (!empty($_POST['form_name'])) ? $_POST['form_name'] : NULL,
                'email' => $_POST['form_email'],
                'phone' => (!empty($_POST['form_phone'])) ? $_POST['form_phone'] : NULL,
                'subject' => $_POST['form_subject'],
                'message' => $_POST['form_message'],
                'created' => date('Y-m-d h:i:s'),
            );
            $ID = $this->db->insert('contactus', $contactData);
            if ($ID) {
                $this->session->set_flashdata('msg', '<div class="alert alert-success">We will get back to you soon, Thank You!</div>');
            } else {
                $this->session->set_flashdata('msg', '<div class="alert alert-danger">Something went wrong, Try again!</div>');
            }
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger">reCapcha error, Try again!</div>');
        }

        redirect('contact-us');
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


        // Main Navbar
        $data['navigations'] = $this->home_model->getNavigation();

        // Gallery
        $data['galleries'] = $this->home_model->getGallery();

        // Partners
        $data['partners'] = $this->home_model->getPartner();

        // Social Links
        $data['sociallinks'] = $this->home_model->getSocialLinks();

        $this->load->view('includes/header', $data);
        $this->load->view('includes/navigation', $data);
        $this->load->view('contact_view', $data);
        $this->load->view('includes/footer', $data);
    }
}
