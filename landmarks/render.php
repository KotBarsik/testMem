<?php
class render
{
    protected $category;
    protected $categoryType;

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

        $this->category = $CRUD->getCategory();
        $this->categoryType = $CRUD->getCategoryType();
    }

    public function renderMainContent($data){
        $this->header();
        $this->content('./layout/content.php');
        $this->footer();
    }

    public function renderContentType($data){
        //$this->header();
        $this->content('./layout/contentType.php');
        //$this->footer();
    }

    public function renderContentObject($data){
        //$this->header();
        $this->content('./layout/contentObject.php');
        //$this->footer();
    }


    public function content($view){
        require_once $view;
    }

    protected function header(){
        require_once './layout/header.php';
    }

    protected function footer(){
        require_once './layout/footer.php';
    }
}