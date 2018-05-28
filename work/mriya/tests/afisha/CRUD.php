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
            $this->db = new PDO("mysql:host=db;dbname=events", 'root', 'Qwerty123');
            $this->db->exec("set names utf8");
        } catch (Exception $exception) {
            exit($exception->getMessage());
        }

    }

    public function getAllEventsType()
    {
        $query = $this->db->query("SELECT * FROM event_type");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAllPosters()
    {
        $query = $this->db->query("SELECT * FROM poster");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAllEvents()
    {
        $query = $this->db->query("SELECT * FROM events");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getPostEvents()
    {
        $query = $this->db->query(
            "SELECT
                  events.id,events.title,events.text,events.start_time,events.stop_time,
                  SUBSTR(DATE_FORMAT(events.start_time,'%M'),1,3) as events_start_month,
                  DATE_FORMAT(events.start_time,'%d') as events_start_day,
                  concat(DATE_FORMAT(events.start_time,'%Y-%m-%d %h:%i - '),DATE_FORMAT(events.stop_time,'%h:%i')) as events_start_preview,
                  DATE_FORMAT(events.start_time,'%Y-%m-%d') as events_start_time_ymd,
                  DATE_FORMAT(events.stop_time,'%Y-%m-%d') as events_stop_time_ymd,
                  event_type.name as event_name
                FROM events
                  LEFT JOIN event_type ON event_type.id = events.event_type
                HAVING events_start_time_ymd < CURDATE()
                ORDER BY events.start_time DESC LIMIT 100"
        );
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getUpcomingEvents()
    {
        $query = $this->db->query(
            "SELECT
                  events.id,events.title,events.text,events.start_time,events.stop_time,
                  SUBSTR(DATE_FORMAT(events.start_time,'%M'),1,3) as events_start_month,
                  DATE_FORMAT(events.start_time,'%d') as events_start_day,
                  concat(DATE_FORMAT(events.start_time,'%Y-%m-%d %h:%i - '),DATE_FORMAT(events.stop_time,'%h:%i')) as events_start_preview,
                  DATE_FORMAT(events.start_time,'%Y-%m-%d') as events_start_time_ymd,
                  DATE_FORMAT(events.stop_time,'%Y-%m-%d') as events_stop_time_ymd,
                  event_type.name as event_name
                FROM events
                  LEFT JOIN event_type ON event_type.id = events.event_type
                HAVING events_start_time_ymd >= CURDATE()
                ORDER BY events.start_time DESC LIMIT 100"
        );
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEventAllDataById($id)
    {
        $query = $this->db->prepare("SELECT * FROM events WHERE events.id=?");

        $query->execute(array($id));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEventTypeAllDataById($id)
    {
        $query = $this->db->prepare("SELECT * FROM event_type WHERE event_type.id=?");

        $query->execute(array($id));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getPosterAllDataById($id){
        $query = $this->db->prepare("SELECT * FROM poster WHERE poster.id=?");

        $query->execute(array($id));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEventById($id)
    {
        $query = $this->db->prepare(
            "SELECT title,text,
            concat(DATE_FORMAT(events.start_time,'%Y-%m-%d %h:%i - '),DATE_FORMAT(events.stop_time,'%h:%i')) as events_start_preview
          FROM events WHERE events.id=?"
        );

        $query->execute(array($id));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function updateEventById($data)
    {
        $query = $this->db->prepare("UPDATE events SET title = :title,text = :text,start_time=:start_time,stop_time=:stop_time,event_type=:event_type WHERE id=:id");
        $query->bindParam(':start_time', str_replace('T',' ',$data['startTime']));
        $query->bindParam(':stop_time', str_replace('T',' ',$data['stopTime']));
        $query->bindParam(':title', $data['title']);
        $query->bindParam(':text', $data['text']);
        $query->bindParam(':id', $data['id']);
        $query->bindParam(':event_type', $data['category']);
        $result = $query->execute();
        return $result;
    }

    public function updateCategoryById($data)
    {
        $query = $this->db->prepare("UPDATE event_type SET name = :name WHERE id=:id");
        $query->bindParam(':name', json_encode(array(
            'ru' => $data['ru'],
            'en' => $data['en'],
        ),JSON_UNESCAPED_UNICODE));
        $query->bindParam(':id', $data['id']);
        $result = $query->execute();
        return $result;
    }

    public function updatePosterById($data){
        $query = $this->db->prepare("UPDATE poster SET title = :title,html = :html,start=:start,stop=:stop WHERE id=:id");
        $query->bindParam(':start', str_replace('T',' ',$data['startTime']));
        $query->bindParam(':stop', str_replace('T',' ',$data['stopTime']));
        $query->bindParam(':title', $data['title']);
        $query->bindParam(':html', $data['text']);
        $query->bindParam(':id', $data['id']);
        $result = $query->execute();
        return $result;
    }

    public function createEventType($data){
        $name = json_encode(array(
            'ru' => $data['ru'],
            'en' => $data['en'],
        ),JSON_UNESCAPED_UNICODE);
        $query = $this->db->prepare("INSERT INTO event_type (`name`) VALUES ('{$name}')");
        $result = $query->execute();
        return $this->db->lastInsertId();
    }

    public function createEvent($data){
        $text = htmlentities(addslashes($data['text']));
        $query = $this->db->prepare(
"INSERT INTO events 
      (`title`,`text`,`start_time`,`stop_time`,`event_type`) 
      VALUES 
      ('{$data['title']}','{$text}','{$data['startTime']}','{$data['stopTime']}',{$data['category']})");
        $result = $query->execute();
        return $this->db->lastInsertId();
    }

    public function createPoster($data){
        $text = htmlentities(addslashes($data['text']));
        $query = $this->db->prepare(
            'INSERT INTO poster (`title`,`html`,`images`,`start`,`stop`) VALUES (:title,:text,"",:startTime,:stopTime)'
        );
        $query->bindParam(':title', $data['title']);
        $query->bindParam(':startTime', $data['startTime']);
        $query->bindParam(':stopTime', $data['stopTime']);
        $query->bindParam(':text', $text);
        $result = $query->execute();
        return $this->db->lastInsertId();
    }

    public function deleteEventType($id){
        $query = $this->db->prepare("DELETE FROM event_type WHERE id=:id");
        $query->bindParam(':id', $id);
        $result = $query->execute();
        return $result;
    }

    public function deleteEvent($id){
        $query = $this->db->prepare("DELETE FROM events WHERE id=:id");
        $query->bindParam(':id', $id);
        $result = $query->execute();
        return $result;
    }

    public function deletePoster($id){
        $query = $this->db->prepare("DELETE FROM poster WHERE id=:id");
        $query->bindParam(':id', $id);
        $result = $query->execute();
        return $result;
    }

    public function checkUser($login,$pwd){
        $query = $this->db->prepare("SELECT * FROM users WHERE login=? AND pwd=?");
        $result = $query->execute(array($login,$pwd));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function updateImagesById($imgName,$id){
        $query = $this->db->prepare("UPDATE poster SET images = :images WHERE id=:id");
        $query->bindParam(':images', $imgName);
        $query->bindParam(':id', $id);
        $result = $query->execute();
        return $result;
    }
}