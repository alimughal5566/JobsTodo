
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('4cfb3fd156ec8d31edae', {
    cluster: 'us3'
});

    var channel = pusher.subscribe('my-channel');
