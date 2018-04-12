<?php
class Telegram
{
    private $token = '543899124:AAFGHVBLv4FFEqmo7cYHaiCrU42LMxCbMZA';

    public $apiLink = 'https://api.telegram.org/';

    /**
     * Отправка сообщений https://tlgrm.ru/docs/bots/api#sendmessage
     */
    public function sendMessage(array $params)
    {
        $method = 'sendmessage';
        $link = $this->prepareRequest($method);
        return $this->request($link, $params);
    }

    /**
     * Отправка photo https://tlgrm.ru/docs/bots/api#sendphoto
     */
    public function sendPhoto(array $params)
    {
        $method = 'sendphoto';
        $link = $this->prepareRequest($method);
        $this->request($link, $params);
    }

    /**
     * Отправка photo https://tlgrm.ru/docs/bots/api#getUpdates
     */
    public function getUpdates(array $params)
    {
        $method = 'getUpdates';
        $link = $this->prepareRequest($method);
        return $this->request($link, $params);
    }

    private function prepareRequest($method)
    {
        $url = $this->apiLink . 'bot' . $this->token . '/' . $method;
        return $url;
    }

    private function request($url, $params)
    {
        $curl = curl_init($url);
        curl_setopt_array($curl, array(
            CURLOPT_POST => true,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_SSL_VERIFYPEER => true,
            CURLOPT_SSL_VERIFYHOST => 2,
            CURLOPT_SAFE_UPLOAD => true,
            CURLOPT_POSTFIELDS => $params,
            CURLOPT_HTTPHEADER => array("Content-Type:multipart/form-data")
        ));
        $result = curl_exec($curl);
        $curlInfo = curl_getinfo($curl);
        $curlError = curl_error($curl);

        return json_decode($result, true);
    }
}