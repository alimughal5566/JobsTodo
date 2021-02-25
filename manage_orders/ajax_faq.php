<?php
session_start();
require_once("../includes/db.php");

if (!isset($_SESSION['seller_user_name'])) {
    echo "<script>window.open('login','_self')</script>";
}

$login_seller_user_name = $_SESSION['seller_user_name'];

$seller_id = $_GET['seller_id'];
$buyer_id = $_GET['buyer_id'];
$proposal_id = $_GET['proposal_id'];
$proposal_title = $_GET['proposal_title'];

$answers = $db->select("faq_answers", array("proposal_id" => $proposal_id,"sender_id" => $buyer_id,"receiver_id" => $seller_id));
//$datum = $answers->fetch_row();
$data =array();
while ($datum = $answers->fetch()) {
    $data[] = array(
        "title" => $datum->title,
        "answer" => $datum->answer,

    );

}
echo json_encode($data);
