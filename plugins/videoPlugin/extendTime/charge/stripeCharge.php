<?php

session_start();
include("../../../../includes/db.php");
include("$dir/functions/payment.php");
require_once("$dir/functions/processing_fee.php");
if(!isset($_SESSION['seller_user_name'])){
	echo "<script>window.open('$site_url/login','_self')</script>";
}

$extendId = $_SESSION['extendId'];
$order_id = $_SESSION['extendOrderId'];
$proposal_id = $_SESSION['extendProposalId'];

// extend_time
$extend_time = $db->select("order_extend_time",array("id"=>$extendId,"order_id"=>$order_id))->fetch();
if($extend_time->customAmount != 0){
	$amount = $extend_time->customAmount;
}else{
	$amount = $extend_time->extended_minutes*$extend_time->price_per_minute;
}

$processing_fee = processing_fee($amount);

$data = [];
$data['type'] = 'orderExtendTime';
$data['stripeToken'] = $input->post('stripeToken');
$data['proposal_id'] = $proposal_id;
$data['order_id'] = $order_id;
$data['proposal_qty'] = 1;
$data['amount'] = $amount+$processing_fee;
$data['desc'] = "Order Extra Minutes Payment";

$payment = new Payment();
if($payment->stripe($data)){
	require_once("extendTimePurchase.php");
}