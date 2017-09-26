<?php

/*
 * requires session
 */

if(session_id() != null):
    //session is live and script can be used
    if($_SESSION['ip'] != $_SERVER['REMOTE_ADDR']){
        /*
         * possible session hijack.
         */
        session_destroy();
        header('HTTP:/1.1 503 Service Unavailable');
        die();
    }
    if(abs(time() - $_SESSION['last_timestamp']) < 3 && $_SESSION['last_request'] == hash('sha384',$_SERVER['REQUEST_URI'])){
        //possible ddos
        session_destroy();
        header('HTTP:/1.1 503 Service Unavailable');
        die();
    }
    $_SESSION['last_request'] = hash('sha384',$_SERVER['REQUEST_URI']);
    $_SESSION['ip'] = $_SERVER['REMOTE_ADDR'];
    $_SESSION['last_timestamp'] = time();
endif;