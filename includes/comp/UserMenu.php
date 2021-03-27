<?php @session_start();
$login_seller_user_name = $_SESSION['seller_user_name'];
$select_login_seller = $db->select("sellers",array("seller_user_name" => $login_seller_user_name));
$row_login_seller = $select_login_seller->fetch();
$login_seller_id = $row_login_seller->seller_id;
$not_count = $db->count("notifications",array("receiver_id" => $login_seller_id,"status" => 'unread'));
$message_count = $db->count("inbox_messages",array("message_receiver" => $login_seller_id,"message_status" => 'unread'));
//var_dump($counts);die();
?>








<li class="logged-in-link d-none d-sm-block d-md-block d-lg-block">
  <a class="menuItem" href="<?= $site_url; ?>/blog/" title="<?= $lang["blog"]['title']; ?>">
    <span class="gigtodo-icon nav-icon gigtodo-icon-relative">
      <i class="fa fa fa-rss fa-lg" style="font-size:1.4em;"></i>
    </span>
  </a>
</li>
<li class="logged-in-link">
  <a class="menuItem" href="<?= $site_url; ?>/freelancers" title="<?= $lang["freelancers_menu"]; ?>">
    <span class="gigtodo-icon nav-icon gigtodo-icon-relative">
      <img width="135" src="<?= $site_url; ?>/images/big-users.png" style="width: 35px;height: 35px;top: -10px;">
    </span>
  </a>
</li>
<li class="logged-in-link">
  <a class="bell menuItem" data-toggle="dropdown" title="<?= $lang['popup']['notifications']; ?>">
  <span class="gigtodo-icon nav-icon gigtodo-icon-relative"><?php include("{$dir}images/svg/notification.svg"); ?></span>
  <span class="total-user-count count c-notifications-header" ><?= $not_count ?></span>
  </a>
  <div class="dropdown-menu notifications-dropdown">
          <h3 class='dropdown-header'>inbox(<?= $not_count?>) <a class='float-right make-black' href='../notifications' style='color:black;'>View notifications</a></h3>


<!--      --><?php //if($not_count>0){
//
//          $select_notofications = $db->query("select * from notifications where receiver_id=:r_id order by 1 DESC LIMIT 0,4",array("r_id"=>$login_seller_id));
//          while($row_notifications = $select_notofications->fetch()){
//              $sender_id = $row_notifications->sender_id;
//              $reason = $row_notifications->reason;
//
//              $status = $row_notifications->status;
//              $select_sender = $db->select("sellers",array("seller_id" => $sender_id));
//              $row_sender = $select_sender->fetch();
//
//              if($status == 'unread'){
//                  $data['notifications'][$i]['class'] = 'header-message-div-unread';
//              }else{
//                  $data['notifications'][$i]['class'] = 'header-message-div';
//              }
//
//              if(empty($row_sender->seller_image)){
//                 $img = "$site_url/user_images/empty-image.png";
//              }else{
//                  $img = getImageUrl2("sellers","seller_image",$row_sender->seller_image);
//              }
//              ?>
<!--          <div class='--><?//= $status ?><!--'><p ><img src='--><?//= $img ?><!--' width='50' height='50' class='rounded-circle'><strong class='heading'>--><!--</strong><p class='message text-truncate'>--><?//= include("notification_reasons.php") ?><!--</p><p class='date text-muted'>--><!--</p></p></div>-->
<!---->
<!--      --><?php //}?>
<!--       <div class='mt-2'><center class='pl-2 pr-2'><a href='../notifications' class='ml-0 btn btn-success btn-block'>See All</a></center></div>-->
<!--      --><?php //}
//      else{
//          ?><!--<h6 class='text-center mt-3'>No notification found</h6>-->
<!--      --><?php //} ?>




  </div>
</li>
<li class="logged-in-link">
  <a class="message menuItem" data-toggle="dropdown" title="<?= $lang['popup']['inbox']; ?>">
  <span class="gigtodo-icon nav-icon gigtodo-icon-relative"><?php include("{$dir}images/svg/email.svg"); ?></span>
  <span class="total-user-count count c-messages-header"><?= $message_count ?></span>
  </a>
  <div class="dropdown-menu messages-dropdown">
  </div>
</li>
<li class="logged-in-link">
  <a href="<?= $site_url; ?>/favorites" class="heart menuItem" title="<?= $lang["menu"]["favorites"]; ?>">
  <span class="gigtodo-icon nav-icon gigtodo-icon-relative"><?php include("{$dir}images/svg/heart.svg"); ?> </span>
  <span>
  <span class="total-user-count count c-favorites"></span>
  </span>
  </a>
</li>
<li class="logged-in-link">
  <a class="menuItem" href="<?= $site_url; ?>/cart" title="<?= $lang["menu"]["cart"]; ?>">
  <span class="gigtodo-icon nav-icon gigtodo-icon-relative"><?php include("{$dir}images/svg/basket.svg"); ?></span>
  <?php if($count_cart > 0){ ?>
  <span class="total-user-count count"><?= $count_cart; ?></span>
  <?php } ?>
  </a>
</li>
<li class="logged-in-link">
  <?php require_once("userMenuLinks.php"); ?>
</li>
<li class="logged-in-link mr-lg-0 mr-2 d-none d-sm-block d-md-block d-lg-block">
  <a class="menuItem btn btn-success text-white"><?= showPrice($current_balance); ?></a>
</li>
