<?php
/**
 * Created by PhpStorm.
 * User: salavat
 * Date: 31.05.18
 * Time: 18:39
 */

namespace animal\base;


abstract class base implements baseInterface
{
    public $name;
    public $year;
    public $dateOfArrival;
    public $vote;

    public final function vote()
    {
        return $this->vote;
    }

}