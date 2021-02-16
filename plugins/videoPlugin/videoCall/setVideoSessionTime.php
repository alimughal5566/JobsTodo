<?php

include("email.php");

// Select Order Schedule
$order_schedule = $db->select("order_schedules",array("order_id"=>$order_id));
$count_schedule = $order_schedule->rowCount();
$row_schedule = $order_schedule->fetch();
$schedule_sender = @$row_schedule->sender_id;
$schedule_time = @$row_schedule->time;
$schedule_timezone = @$row_schedule->timezone;
$schedule_status = @$row_schedule->status;
if($count_schedule == 1){
  $orderCallTime = new DateTime($schedule_time,new DateTimeZone($schedule_timezone));
  $videoSessionTime = new DateTime($schedule_time,new DateTimeZone($schedule_timezone));
  $videoSessionTime->setTimezone(new DateTimeZone($login_seller_timezone));
  $videoSessionTime = $videoSessionTime->format("F d, Y h:i A");
}

// Schedule Sender Details
$schedule_row_sender = $db->select("sellers",array("seller_id" => $schedule_sender))->fetch();
$schedule_sender_user_name = @$schedule_row_sender->seller_user_name;

// Get Proposal Video Schedule Details
$get_schedule = $db->select("video_schedules",array("id"=>$days_within_scheduled));
$schedule = $get_schedule->fetch();
$schedule_title = @$schedule->title;
$schedule_duration = @$schedule->duration;

$reset = date_default_timezone_get();
date_default_timezone_set($login_seller_timezone);

$maxVideoSessionTime = date("Y-m-d", strtotime(" + $schedule_duration days"));
$minVideoSessionTime = date("Y-m-d H:i", strtotime(" + 1 hour "));
$minVideoSessionTime = str_replace(" ","T",$minVideoSessionTime);

date_default_timezone_set($reset);

if($seller_id == $login_seller_id){ 
  $receiver_id = $buyer_id;
  $receiverType = "buyer";
}else{
  $receiver_id = $seller_id;
  $receiverType = "seller";
}

$receiver_timezone = $db->select("sellers",array("seller_id"=>$receiver_id))->fetch()->seller_timezone;

?>
<?php if(($count_schedule == 0 and $login_seller_id == $buyer_id and $enableVideo == 1) or ($count_schedule == 1)){ ?>

<?php if($count_schedule == 0){ ?>
<div class="card mb-3 mt-3"><!--- card mb-3 mt-3 Starts --->
  <div class="card-header"><h5 class="mb-0">Set A Time For Video Session</h5></div>
  <div class="card-body">
    <h5 class="font-weight-normal"> <strong><?= ucfirst(strtolower($login_seller_user_name)); ?>,</strong> When are you available for a video session?</h5>
    <p>You can only choose a day within <?php echo $schedule_duration; ?> days from <?php echo date("m/d/Y"); ?></p>
    <form method="post">
      <div class="form-group">
        <label class="">+ Set A Date & Time</label>
        <input type="datetime-local" name="time" min="<?= $minVideoSessionTime; ?>" max="<?= $maxVideoSessionTime; ?>T00:00" class="form-control" required>
      </div>
      <button type="submit" name="setTime" class="btn btn-primary">Submit</button>
    </form>
  </div>
</div><!--- card mb-3 mt-3 Ends --->
<?php 
if(isset($_POST['setTime'])){
  $time = $input->post('time');
  $data = array("order_id"=>$order_id,"sender_id"=>$login_seller_id,"time"=>$time,"timezone"=>$login_seller_timezone,"status"=>"pending");
  $insertOrderSchedule = $db->insert("order_schedules",$data);
  if($insertOrderSchedule){
    // Time
    $time = new DateTime($time);
    $oldTime = $time->format("F d, Y h:i A");
    $time->setTimezone(new DateTimeZone($receiver_timezone));
    $time = $time->format("F d, Y h:i A");
    if(sendVideoSessionTimeEmail($login_seller_id,$receiver_id,$order_id,$time)){
     successRedirect("You have successfully set the video session time to $oldTime.","order_details?order_id=$order_id");
    }
  }
}
?>
<?php }else{ ?>
<div class="card mb-3 mt-3"><!--- card mb-3 mt-3 Starts --->
  <div class="card-header"><h5 class="mb-0">Video Session Time</h5></div>
  <div class="card-body">
    <?php if($schedule_status == "accepted"){ ?>
    <h5 class="font-weight-normal"> You and your <?= $receiverType; ?> have accepted the video session time: (<?= $videoSessionTime; ?>). </h5>
    <?php } ?>
    <?php if($schedule_sender == $login_seller_id){ ?>
    <?php if($schedule_status == "pending"){ ?>
    <h5 class="font-weight-normal"> <strong><?= ucfirst(strtolower($login_seller_user_name)); ?></strong> You have set the video session time to (<?= $videoSessionTime; ?>). </h5>
    <?php }elseif($schedule_status == "proposed"){ ?>
    <h5 class="font-weight-normal"> <strong><?= ucfirst(strtolower($login_seller_user_name)); ?></strong> You have proposed the video session time to (<?= $videoSessionTime; ?>). </h5>
    <?php } ?>
    <?php }else{ ?>
    <?php if($schedule_status == "pending"){ ?>
    <h5 class="font-weight-normal"> <strong><?= ucfirst(strtolower($login_seller_user_name)); ?></strong> <?= ucfirst(strtolower($schedule_sender_user_name)); ?> has set the video session time to (<?= $videoSessionTime; ?>). </h5>
    <?php }elseif($schedule_status == "proposed"){ ?>
    <h5 class="font-weight-normal"> <strong><?= ucfirst(strtolower($login_seller_user_name)); ?></strong> <?= ucfirst(strtolower($schedule_sender_user_name)); ?> have proposed the video session time to (<?= $videoSessionTime; ?>). </h5>
    <?php } ?>

    <?php if($schedule_status != "accepted"){ ?>
    <form method="post">
      <div class="form-group">
        <label class="">Chose Another Schedule</label>
        <input id="anotherScheduleTime" type="datetime-local" name="time" min="<?= $minVideoSessionTime; ?>" max="<?= $maxVideoSessionTime; ?>T00:00" class="form-control">
      </div>
      <button type="submit" name="accept_schedule" class="btn btn-success">Accept <?= ucfirst(strtolower($schedule_sender_user_name)); ?> (<?= $videoSessionTime; ?>) Schedule</button>
      <button type="submit" id="proposeAnotherSchedule" name="propose_another_schedule" class="btn btn-success">Propose Another Schedule</button>
    </form>
    <?php
    if(isset($_POST['accept_schedule'])){
      $updateOrderSchedule = $db->update("order_schedules",array("status"=>'accepted'),array("order_id"=>$order_id));
      if($updateOrderSchedule){
        // Time
        $time = new DateTime($schedule_time,new DateTimeZone($schedule_timezone));
        $time->setTimezone(new DateTimeZone($receiver_timezone));
        $time = $time->format("F d, Y h:i A");
        if(sendAcceptScheduleEmail($login_seller_id,$receiver_id,$order_id,$time)){
          if(sendAcceptScheduleEmailv2($login_seller_id,$receiver_id,$order_id,$time,$receiverType)){
            successRedirect("You have successfully accepted the $schedule_sender_user_name video session schedule.","order_details?order_id=$order_id");
          }
        }
      }
    }
    if(isset($_POST['propose_another_schedule'])){
      $time = $input->post('time');
      $updateOrderSchedule = $db->update("order_schedules",array("sender_id"=>$login_seller_id,"time"=>$time,"timezone"=>$login_seller_timezone,"status"=>"proposed"),array("order_id"=>$order_id));
      if($updateOrderSchedule){
        // Time
        $time = new DateTime($time);
        $time->setTimezone(new DateTimeZone($receiver_timezone));
        $time = $time->format("F d, Y h:i A");
        if(sendProposeAnotherScheduleEmail($login_seller_id,$receiver_id,$order_id,$time)){
            successRedirect("You have successfully proposed another schedule to $schedule_sender_user_name.","order_details?order_id=$order_id");
        }
      }
    }
    ?>
    <?php } ?>
    <?php } ?>
  </div>
</div>
<?php } ?>

<?php } ?>