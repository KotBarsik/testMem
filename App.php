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

    protected $inlineMenu = array(
        "inline_keyboard" =>
            array(
                array(
                    array(
                        "text" => "asd",
                        "callback_data" => 'id:'
                    )
                )
            )
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
            $this->db = new PDO("mysql:host=db;dbname=bot", 'root', 'Qwerty123');
            $this->db->exec("set names utf8");
            $this->telegram = new Telegram();
        } catch
        (Exception $exception) {
            exit($exception->getMessage());
        }
    }

    public function run($data){
        if(!isset($data['chat_instance'])) {
            $chat_id = $data['chat']['id'];
            $userData = $this->getUserById($chat_id);

            if (!$chat_id) {
                return;
            }

            if ($userData[0]['id']) {
                $userSettings = json_decode($userData[0]['data'], true);
                if ($userData[0]['status'] == 'on') {
                    $users = $data['from']['first_name'] . ' ' . $data['from']['last_name'];
                    $this->allSubscribers($data['text'], $chat_id, $users);

                } else {
                    $messages = array(
                        'en' => 'Wait until you are approved by administrator',
                        'ru' => 'Дождитесь пока вас одобрит администратор'
                    );

                    $this->reply($messages[$userSettings['lang']], $chat_id);
                }
            } elseif ($this->thisCommands($data['text'])) {
                if ($data['text'] == '/start') {
                    $this->replyKeyboard($chat_id, 'Your language
Ваш язык');
                } elseif ($data['text'] == 'en' || $data['text'] == 'ru') {
                    $result = $this->createUser($chat_id, json_encode(array(
                        'lang' => $data['text']
                    )),$data['chat']['first_name'].' '.$data['chat']['last_name']);

                    if ($result) {

                        $messages = array(
                            'en' => 'Ok, wait until you are approved by administrator',
                            'ru' => 'Хорошо, дождитесь пока вас одобрит администратор'
                        );

                        $this->reply($messages[$data['text']], $chat_id);
                    }
                }
                elseif ($data['text'] == '/lang'){
                    $this->replyKeyboard($chat_id, 'Your language
Ваш язык');
                }
            } else {
                $this->replyKeyboard($chat_id, 'Your language
Ваш язык');
            }
        }else{
            $messagesId = (int)str_replace('id:','',$data['data']);
            $messages = $this->getMessagesById($messagesId);
            $this->repayCallback($data["id"],$messages[0]['messages']);
        }
        return;
    }

    protected function thisCommands($command){
        $commands = array(
            '/start' => true,
            '/lang' => true,
            'en' => true,
            'ru' => true
        );

        return $commands[$command] ? $commands[$command] : false;
    }

    protected function getAllUsers(){
        $users = $this->db->prepare("SELECT * FROM users");
        $users->execute();
        return $users->fetchAll(PDO::FETCH_ASSOC);
    }

    protected function getUserById($userID){
        $users = $this->db->prepare("SELECT * FROM users WHERE id=?");
        $users->execute(array($userID));
        return $users->fetchAll();
    }

    protected function createUser($userId,$data,$name){
        if(is_numeric($userId)) {
            $query = $this->db->prepare('INSERT INTO users (`id`,`data`,`status`,`name`) VALUES (?,?,"off",?)');
            return $query->execute(array($userId, $data, $name));
        }

        return false;
    }

    protected function createMessages($messages){
        if($messages) {
            $query = $this->db->prepare('INSERT INTO messages (`messages`) VALUES (?)');
            $result = $query->execute(array($messages));
            $insertID = $this->db->lastInsertId();
            return $insertID;
        }

        return false;
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
        $messagesInsertId = $this->createMessages($messges);
        ///Тут добавим сообщение в базу, отправим всем , и создадим кнопку с просмотром оригинального сообщения
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
                $langOriginalText = array(
                    'en' => 'original',
                    'ru' => 'оригинал'
                );

                $this->inlineMenu['inline_keyboard'][0][0]['text'] = $langOriginalText[$data['lang']];

                $text .= $translateText['text'][0] ? $translateText['text'][0] : '';
                //$this->reply($text,$user['id']);
                $this->createButtonOriginalSms($text,$user['id'],$messagesInsertId);
            }
        }
    }

    public function repayCallback($id,$messages){
        $sendRessult = $this->telegram->answerCallbackQuery(array(
            'callback_query_id' => $id,
            'text' => $messages,
            'show_alert' => 1
        ));

        return $sendRessult;
    }

    public function getMessagesById($id){
        $users = $this->db->query("SELECT * FROM messages WHERE id=?");
        $users->execute(array($id));
        return $users->fetchAll(PDO::FETCH_ASSOC);
    }

    public function createButtonOriginalSms($text,$chatId,$messagesId){
        $this->inlineMenu['inline_keyboard'][0][0]['callback_data'] = 'id:'.$messagesId;
        $sendRessult = $this->telegram->sendMessage(array(
            'chat_id' => $chatId,
            'text' => $text,
            'parse_mode' => 'html',
            'reply_markup' => json_encode($this->inlineMenu),
        ));

        return $sendRessult;
    }
}