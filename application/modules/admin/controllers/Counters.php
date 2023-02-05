<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Counters extends Admin_Base_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('grocery_CRUD');
        $this->setTemplateFile('grocery_view');
        $this->load->model('settings_model');

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
            $crud = $this->getGroceryCRUD('counters', 'Counters', 'Manage Counters', 'Manage Counters');

            // data Grid view fields
            $crud->columns('title', 'value', 'icon', 'sort');

            // Insert form
            $crud->add_fields('title', 'value', 'icon', 'sort');

            // Update form
            $crud->edit_fields('title', 'value', 'icon', 'sort');

            // Required fields
            $crud->required_fields('title', 'value', 'icon', 'sort');

            // Rename field level
            $crud->display_as('sort', 'Sort Order');

            $crud->unset_add();
            $crud->unset_export();
            $crud->unset_print();
            $crud->unset_delete();

            // render output result
            $output = $crud->render();
            $this->load->view('admin/settings/v_Settings', (array) $output);

            // error handle
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
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
