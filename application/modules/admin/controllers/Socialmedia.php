<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Socialmedia extends Admin_Base_Controller
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
            $crud = $this->getGroceryCRUD('socialmedia', 'Socialmedia', 'Manage Socialmedia', 'Manage Socialmedia');

            // data Grid view fields
            $crud->columns('fa_icon', 'name', 'link');

            // Insert form
            $crud->add_fields('fa_icon', 'name', 'link');

            // Update form
            $crud->edit_fields('fa_icon', 'name', 'link');
            $crud->required_fields('fa_icon', 'name', 'link');

            // Rename field level

            $crud->display_as('fa_icon', 'Fontawesome Icon');
            // $crud->unset_add();
            $crud->unset_export();
            $crud->unset_print();
            // $crud->unset_delete();

            $crud->callback_column('fa_icon', array($this, '_callback_view_photo'));
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
        return "<i class='" . $value . "'></i>";
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
