<?php
$data['message'] = 'hello world';
$pusher->trigger('my-channel', 'my-event', $data);
?>