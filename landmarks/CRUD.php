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

    public function getCategoryType(){
        $query = $this->db->query("SELECT * FROM category_type");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function calculateTheDistance ($input, $output) {
        $EARTH_RADIUS = 6372795;
        // перевести координаты в радианы
        $lat1 = $input['lat'] * M_PI / 180;
        $lat2 = $input['long'] * M_PI / 180;
        $long1 = $output['lat'] * M_PI / 180;
        $long2 = $output['long'] * M_PI / 180;

        // косинусы и синусы широт и разницы долгот
        $cl1 = cos($lat1);
        $cl2 = cos($lat2);
        $sl1 = sin($lat1);
        $sl2 = sin($lat2);
        $delta = $long2 - $long1;
        $cdelta = cos($delta);
        $sdelta = sin($delta);

        // вычисления длины большого круга
        $y = sqrt(pow($cl2 * $sdelta, 2) + pow($cl1 * $sl2 - $sl1 * $cl2 * $cdelta, 2));
        $x = $sl1 * $sl2 + $cl1 * $cl2 * $cdelta;

        //
        $ad = atan2($y, $x);
        $dist = $ad * $EARTH_RADIUS;

        return round($dist / 1000);
    }
}