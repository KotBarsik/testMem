<?php
class render
{
    protected $category;
    protected $categoryType;
    protected $maps = array(
        'historical' => 'историческому',
        'natural' => 'природным',
        'technogenic' => 'техногенному',
        'cultural' => 'культурному',
        'archeology' => 'археологическому',
        'history' => 'историческому',
        'architecture' => 'архитектурному',
        'palaces' => 'дворцам и замкам',
        'excavations' => 'раскопкам',
        'fortresses' => 'крепостям',
        'religion' => 'религиям',
        'ancient_cities' => 'древним городам',
        'cliffs' => 'скалам',
        'mountains' => 'горам',
        'species' => 'видовым местам',
        'waterfalls' => 'водопадам',
        'caves' => 'пещерам',
        'seas' => 'морям',
        'lakes' => 'озерам',
        'beaches' => 'пляжам',
        'reserves' => 'заповедникам',
        'rivers' => 'рекам',
        'springs' => 'родникам',
        'campings' => 'турстоянкам',
        'capes' => 'мысам',
        'neglected' => 'заброшенным объектам',
        'transport' => 'транспорту',
        'camping' => 'кемпингам',
        'cable_cars' => 'канатным дорогам',
        'observatory' => 'обсерваториям',
        'underwater' => 'подводным объектам',
        'museums' => 'музеям',
        'parks' => 'паркам',
        'theaters' => 'театрам',
        'zoos' => 'зоопаркам',
        'water_parks' => 'аквапаркам',
        'dolphinariums' => 'дельфинариям',
        'aquarium' => 'аквариумам',
        'botanical_gardens' => 'ботаническим садам'
    );
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
        $getCategoryTypeByNameOne = $this->CRUD->getCategoryTypeByNameOne($type);
        $back = 'Вернуться к '.$this->maps[$getCategoryTypeByNameOne[0]['eng_name']];
        if($type != 'categories') {
            $contentType = $this->CRUD->getCategoryTypeByName($type);
            $contentObjectByContentType = $this->CRUD->getContentObjectByContentType($type);

            $this->content('./layout/contentType.php', [
                'back' => $back,
                'contentType' => $contentType,
                'type' => $type,
                'contentObjectByContentType' => $contentObjectByContentType
            ]);
        }
        else{
            $back = 'Вернуться к списку';
            $categories = $this->CRUD->getCategoryType();
            $this->content('./layout/categories.php', [
                'back' => $back,
                'categories' => $categories
            ]);
            exit();
        }
        //$this->footer();
    }

    public function renderContentObject($objectType){
        $back = 'Вернуться к ';
        $this->header();
        $contentType = $this->CRUD->getItemsByObjectType($objectType);
        $categoryById = $this->CRUD->getCategoryTypeById((int)$objectType);
        $back .= $this->maps[$categoryById[0]['eng_name']];
        $this->content('./layout/contentObject.php',[
            'back' => $back,
            'contentType' => $contentType
        ]);
        $this->footer();
    }

    public function renderObject($id){
        $this->header();
        $object = $this->CRUD->getObjectById($id);
        //$back = 'Вернуться к списку';
        $this->content('./layout/object.php',[
            //'back' => $back,
            'object' => $object
        ]);
        $this->footer();
    }

    public function renderJson($type){
        $json = $this->CRUD->getItemsByObjectType(2);
        $newFormat = [];

        foreach ($json as $id => $item){
            $newFormat[$id]['title'] = $item['title'];
            $newFormat[$id]['img'] = json_decode($item['img'])[0];
            $newFormat[$id]['lat'] = $item['lat'];
            $newFormat[$id]['long'] = $item['long'];
        }

        return $newFormat;
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