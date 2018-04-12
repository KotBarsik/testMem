<?php

class YandexTranslate {
    protected $apiUrl = 'https://translate.yandex.net/api/v1.5/tr.json';
    protected $key = 'trnsl.1.1.20180412T205236Z.920b2b73e8fbb6bf.819a80a9cd19a1dabadb60d45a1af7397bedfc6e';

    private function request($url, $params)
    {
        $curl = curl_init($url.http_build_query($params));
        curl_setopt_array($curl, array(
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_SSL_VERIFYPEER => true,
            CURLOPT_SSL_VERIFYHOST => 2,
            CURLOPT_SAFE_UPLOAD => true,
            CURLOPT_HTTPHEADER => array("Content-Type:multipart/form-data")
        ));
        $result = curl_exec($curl);
        $curlInfo = curl_getinfo($curl);
        $curlError = curl_error($curl);

        return json_decode($result, true);
    }

    public function detected(array $params)
    {
        $params['key'] = $this->key;
        $method = 'detect';
        $link = $this->prepareRequest($method);
        return $this->request($link, $params);
    }

    public function translate(array $params)
    {
        $params['key'] = $this->key;
        $method = 'translate';
        $link = $this->prepareRequest($method);
        return $this->request($link, $params);
    }

    private function prepareRequest($method)
    {
        $url = $this->apiUrl . '/' . $method.'?';
        return $url;
    }
}
