<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
try{
$pdo = new PDO('mysql:host=localhost;dbname=logs','root','',array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));

$q = $pdo->prepare("SELECT remote_addr, http_request FROM log WHERE http_request REGEXP '[^a-zA-Z0-9=\.]+';");

if($argv[0] == '-ip'){
    $q = $pdo->prepare("SELECT remote_addr, http_request FROM log WHERE remote_addr=:ip AND http_request REGEXP '[^a-zA-Z0-9=\.]+'");
    $q->bindParam(':ip',$argv[1],PDO::PARAM_STR);
}
echo "The following IP addresses executed suspected injections:"."\r\n";

    $q->execute();
    if($q->rowCount() <= 0){
        echo "No results found."."\r\n";
    }
foreach($q->fetchAll(PDO::FETCH_ASSOC) as $row){
        echo $row['remote_addr'].' requested '.$row['http_request']."\r\n"; 
}
}catch(PDOException $e){
    var_dump($e);
}