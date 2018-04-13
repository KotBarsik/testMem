<?php
/*
$data = file_get_contents('http://149.154.71.22:88/');
$data = (json_decode($data, true))['message'];
*/


if($_GET['get'] == 'get'){
    echo file_get_contents('log.txt');
    exit();
}

file_put_contents('log.txt',file_get_contents('php://input'));

$data = file_get_contents('php://input');
$data = (json_decode($data, true))['message'];

require_once 'Telegram.php';
require_once 'YandexTranslate.php';

class App
{
    protected $menu = array(
        "keyboard" =>
            array(
                array(
                    array(
                        "text" => "en"
                    ),
                    array(
                        "text" => "ru"
                    )
                )
            ),
        "one_time_keyboard" => true,
        "resize_keyboard" => true
    );

    /**
     * @var PDO
     */
    protected $db;

    /**
     * @var Telegram
     */
    protected $telegram;

    protected $data;

    public function __construct()
    {
        try {
            $this->db = new PDO('sqlite:./db.sqlite');
            $this->telegram = new Telegram();
        } catch
        (Exception $exception) {
            exit($exception->getMessage());
        }
    }

    public function run($data){
        $chat_id = $data['chat']['id'];
        $userData = $this->getUserById($chat_id);

        if(!$chat_id){return;}

        if($userData[0]['id']){
            $userSettings = json_decode($userData[0]['data'],true);
            if($userData[0]['status'] == 'on' || $userData[0]['status'] == 'off'){
                $yt = new YandexTranslate();

                //Определяем язык текста, пока что не нужно
                $detected = $yt->detected(array(
                    'text' => $data['text']
                ));

                $translateText = $yt->translate(array(
                    'text' => $data['text'],
                    'lang' => $userSettings['lang']
                ));

                $text = $translateText['text'][0] ? $translateText['text'][0] : $data['text'];
                $this->allSubscribers($text);

            }
            else{
                $messages = array(
                    'Eng' => 'Wait until you are approved by the administrator',
                    'Rus' => 'Дождитесь пока вас одобрит администратор'
                );

                $this->reply($messages[$userSettings['lang']],$chat_id);
            }
        }
        elseif($this->thisCommands($data['text'])){
            if($data['text'] == '/start'){
                $this->replyKeyboard($chat_id,'Your language
Ваш язык');
            }elseif ($data['text'] == 'Eng' || $data['text'] == 'Rus'){
                $result = $this->createUser($chat_id,json_encode(array(
                    'lang' => $data['text']
                )));

                if($result){

                    $messages = array(
                        'en' => 'Ok, wait until you are approved by the administrator',
                        'ru' => 'Хорошо, дождитесь пока вас одобрит администратор'
                    );

                    $this->reply($messages[$data['text']],$chat_id);
                }
            }
        }
    }

    protected function thisCommands($command){
        $commands = array(
            '/start' => true,
            'en' => true,
            'ru' => true
        );

        return $commands[$command] ? $commands[$command] : false;
    }

    protected function getAllUsers(){
        $users = $this->db->query("SELECT * FROM users");
        $users->execute();
        return $users->fetchAll(PDO::FETCH_ASSOC);
    }

    protected function getUserById($userID){
        $users = $this->db->query("SELECT * FROM users WHERE id=?");
        $users->execute(array($userID));
        return $users->fetchAll();
    }

    protected function createUser($userId,$data){
        $query = $this->db->query('INSERT INTO users (`id`,`data`) VALUES (?,?)');
        return $query->execute(array($userId,$data));
    }

    protected function reply($mesg,$chatId,$type = 'html'){
        $sendRessult = $this->telegram->sendMessage(array(
            'chat_id' => $chatId,
            'text' => $mesg,
            'parse_mode' => $type
        ));

        return $sendRessult;
    }

    protected function replyKeyboard($chatId,$text){
        $sendRessult = $this->telegram->sendMessage(array(
            'chat_id' => $chatId,
            'text' => $text,
            'parse_mode' => 'html',
            'reply_markup' => json_encode($this->menu),
        ));

        return $sendRessult;
    }

    protected function allSubscribers($messges){
        foreach ($this->getAllUsers() as $user){
            if($user['id']) {
                $this->reply($messges,$user['id']);
            }
        }
    }
}

$app = (new App)->run($data);

unset($app);