<?php

class DB
{
    const DB_NAME = 'sql6412187';
    const DB_HOST = 'sql6.freesqldatabase.com:3306';
    const DB_USERNAME = 'sql6412187';
    const DB_PASSWORD = 'NzsVZzmjvY';

    protected $db;
    public function __construct()
    {
        $this->db = new PDO(
            'mysql:host='
                . self::DB_HOST . ';dbname=' . self::DB_NAME,
            self::DB_USERNAME,
            self::DB_PASSWORD
			
       )  or die('Cannot connect to db');
		
        return $this->db;
    }

    function getPDO()
    {
        return $this->db;
    }
    function getMax_id($table)
    {
        $sql = "SELECT MAX(id) FROM `$table` ";
        $result = $this->db->prepare($sql);
        $result->execute();
        $max = $result->fetchColumn();
        return $max;
    }
    
    function close()
    {
        $this->db = null;
    }
}
