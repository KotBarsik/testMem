<?php
class webview{

    /**
     * @var PDO
     */
    protected $db;

    public function __construct()
    {
        try {
            $this->db = new PDO("mysql:host=db;dbname=bot", 'root', 'Qwerty123');
            $this->db->exec("set names utf8");
        } catch (Exception $exception) {
            exit($exception->getMessage());
        }
    }

    public function run(){
        $users = $this->getAllUser();
        foreach ($users as $user){
            $status = $user['status'] == 'off' ? 'on' : 'off';
            $event = $status == 'on' ? 'Включить' : 'Отключить';
            echo PHP_EOL.$user['name'].'<a href="./webview.php?edit='.$user['id'].'&status='.$status.'"> '.$event.'</a><br>';
        }
    }

    public function userUpdate($id,$status){
        if($status == 'on' || $status == 'off'){
            $query = $this->db->prepare('UPDATE users SET status=:status WHERE id=:id');
            $query->bindParam(':status', $status);
            $query->bindParam(':id', $id);
            $result = $query->execute();
            if($result){
                echo 'Данные обновлены<br>';
                return true;
            }
        }

        echo 'Ошибка при обновлении<br>';
    }

    protected function getAllUser(){
        $query = $this->db->query('SELECT * FROM `users` WHERE data IS NOT NULL ');
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
}

$webview = new webview();

if($_GET['edit'] >= 1){
    $webview->userUpdate($_GET['edit'],$_GET['status']);
}

$webview->run();
