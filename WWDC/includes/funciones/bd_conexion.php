<?php
    define('WWDC_HOST', 'localhost');
    define('WWDC_DB_USUARIO', 'root');
    define('WWDC_DB_PASSWORD', '');
    define('WWDC_DB_DATABASE', 'wwdc');

    $conn = new mysqli(WWDC_HOST, WWDC_DB_USUARIO, WWDC_DB_PASSWORD, WWDC_DB_DATABASE);
    $conn->set_charset("utf8");

    if($conn->connect_error) {
      echo $conn->connect_error;
    }
