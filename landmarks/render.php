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

    public function render($data){
        $this->header();
        $this->content();
        $this->footer();
    }

    public function content(){
        require_once './layout/content.php';
    }

    protected function header(){
        require_once './layout/header.php';
    }

    protected function footer(){
        require_once './layout/footer.php';
    }
}