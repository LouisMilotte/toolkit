<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserManagement
 *
 * @author Louis
 */
class UserManagement {
    private $pdo;
    
    function __construct(String $dsn,String $user,String $pw,Array $options = array()) {
        include "inputValidation.php";
        try{
            $this->pdo = new PDO($dsn, $username, $password, $options);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch(PDOException $e){
            error_log($e->getMessage());
        }
    }
    function create_salt($characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", $length = 15){
        $salt = "";
        for($i = 0; $i < $length; $i++){
            $salt.= substr($characters,mt_rand(0, strlen($characters)),1);
        }
        return $salt;
    }
    function create_hash($pattern,$algo = "sha256"){
        return hash($algo,$pattern);
    }
    function create_user(Array $userData){
        foreach($userData as $key=>$value){
            if(detect_injection($value)){
                return false;
            }
            $executeValues[] = $value;
        }
        if(!is_email($userData['email'])){
            return false;
        }
        
        if(!is_password($userData['password'])){
            return false;
        }
        try{
            $q = $this->pdo->prepare("INSERT INTO `users` (`username`,`salt`,`hash`,`email`) VALUES (?,?,?,?)");
            $userData['salt'] = $this->create_salt();
            $userData['hash'] = $this->create_hash($userData['password'].$salt);
            unset($userData['password']);
            $q->execute($executeValues);
        }catch(PDOException $e){
            error_log($e->getMessage());
        }
    }
    function read_user($userid){
        if(detect_injection($userid)){
            return false;
        }
        
        try{
            $q = $this->pdo->prepare("SELECT * FROM `users` WHERE id=:userid LIMIT 1");
            $q->bindParam(":userid", $userid,PDO::PARAM_INT);
            $q->execute();
            return $q->fetchAll(PDO::FETCH_ASSOC);
        }catch(PDOException $e){    
            error_log($e->getMessage());
            
        }
    }
    function update_user($userid,$column_name,$new_value){
        
        foreach($userData as $key=>$value){
            if(detect_injection($value)){
                return false;
            }
            $executeValues[] = $value;
        }
        
        try{
            $columnsQ = $this->pdo->query("SHOW COLUMNS FROM `users`");
            $columns = $columnsQ->fetchAll(PDO::FETCH_ASSOC);
            if(!in_array($column_name, $columns)){
                return false;
            }
            $q = $this->pdo->prepare("UPDATE users SET $column_name=? WHERE id=?");
            $q->execute(array($new_value,$userid));
        }catch(PDOException $e){
            error_log($e->getMessage());
        }
    }
    
    function delete_user($userid){
        if(detect_injection($userid)){
            return false;
        }
        
        try{
            $q = $this->pdo->prepare("UPDATE `users` SET soft_delete=1 WHERE id=:userid");
            $q->bindParam(":userid", $userid,PDO::PARAM_INT);
            $q->execute();
        }catch(PDOException $e){    
            error_log($e->getMessage());
            
        }
    }
    
    function __destruct() {
        $this->pdo = null;
    }
}
