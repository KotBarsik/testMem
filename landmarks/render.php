<?php
class render
{
    public function __construct(CRUD $CRUD)
    {

    }

    public function render($data){
        $this->header();
        $this->content();
        $this->footer();
    }

    public function content(){
        echo 'asdas';
    }

    protected function header(){
        require_once './layout/header.php';
    }

    protected function footer(){
        require_once './layout/footer.php';
    }
}