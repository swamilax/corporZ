<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Testimonial extends Admin_Base_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('grocery_CRUD');
        $this->setTemplateFile('grocery_view');
        $this->load->model('settings_model');
        $this->load->helper('simple_helper');

        // check librarians groups or not
        $group = 'admin';
        if (!$this->ion_auth->in_group($group)) {
            $this->session->set_flashdata('message', 'You must be a admin to view this page.');
            redirect('admin/dashboard/access_denied');
        }
    }

    public function index()
    {

        try {

            // Grocery settings getGroceryCRUD( $TableName, $Subject, $PageTitle, $Breadcrumbs )
            $crud = $this->getGroceryCRUD('testimonials', 'Testimonials', 'Manage Testimonials', 'Manage Testimonials');

            // data Grid view fields 		file_path	

            $crud->columns('id', 'name', 'address', 'file_path', 'short_desc');

            // Insert form
            $crud->add_fields('name', 'address', 'file_path', 'short_desc');

            // Update form
            $crud->edit_fields('name', 'address', 'file_path', 'short_desc');

            //File upload
            $crud->set_field_upload('file_path', 'assets/frontend/images/testimonials');

            // Required fields
            $crud->required_fields('name', 'address', 'file_path', 'short_desc');


            // Rename field level
            $crud->display_as('file_path', 'Profile(w100 x h100)');

            $crud->callback_read_field('file_path', array($this, '_callback_view_photo'));


            // $crud->unset_add();
            $crud->unset_export();
            $crud->unset_print();
            // $crud->unset_delete();

            // render output result
            $output = $crud->render();
            $this->load->view('admin/settings/v_Settings', (array) $output);

            // error handle
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }


    // view user image in column
    public function _callback_view_photo($value, $row)
    {
        $image_url = base_url('assets/frontend/images/testimonials/' . $value);
        return "<a href=$image_url class='fancybox'><img class='img-responsive img-thumbnail' src=$image_url  width='200px'/></a>";
    }

    // initial setup of grocery crud by table name, theme and others
    public function getGroceryCRUD($TableName, $Subject, $PageTitle, $Breadcrumbs)
    {
        $crud = new grocery_CRUD();
        $this->data['title'] = $PageTitle;
        $this->data['breadcrumbs'] = $Breadcrumbs;
        $crud->set_theme('bootstrap');
        $crud->set_table($TableName);
        $crud->set_subject($Subject);

        return $crud;
    }
}
