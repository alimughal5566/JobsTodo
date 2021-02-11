<?php
require __DIR__ . '/vendor/autoload.php';

$options = array(
    'cluster' => 'us3',
    'useTLS' => true
);
$pusher = new Pusher\Pusher(
    '4cfb3fd156ec8d31edae',
    '9ea07fbe7081ae24d365',
    '1152829',
    $options
);


?>