<?php

session_start();
include("../../../../includes/db.php");
include("../../../../functions/payment.php");
require_once("../../../../functions/processing_fee.php");
if(!isset($_SESSION['seller_user_name'])){
	echo "<script>window.open('$site_url/login','_self')</script>";
}

function escape($value){
  return htmlentities($value,ENT_QUOTES,'UTF-8');
}

$login_seller_user_name = $_SESSION['seller_user_name'];
$select_login_seller = $db->select("sellers",array("seller_user_name" => $login_seller_user_name));
$row_login_seller = $select_login_seller->fetch();
$login_seller_id = $row_login_seller->seller_id;

if(isset($_POST['paypal'])){
	$extendId = $_SESSION['extendId'];
	$order_id = $_SESSION['extendOrderId'];
	$proposal_id = $_SESSION['extendProposalId'];
	
	// proposal
	$select_proposals = $db->select("proposals",array("proposal_id"=>$proposal_id));
	$row_proposal = $select_proposals->fetch();

	// extend_time
	$extend_time = $db->select("order_extend_time",array("id"=>$extendId,"order_id"=>$order_id))->fetch();
	if($extend_time->customAmount != 0){
		$amount = $extend_time->customAmount;
	}else{
		$amount = $extend_time->extended_minutes*$extend_time->price_per_minute;
	}

	$processing_fee = processing_fee($amount);

	$payment = new Payment();
	$data = [];
	// $data['type'] = "orderExtendTime";
	$data['name'] = $row_proposal->proposal_title;
	$data['qty'] = 1;
	$data['price'] = $amount;
	$data['sub_total'] = $amount;
	$data['total'] = $amount+$processing_fee;

	$data['cancel_url'] = "$site_url/order_details?order_id=$order_id";
	$data['redirect_url'] = "$site_url/plugins/videoPlugin/extendTime/charge/order/paypal?extendTime=1";

	$payment->paypal($data,$processing_fee);
}else{
	echo "<script>window.open('index','_self')</script>";
}