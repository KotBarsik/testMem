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
        echo '
        <script>
            $(function(){
                $.stellar({
                    horizontalScrolling: false,
                    verticalOffset: 40
                });
            });
        </script>
		<div class="photo summer" data-stellar-background-ratio="0.5" style="background-position: 50% -32.5px;"><span>Summer</span></div>
		<div class="photo autumn" data-stellar-background-ratio="0.5" style="background-position: 50% 192.5px;"><span>Autumn</span></div>
		<div class="photo winter" data-stellar-background-ratio="0.5" style="background-position: 50% 417.5px;"><span>Winter</span></div>
		<div class="photo spring" data-stellar-background-ratio="0.5" style="background-position: 50% 642.5px;"><span>Spring</span></div>
		<div class="photo summer" data-stellar-background-ratio="0.5" style="background-position: 50% 867.5px;"><span>Summer</span></div>
		<div class="photo autumn" data-stellar-background-ratio="0.5" style="background-position: 50% 1092.5px;"><span>Autumn</span></div>
		<div class="photo winter" data-stellar-background-ratio="0.5" style="background-position: 50% 1317.5px;"><span>Winter</span></div>
';
        foreach ($this->category as $cat){
            //echo '<div><img src="./images/'.$cat['eng_name'].'.jpg" /></div>';
        }
    }

    protected function header(){
        require_once './layout/header.php';
    }

    protected function footer(){
        require_once './layout/footer.php';
    }
}