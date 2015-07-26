<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class SnippetCategories extends MY_Controller{

    public function __construct(){
        parent::__construct();

        $this->load->library('form_validation');

        $this->load->model('admin/ModelCategories');
    }

    public function index(){

        $vars['js_load'] = array(
            'jquery_form' => 'js/jquery.form.js',
            'tabledit' => 'apps/jquery-tabledit/jquery.tabledit.js',
            'categories' => 'js/admin/categories.js'
        );

        $vars['title'] = "Manage Categories";
        $vars['list_categories'] = $this->ModelCategories->showCategoriesList();

        $this->load->template('admin/admin_manage_snippet_categories', $vars);
    }

    public function load(){


        // se debe hacer un swith para manejar los varlores
        /*
        switch($action){
            case 'edit':

                break;
            case 'delete':

                break;
            default:
                $categories = $this->ModelCategories->showCategoriesList();
                echo json_encode($categories);
        }
        */
        $categories = $this->ModelCategories->showCategoriesList();
        echo json_encode($categories);


    }


    public function store(){
        $this->form_validation->set_rules('category', 'Category', 'trim|required|xss_clean');

        if ($this->form_validation->run() == TRUE){

            $data = array(
                'category' => $this->input->post('category'),
                'user' => $this->session->userdata('id')
            );

            $this->ModelCategories->store($data);

            $params['msg'] = 'Se ha enviado un correo electronico con la infomación de su cuenta';
            $params['success'] = true;
        }
        else{

            $errors = array();

            foreach ($this->input->post() as $key => $val) {
                $errors[$key] = form_error($key);
            }

            $params['errors'] = array_filter($errors);
            $params['success'] = false;
        }

        echo json_encode($params);

    }

}