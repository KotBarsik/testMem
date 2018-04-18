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

    public function getAllEvents()
    {
        $query = $this->db->query("SELECT * FROM events LEFT JOIN event_type ON event_type.id = events.id");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getPostEvents()
    {
        $query = $this->db->query(
            "SELECT
                  events.id,events.title,events.text,events.start_time,events.stop_time,
                  SUBSTR(DATE_FORMAT(events.start_time,'%M'),1,3) as events_start_month,
                  DATE_FORMAT(events.start_time,'%d') as events_start_day,
                  concat(DATE_FORMAT(events.start_time,'%Y-%m-%d %h:%m - '),DATE_FORMAT(events.stop_time,'%h:%m')) as events_start_preview,
                  DATE_FORMAT(events.start_time,'%Y-%m-%d') as events_start_time_ymd,
                  DATE_FORMAT(events.stop_time,'%Y-%m-%d') as events_stop_time_ymd,
                  event_type.name as event_name
                FROM events
                  LEFT JOIN event_type ON event_type.id = events.event_type
                HAVING events_start_time_ymd < CURDATE()"
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
                  concat(DATE_FORMAT(events.start_time,'%Y-%m-%d %h:%m - '),DATE_FORMAT(events.stop_time,'%h:%m')) as events_start_preview,
                  DATE_FORMAT(events.start_time,'%Y-%m-%d') as events_start_time_ymd,
                  DATE_FORMAT(events.stop_time,'%Y-%m-%d') as events_stop_time_ymd,
                  event_type.name as event_name
                FROM events
                  LEFT JOIN event_type ON event_type.id = events.event_type
                HAVING events_start_time_ymd >= CURDATE()"
        );
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEventById($id)
    {
        $query = $this->db->prepare(
            "SELECT title,text,
            concat(DATE_FORMAT(events.start_time,'%Y-%m-%d %h:%m - '),DATE_FORMAT(events.stop_time,'%h:%m')) as events_start_preview
          FROM events WHERE events.id=?"
        );

        $query->execute(array($id));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}