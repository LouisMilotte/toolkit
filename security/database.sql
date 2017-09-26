/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Louis
 * Created: Sep 25, 2017
 */

CREATE TABLE log(
    id int not null auto_increment,
    remote_addr VARCHAR(39),
    http_request TEXT,
    `timestamp` DATETIME DEFAULT CURRENT_TIMESTAMP,
    primary key(id)
);

/**
test section
*/

INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=1;1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;1=1');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.20','login.php?uid=;*');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');
INSERT INTO log (`remote_addr`,`http_request`) VALUES ('192.168.1.21','index.php');