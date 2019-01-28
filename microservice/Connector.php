<?php
/**
 * Created by PhpStorm.
 * User: salavat
 * Date: 28/01/2019
 * Time: 19:30
 */
namespace API;
class Connector
{
    /**
     * @var \Memcache
     */
    private $memcache = null;

    private $host;

    private $port;

    /**
     * @return \Memcache
     */
    public  function memcache(){
        if(!is_null($this->memcache)) {
            if ($this->connectStatus()) {
                return $this->memcache;
            }
        }

        return $this->connected();
    }

    /**
     * @return int
     */
    private  function connectStatus(){
        return $this->memcache->getServerStatus($this->host, $this->port);
    }

    /**
     * @return \Memcache
     */
    private  function connected(){
        $this->memcache = new \Memcache();
        if (!$this->memcache->connect($this->host, $this->port)) {
            sleep(5);
            return $this->connected();
        }

        return $this->memcache;
    }

    /**
     * @param $port
     */
    public function setProt($port){
        $this->port = $port;
    }

    /**
     * @param $host
     */
    public function setHost($host){
        $this->host = $host;
    }
}