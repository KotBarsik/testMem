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
        $contentType = $this->CRUD->getCategoryTypeByName($type);
        $this->content('./layout/contentType.php',[
            'contentType' => $contentType,
            'type' => $type
        ]);
        //$this->footer();
    }

    public function renderContentObject($data){
        //$this->header();
        $this->content('./layout/contentObject.php');
        //$this->footer();
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