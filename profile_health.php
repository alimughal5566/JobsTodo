<?php
require_once("includes/db.php");

$login_seller_user_name = $_SESSION['seller_user_name'];

$select_login_seller = $db->select("sellers",array("seller_user_name" => $login_seller_user_name));
$row_login_seller = $select_login_seller->fetch();
    $login_seller_id = $row_login_seller->seller_id;
$select_login_seller_settings  = $db->select("seller_settings",array("seller_id" => $login_seller_id));
$row_login_seller_settings = $select_login_seller_settings->fetch();

$bank_name= $row_login_seller_settings->bank_name;
$iban_number= $row_login_seller_settings->iban_number;


$select_login_proposals  = $db->select("proposals",array("proposal_seller_id" => $login_seller_id));
$row_login_proposals = $select_login_proposals->fetch();
$have_any_proposals = $row_login_proposals->proposal_seller_id;


$data =[
//    "login_seller_id" => $row_login_seller->seller_id,
//    "seller_user_name" => $row_login_seller->seller_user_name,
    "have_any_proposals" => $have_any_proposals,
    "seller_email" => $row_login_seller->seller_email,
    "bank_name" => $row_login_seller_settings->bank_name,
    "iban_number"=>$row_login_seller_settings->iban_number,
//    "seller_pass" => $row_login_seller->seller_pass,
    "seller_image" => $row_login_seller->seller_image,
    "seller_cover_image" => $row_login_seller->seller_cover_image,
    "passport_id_image" => $row_login_seller->passport_id_image,
    "seller_country" => $row_login_seller->seller_country,
    "city" => $row_login_seller->seller_city,
//    "seller_headline" => $row_login_seller->seller_headline,
//    "seller_about" => $row_login_seller->seller_about,
    "seller_language" => $row_login_seller->seller_language,
//    "seller_offers" => $row_login_seller->seller_offers,
//    "seller_timezone" => $row_login_seller->seller_timezone,
];
$value_health=0;
foreach ($data as $key=>$datum){
//    echo $datum;
    if ( $datum != Null || $datum != 0 ||$datum != ''){
        $value_health=$value_health+10;
//        echo $value;
    }

}
$update_seller = $db->update("sellers",array("value_health"=>$value_health),array("seller_id"=>$login_seller_id));


?>


