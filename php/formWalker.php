<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function formWalker(Array $form){
    $result = "";
    foreach($form as $row){
        if(isset($row['container'])){
            $result.="<".$row['container']['tag']."";
            foreach($row['container']['attributes'] as $attribute=>$value){
                $result.=" $attribute='$value' ";
            }
            $result.=">";
            $result.="<".$row['tag']."";
            foreach($row['attributes'] as $attribute=>$value){
                $result.=" $attribute='$value' ";
            }
            $result.=">";
            $result.="</".$row['container']['tag'].">";
        }else{
            $result.="<".$row['tag']."";
            foreach($row['attributes'] as $attribute=>$value){
                $result.=" $attribute='$value' ";
            }
            $result.=">";
            $result.="</".$row['container']['tag'].">";
        }
    }
    return $result;
}

/*
$form = array(
    array(
        'tag'=>'input',
        'attributes'=>array(
            'class'=>'',
            'id'=>'',
            'custom'=>''
        ),
        'container'=>array(
            'tag'=>'div',
            'attributes'=>array(
                'class'=>'',
                'id'=>'',
                'custom'=>''
            )
        )
    ),
);*/