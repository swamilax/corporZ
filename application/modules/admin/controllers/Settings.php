<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Settings extends Admin_Base_Controller
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
            $crud = $this->getGroceryCRUD('settings', 'Settings', 'All Settings', 'Manage All Settings');

            // data Grid view fields
            $crud->columns('file_path', 'name', 'email', 'contact', 'status');



            // Insert form
            // $crud->add_fields('name', 'reg', 'established', 'address', 'founder', 'slogan', 'footer_about', 'contact', 'file_path', 'footer_logo', 'cre_or_up_date', 'cre_or_up_by');

            // Update form
            $crud->edit_fields('status', 'name', 'reg', 'established', 'address', 'founder', 'slogan', 'footer_about', 'email', 'contact', 'file_path', 'footer_logo', 'cre_or_up_date', 'cre_or_up_by');

            //File upload
            $crud->set_field_upload('file_path', 'assets/images/credit');
            $crud->set_field_upload('footer_logo', 'assets/images/credit');

            // Unset, hide fields
            $crud->change_field_type('cre_or_up_date', 'invisible')
                ->change_field_type('cre_or_up_by', 'invisible');

            // Unset, hide fields from view page
            $crud->unset_read_fields('cre_or_up_by');
            $crud->unset_texteditor(['footer_about', 'full_text']);

            // Required fields
            $crud->required_fields('name', 'reg', 'established', 'address', 'contact', 'email');

            // Rename field level
            $crud->display_as('file_path', ' Logo(w180 x h54)');
            $crud->display_as('footer_logo', 'Footer Logo(w180 x h54)');
            $crud->display_as('name', ' Name');
            $crud->display_as('reg', ' Registration Code');
            $crud->display_as('cre_or_up_date', 'Created Date');

            // callback functions
            $crud->callback_column('status', array($this, '_callback_status'))
                ->callback_before_insert(array($this, 'custom_data_callback'))
                ->callback_before_update(array($this, 'custom_data_update_callback'))
                ->callback_read_field('file_path', array($this, '_callback_view_photo'))
                ->callback_read_field('footer_logo', array($this, '_callback_view_photo'))
                ->callback_read_field('status', array($this, '_callback_status'));

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

    // add and update cre_or_up_date & cre_or_up_date value
    public function custom_data_callback($post_array)
    {
        $post_array['cre_or_up_date'] = date('Y-m-d');
        $created_by = $this->ion_auth->get_user_id();
        $post_array['cre_or_up_by'] = $created_by;

        return $post_array;
    }

    // add and update cre_or_up_date & cre_or_up_date value
    public function custom_data_update_callback($post_array)
    {
        $post_array['cre_or_up_date'] = date('Y-m-d');
        $created_by = $this->ion_auth->get_user_id();
        $post_array['cre_or_up_by'] = $created_by;

        return $post_array;
    }

    // Change the color of status like active and deactive users
    public function _callback_status($value, $row)
    {
        return $value == '1' ? "<strong style='color: #67bf7e'>ACTIVE</strong>" : "<strong style='color: #e66f57'>INACTIVE</strong>";
    }

    // view user image in column
    public function _callback_view_photo($value, $row)
    {
        $image_url = base_url('assets/images/credit/' . $value);
        return "<a href=$image_url class='fancybox'><img class='img-responsive img-thumbnail' src=$image_url  width='100px'/></a>";
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
