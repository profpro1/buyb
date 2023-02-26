<?php
function debug($str) {
    echo '<pre>';
    var_dump($str);
    echo '</pre>';
    exit;
}

function makeArr($arr) {
    $outArray = [];
    foreach ($arr as $item) {
        foreach ($item as $key => $item2) {
            $outArray[$key] = $item2;
        }
    }
    return $outArray;
}
