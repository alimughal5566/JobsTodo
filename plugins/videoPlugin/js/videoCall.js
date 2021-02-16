$(document).ready(function(){
  var base_url = $("#video-js").data("base-url");
  var login_seller_id = $("#video-js").data("seller-id");
  var opentok_api_key = $("#video-js").data("opentok-api-key");
  
  // this stopInterval function is not in use right now
  var stopInterval = function(intervalId, callback){
    clearInterval(intervalId);
    callback();
  }

  var incoming_call = function(){
    $.ajax({
      type: "POST",
      url: base_url+"/plugins/videoPlugin/ajax/incoming-call"
    }).done(function(data){
      if(data !== "failed"){
        $("#incoming-call").html(data);
      }else{
        setTimeout(incoming_call, 6000);
      }
    });
  }
  incoming_call();

  var ended_call = function(){
    $.ajax({
      type: "POST",
      url: base_url+"/plugins/videoPlugin/ajax/ended-call"
    }).done(function (data){
      if(data !== "failed"){
        $("#incoming-call").html(data);
      }else{
        setTimeout(ended_call, 12000);
      }
    });
  }
  ended_call();

  $(document).on("click", ".leave-button", function(){
    $('#wait').addClass("loader");
    var orderId = $("#orderId").val();
    var call_number = $("#sessionId").val();
    $.ajax({
      method: "POST",
      url: base_url+"/plugins/videoPlugin/ajax/end-call",
      data: {call_number: call_number},
      success: function(data){
        if(data == "ok"){
          $('#wait').removeClass("loader");
           window.open("order_details?order_id="+orderId,"_self"); 
        }
      }
    });
  });

});

var date = $("#video-js").data("date");
var admin_image = $("#video-js").data("admin-image");

function orderMinutesInterval(){
  var intervalStatus = $("#intervalStatus").val();
  if(intervalStatus == "run"){
    var orderId = $("#orderId").val();
    var timer2 = $("#orderMinutes").val();
    var warning_message = $("#warningMessage").val();

    var timer = timer2.split(':');
    //by parsing integer, I avoid all extra string processing
    var minutes = parseInt(timer[0], 10);
    var seconds = parseInt(timer[1], 10);
    if(minutes == 0 & seconds == 0){

    }else{
      --seconds; 
      minutes = (seconds < 0) ? --minutes : minutes;
      if (minutes < 0) clearInterval(interval);
      seconds = (seconds < 0) ? 59 : seconds;
      seconds = (seconds < 10) ? '0' + seconds : seconds;
      //minutes = (minutes < 10) ?  minutes : minutes;
      $('.countdown').html(minutes + ':' + seconds);
      $('#orderMinutes').val(minutes + ':' + seconds);
      timer2 = minutes + ':' + seconds;
      $.ajax({
        url:base_url+"/plugins/videoPlugin/ajax/change_minutes",type:"POST",
        data:{order_id: orderId, order_minutes: timer2}
      });
      if(warning_message > 0){
        if(minutes == warning_message & seconds == 0){
          html = "<div class='header-message-div'> <a class='float-left' href='#'> <img src='"+base_url+"/admin/admin_images/"+admin_image+"' width='50' height='50' class='rounded-circle'><strong class='heading'>Video Call</strong><p class='message'>Only "+warning_message+" more minute(s) left for this video session.</p><p class='date text-muted'>"+date+"</p> </a> <a href='#' class='float-right close closePopup btn btn-sm pl-lg-5 pt-0'><i class='fa fa-times'></i></a></div>";
          $('.messagePopup').prepend(html);
        }
      }
    }
  }
}

// replace these values with those generated in your TokBox Account
var apiKey = $("#video-js").data("opentok-api-key");

// Handling all of our errors here by alerting them
function handleError(error) {
  if (error) {
    alert(error.message);
  }
}

function initializeSession(sessionId, token){
  var orderMinutes;
  var session = OT.initSession(apiKey, sessionId);

  // Subscribe to a newly created stream
  session.on('streamCreated', function(event){
    // extendtime
    $('#video_chat_modal .extend-time').prop('disabled',false);
    $('#video_chat_modal .extend-time-custom-amount').prop('disabled',false);
    $("#subscriber-ringing,#subscriber-ended,#subscriber-declined").addClass("d-none");
    $("#subscriber-stream").removeClass("d-none");
    $("#subscriber").removeClass("bg-dark");

    $("#intervalStatus").val("run");
    var activeUser = $("#activeUser").val();

    if(activeUser == "seller"){
      orderMinutes = setInterval(orderMinutesInterval, 1000);
    }else{
      setTimeout(function(){ 
        orderMinutes = setInterval(orderMinutesInterval, 1000);
      },2000);
    }

    data = {};
    data["order_id"] =  $("#orderId").val();
    data["warning_message"] = "";
    $.ajax({
      url:base_url+"/plugins/videoPlugin/ajax/accept-call",
      type:"POST",
      data:{data},
    });

    session.subscribe(event.stream,'subscriber-stream', {
      insertMode: 'append',
      width: '100%',
      height: '100%'
    }, handleError);
  });

  // Create a publisher
  var publisher = OT.initPublisher('publisher', {
    insertMode: 'append',
    width: '100%',
    height: '100%'
  }, handleError);

  // when user end the call
  session.on("connectionDestroyed", function(event){
    // extendtime
    $('#video_chat_modal .extend-time').prop('disabled',true);
    $('#video_chat_modal .extend-time-custom-amount').prop('disabled',true);
     
    $("#subscriber").addClass("bg-dark");
    $("#subscriber-ringing,#subscriber-stream").addClass("d-none");
    $("#subscriber-ended").removeClass("d-none");
    $("#intervalStatus").val("stopped");
    clearInterval(orderMinutes);
  });

  // Connect to the session
  session.connect(token, function(error) {
    // If the connection is successful, publish to the session
    if (error) {
      handleError(error);
    } else {
      session.publish(publisher, handleError);
    }
  });

  session.on('archiveStarted', function(event) {
    archiveID = event.id;
    console.log('ARCHIVE STARTED');
    $('.start-archive').hide();
    $('.download-archive').hide();
    $('.stop-archive').show();
  });

  session.on('archiveStopped', function(event) {
    archiveID = event.id;
    console.log('ARCHIVE STOPPED');
    $('.start-archive').hide();
    $('.stop-archive').hide();
    $('.download-archive').show();
  });
}