<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * these functions are called by jQuery
 */
function is_email($input,$regex = ".*[@].*[\.][\w]{2,3}"){
    echo preg_match($regex, $input);
}

function is_password($input){
    $strength = 0;
    if(strlen($input) >= 8){
        $strength+=1;
    }elseif (__password_has_uppercase($input)) {
        $strength+=1;
    }elseif(__password_has_special($input)){
        $strength+=1;
    }else{
        return false;
    }
    echo $strength;
}

function detect_injection($input){
    if(preg_match("[\0\'\"\b\n\r\t\Z\\\%\_]+",$input)){
        echo 1;
    }elseif(preg_match("(?=SELECT | DROP | ALTER | CREATE USER | GRANT ALL | DELETE FROM)",$input)){
        echo 1;
    }else{
        return false;
    }
    echo 1;
}

function __password_has_uppercase($input){
    return preg_match("[A-Z]+", $input);
}
function __password_has_special($input){
    return preg_match("[!@$&.]+", $input);
}