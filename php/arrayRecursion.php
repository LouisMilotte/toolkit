<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function arrayRecursion(Array $array){
    $result = "";
    foreach($array as $key=>$value){
        if(is_array($value)){
            $result.= arrayRecursion($value);
        }
        $result.=$key."::".$value."\r\n";
    }
    return $result;
}