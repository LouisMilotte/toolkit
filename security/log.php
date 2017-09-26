<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * List derived from: https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet
 */

$pdo = new PDO('mysql:host=localhost;dbname=logs','root','',array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
function hasInjection($input){
    return preg_match("[\0\b\t\n\r\Z\"\'\\\_;=]+",$input);
}
function log($pdo,$request){
    $q = $pdo->prepare("INSERT INTO log (remote_addr,http_request) VALUES (:addr,:http)");
    $q->bindParam(':ip',$_SERVER['REMOTE_ADDR'],PDO::PARAM_STR);
    $q->bindParam(':http',$request,PDO::PARAM_STR);
    $q->execute();
}
foreach($_GET as $key=>$value){
    if(hasInjection($value)|| hasInjection($key)){
        log($pdo,$_SERVER['REQUEST_URI']);
        return false;
    }
}

foreach($_POST as $key=>$value){
    if(hasInjection($value)|| hasInjection($key)){
        log($pdo,$_SERVER['REQUEST_URI']);
        return false;
    }
}