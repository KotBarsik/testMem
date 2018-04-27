<?php
class CRUD
{
    /**
     * @var PDO
     */
    protected $db;

    public function __construct()
    {
        try {
            $this->db = new PDO("mysql:host=db;dbname=landmarks", 'root', 'Qwerty123');
            $this->db->exec("set names utf8");
        } catch (Exception $exception) {
            exit($exception->getMessage());
        }
    }

    public function getCategory(){
        $query = $this->db->query("SELECT * FROM category");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCategoryTypeByName($type){
        $query = $this->db->prepare(
            "SELECT category.*,category_type.* FROM category LEFT JOIN category_type ON category_type.category_id = category.id AND category_type.status = 'on' WHERE category.eng_name=:type"
        );
        $query->bindParam(':type', $type);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCategoryType(){
        $query = $this->db->query("SELECT * FROM category_type WHERE status = 'on'");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getDistanceBetweenPointsNew($latitude1, $longitude1, $latitude2, $longitude2) {
        $theta = $longitude1 - $longitude2;
        $miles = (sin(deg2rad($latitude1)) * sin(deg2rad($latitude2))) + (cos(deg2rad($latitude1)) * cos(deg2rad($latitude2)) * cos(deg2rad($theta)));
        $miles = acos($miles);
        $miles = rad2deg($miles);
        $miles = $miles * 60 * 1.1515;
        $feet = $miles * 5280;
        $yards = $feet / 3;
        $kilometers = $miles * 1.609344;
        $meters = $kilometers * 1000;
        return compact('miles','feet','yards','kilometers','meters');
    }

    public function calculateTheDistance ($input, $output) {
        $m = $this->getDistanceBetweenPointsNew($input['lat'],$input['long'],$output['lat'],$output['long']);
        return round($m['kilometers'],1);
    }

    public function insertItems($data){
        $inserts = [];
        foreach ($data as $items){
            $title = htmlentities($items['title']);
            $description = htmlentities($items['description']);
            $img = json_encode([$items['img']]);
            $query = $this->db->prepare("INSERT INTO items 
(`title`,`img`,`availability`,`entertainment`,`long`,`lat`,`description`,`city`,`place`,`cat`) VALUES 
('{$title}','{$img}','{$items['availability']}','{$items['entertainment']}','{$items['long']}','{$items['lat']}','{$description}','{$items['city']}','{$items['place']}','{$items['cat']}')
");
            $query->execute();
            $inserts[] = $this->db->lastInsertId();
        }

        return $inserts;
    }

    public function getItemsByObjectType($objectType){
        $query = $this->db->prepare(
            "SELECT * FROM items WHERE cat=:cat"
        );
        $query->bindParam(':cat', $objectType);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getObjectById($id){
        $query = $this->db->prepare(
            "SELECT * FROM items WHERE id=:id"
        );
        $query->bindParam(':id', $id);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}