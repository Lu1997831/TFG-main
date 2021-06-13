<?php


require 'paypal/autoload.php';

define('URL_SITIO', 'http://localhost/TFG/TFG-main/WWDC/');

$apiContext = new \PayPal\Rest\ApiContext(
      new \PayPal\Auth\OAuthTokenCredential(
          'AZwAe-qtj-pegRySLxMquiyn0KEegdOo1b_dOrLN3-GSABDJkURBLa3x8642fXZk_f7UgUIKgKGGzcj4',  // ClienteID
          'EB5JDoZzVWaAC9d63u4M-UcFM41vh8JHjD8Da6bswSv9mHaWnoecJlKFMM1Z4owe5SRsdylnl2jSFr7Q'  // Secret
      )
);

