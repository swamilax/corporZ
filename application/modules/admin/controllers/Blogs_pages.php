<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Blogs_pages extends Admin_Base_Controller
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
            $crud = $this->getGroceryCRUD('blogs', 'Blogs', 'Manage Blogs/Pages', 'Manage Blogs/Pages');

            // data Grid view fields
            $crud->columns('status', 'seourl', 'type', 'file_path', 'author');

            // Insert form
            $crud->add_fields('pid', 'seourl', 'title', 'short', 'type', 'status', 'author', 'content', 'file_path', 'blog_home', 'metatags');

            // Update form
            $crud->edit_fields('pid', 'seourl', 'title', 'short', 'type', 'status', 'author', 'content', 'file_path', 'blog_home', 'metatags');

            //File upload
            $crud->set_field_upload('file_path', 'assets/frontend/images/blogs');
            $crud->set_field_upload('blog_home', 'assets/frontend/images/blogs');

            // Required fields
            $crud->required_fields('seourl', 'title', 'short', 'type', 'author', 'content', 'file_path');
            $crud->unset_texteditor(['metatags', 'full_text']);
            // Rename field level
            $crud->display_as('pid', 'Category');
            $crud->display_as('seourl', 'SeoURL');
            $crud->display_as('file_path', 'Banner(w1903 x h531)');
            $crud->display_as('blog_home', 'Blog(home) Only(w600 x h400)');
            $crud->display_as('short', 'Short Description');

            $crud->callback_read_field('file_path', array($this, '_callback_view_photo'));
            $crud->set_relation('pid', 'categories', 'catname');
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
        $image_url = base_url('assets/frontend/images/blogs/' . $value);
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
