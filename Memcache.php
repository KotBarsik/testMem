<?php
namespace API;
class Memcache{

    /**
     * @var array
     */
    private $config = [];

    /**
     * @var \Memcache
     */
    private $memcache;

    /**
     * Memcache constructor.
     * @param $host
     * @param int $port
     */
    public function __construct($host, $port = 11211)
    {
        $this->config['host'] = $host;
        $this->config['port'] = $port;
    }

    /**
     * @param $key
     * @return array|string
     */
    public function get($key){
        return $this->exec(__FUNCTION__,func_get_args());
    }

    /**
     * @param $key
     * @return bool
     */
    public function delete($key){
        return $this->exec(__FUNCTION__,func_get_args());
    }

    /**
     * @param $key
     * @param $data
     */
    public function set($key,$var){
        return $this->exec(__FUNCTION__,func_get_args());
    }

    /**
     * @param $key
     * @return array|string
     */
    public function __get($key)
    {
        return $this->get($key);
    }

    /**
     * @param $key
     * @param $var
     * @return bool
     */
    public function __set($key,$var)
    {
        return $this->set($key,$var);
    }

    /**
     * @param $operation
     * @param $arg
     * @return array|bool|string
     */
    public function exec($operation,$arg){
        try {
            /**
             * Выполняем настоящий коннект если не получается то внутри connect выбрасываем исключение
             */
            $this->connect();
            switch ($operation) {
                case 'get':
                case 'delete':
                    list($key) = $arg;
                    return $this->memcache->$operation($key);
                break;
                case 'set':
                    list($key,$var) = $arg;
                    return $this->memcache->$operation($key,$var);
                break;
            }
        }
        catch (\Exception $e){
            /**
             * Две ошибки по кторым мы будем пытаться востановить соеденение и выполнить еще раз
             */
            if($e->getCode() == 205 || $e->getCode() == 204) {
                sleep(5);
                return $this->exec($operation, $arg);
            }
        }

        return false;
    }

    /**
     * Подключаемся к серверу
     * @return bool
     */
    private function connect(){
        if($this->memcache == null) {
            $this->memcache = new \Memcache();
            $connect = $this->memcache->connect($this->config['host'], $this->config['port']);
            if ($connect == false) {
                $this->memcache = null;
                throw new \Exception('Соеденение не установлено', 204);
            }
        }
        elseif (!$this->connectStatus()){
            $this->memcache = null;
            throw new \Exception('Соеденение потеряно', 205);
        }
    }

    /**
     * Проверяем состояние сервера
     * @return int
     */
    private function connectStatus(){
        return $this->memcache->getServerStatus($this->config['host'], $this->config['port']);
    }
}