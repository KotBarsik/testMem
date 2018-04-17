<?php
class Get
{
    /**
     * @var PDO
     */
    protected $db;

    public function __construct()
    {
        $this->db = new PDO('sqlite:./db.sqlite');
    }

    public function getAllEvents(){
        $query = $this->db->query("SELECT * FROM events LEFT JOIN event_type ON event_type.id = events.id");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function run($id){
        $query = $this->db->query("
          SELECT * FROM events LEFT JOIN event_type ON event_type.id = events.id  WHERE events.id=?
        ");
        $query->execute(array($id));
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        print_r($result);
    }

    public function mapping($data){
        $maps = [];

        foreach ($data as $item){
            $maps[] = array(
                'day' => $item['date_start'],
                'month' => $item['date_start'],
                'title' => $item['title'],
                'eventType' => $item['name_ru'],
                'date' => $item['date_start']
            );
        }

        return $maps;
    }
}

if(is_numeric($_GET['id']) && $_SERVER['HTTP_USER_AGENT']){
    (new Get())->run($_GET['id']);
}