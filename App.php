<?php
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
                $users = $data['from']['first_name'].' '.$data['from']['last_name'];
                $this->allSubscribers($data['text'],$chat_id,$users);

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
            }elseif ($data['text'] == 'en' || $data['text'] == 'ru'){
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
        }else{
            $this->replyKeyboard($chat_id,'Your language
Ваш язык');
        }

        return;
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

    protected function allSubscribers($messges,$myID,$sendUserLogin){
        foreach ($this->getAllUsers() as $user){
            if($user['id'] != $myID && $user['id'] && !$this->thisCommands($messges)) {
                $data = json_decode($user['data'],true);

                $yt = new YandexTranslate();

                $translateText = $yt->translate(array(
                    'text' => $messges,
                    'lang' => $data['lang']
                ));
                $text = $sendUserLogin.'
';
                $text .= $translateText['text'][0] ? $translateText['text'][0] : '';
                $this->reply($text,$user['id']);
            }
        }
    }
}