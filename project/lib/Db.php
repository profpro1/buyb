<?php
namespace project\lib;

use PDO;

class Db {

    protected $db;

    public function __construct() {

        $this->db = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.'', DB_USER, DB_PASS);
    }

    public function query($sql, $params = []) {
        $stmt = $this->db->prepare($sql);
    if (!empty($params)) {
        foreach ($params as $key => $val) {
    if (is_int($val)) {
        $type = PDO::PARAM_INT;
    } else {
        $type = PDO::PARAM_STR;
    }
        $stmt->bindValue(':'.$key, $val, $type);
    }
    }
        $stmt->execute();
    return $stmt;
    }

    public function row($sql, $params = []) {
        $result = $this->query($sql, $params);
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }

    public function column($sql, $params = []) {
        $result = $this->query($sql, $params);
        return $result->fetchColumn();
    }

    public function lastInsertId() {
        return $this->db->lastInsertId();
}

}
