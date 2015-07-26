<?php


class ModelCategories extends CI_Model{

    public function __construct(){
        parent::__construct();
    }

    public function store($data){

        $params = array(
            'name' => $this->db->escape_str($data['category']),
            'is_active' => 1,
            'date_created' => date('Y-m-d H:i:s'),
            'inserted_by' => $data['user'],
            'last_modification' => date('Y-m-d H:i:s'),
            'modificated_by' => $data['user']
        );

        $this->db->insert('snippet_categories', $params);

    }

    public function showCategoriesList(){

        $sql = "SELECT id, name,
                CASE
                    WHEN is_active = 0 THEN 'Inactivo'
                    WHEN is_active = 1 THEN 'Activo'
                END AS 'status'
                FROM snippet_categories";

        $query = $this->db->query($sql);

        if($query->num_rows() > 0){
            $categories = $query->result();


            $response = $categories;


        }
        else{
            $response = false;
        }

        return $response;
    }

    /**
     * When the admin create new category, we need to return the new record
     * and insert in the editable with json without refresh
     */
    public function returnLastInsertRow(){

    }

}