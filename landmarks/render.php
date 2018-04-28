<?php
class render
{
    protected $category;
    protected $categoryType;

    /**
     * @var CRUD
     */
    protected $CRUD;

    public function __construct(CRUD $CRUD)
    {
        $this->CRUD = $CRUD;
        $this->category = $CRUD->getCategory();
        $this->categoryType = $CRUD->getCategoryType();
    }

    public function renderMainContent($data){
        $this->header();
        $this->content('./layout/content.php');
        $this->footer();
    }

    public function renderContentType($type){
        if($type != 'categories') {
            $contentType = $this->CRUD->getCategoryTypeByName($type);
            $contentObjectByContentType = $this->CRUD->getContentObjectByContentType($type);
            $this->content('./layout/contentType.php', [
                'contentType' => $contentType,
                'type' => $type,
                'contentObjectByContentType' => $contentObjectByContentType
            ]);
        }
        else{
            $categories = $this->CRUD->getCategoryType();
            $this->content('./layout/categories.php', [
                'categories' => $categories
            ]);
            exit();
        }
        //$this->footer();
    }

    public function renderContentObject($objectType){
        $this->header();
        $contentType = $this->CRUD->getItemsByObjectType($objectType);
        $this->content('./layout/contentObject.php',[
            'contentType' => $contentType
        ]);
        $this->footer();
    }

    public function renderObject($id){
        $this->header();
        $object = $this->CRUD->getObjectById($id);
        $this->content('./layout/object.php',[
            'object' => $object
        ]);
        $this->footer();
    }

    public function content($view,$data = []){
        require_once $view;
    }

    protected function header(){
        require_once './layout/header.php';
    }

    protected function footer(){
        require_once './layout/footer.php';
    }
}

/*
 *


$m = $CRUD->calculateTheDistance(
            [
                'lat' => 53.5303000,
                'long' => 49.3461000
            ],
            [
                'lat' => 53.2000700,
                'long' => 50.1500000
            ]
        );




 */