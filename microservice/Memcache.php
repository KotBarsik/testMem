<?php
namespace API;
use API\Connector;
class Memcache{

    public $connect;

    /**
     * Memcache constructor.
     * @param $host
     * @param int $port
     */
    public function __construct($host, $port = 11211)
    {
        $this->connect = new Connector();
        $this->connect->setProt($port);
        $this->connect->setHost($host);
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
        $memcache = $this->connect->memcache();
        switch ($operation) {
            case 'get':
            case 'delete':
                list($key) = $arg;
                $result =  $memcache->$operation($key);
            break;
            case 'set':
                list($key,$var) = $arg;
                $result =  $memcache->$operation($key,$var);
            break;
        }

        return $result;
    }
}