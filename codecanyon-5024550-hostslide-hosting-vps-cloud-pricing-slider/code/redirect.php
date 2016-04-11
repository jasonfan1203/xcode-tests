<?php

/*

HostSlide V2.0

CodeCanyon Licensed
Regular License @ http://codecanyon.net/licenses/terms/regular
Extended License @ http://codecanyon.net/licenses/terms/extended

Copyright (C) 2015 WebAboard @ CodeCanyon

*/

// Shopping Cart Path:

$cart = 'https://www.mywebhost.com/cart.php';

// Assigning inputs to order link parameters
// You do not need to assign input

$params = array(
    'hs0' => 'pid',
    'hs2' => 'configoption1'
);

// DO NOT edit anything below

$url = $cart.'?';

foreach ($params as $key => $value) {
    if (array_key_exists($key, $_REQUEST)) {
        $url .= $value'='.urlencode($_REQUEST[$key]);
    }
}

header('Location: '.$url);

?>