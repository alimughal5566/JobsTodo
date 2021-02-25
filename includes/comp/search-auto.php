<?php

@session_start();
require_once("../db.php");

$seller_id = $input->post('seller_id');
$search = $input->post('search');
$data = array();

//$get_p = $db->query("select * from proposals where proposal_title Like :search AND proposal_status='active' LIMIT 0,6",["search"=>"%$search%"]);
$get_p = $db->query("SELECT * FROM proposals LEFT JOIN sellers ON proposals.proposal_seller_id = sellers.seller_id WHERE sellers.value_health >=60 AND proposals.proposal_status='active'AND proposals.proposal_title Like :search order by rand() LIMIT 0,8",["search"=>"%$search%"]);
$data['count_proposals'] = $get_p->rowCount();
$i = 0;
while($row = $get_p->fetch()){
   $i++;
   $get_seller = $db->select("sellers",array("seller_id" => $row->proposal_seller_id));
   $row_seller = $get_seller->fetch();
   $seller_user_name = $row_seller->seller_user_name;

   $title = str_ireplace("$search",ucwords("<b>$search</b>"),$row->proposal_title);
   $data['proposals'][$i]['title'] = $title;
   $data['proposals'][$i]['url'] = "$site_url/proposals/".$seller_user_name."/".$row->proposal_url;
}

$get_s = $db->query("select * from sellers where value_health >=60 AND seller_user_name Like :search AND NOT seller_status='block-ban' LIMIT 0,6",["search"=>"%$search%"]);
//$get_s = $db->query(" SELECT seller_user_name FROM sellers LEFT JOIN proposals ON  sellers.seller_id = proposals.proposal_seller_id WHERE sellers.value_health >=60 AND proposals.proposal_status='active' order by rand() LIMIT 0,8",["search"=>"%$search%"]);
$data['count_sellers'] = $get_s->rowCount();
$i = 0;
while($row = $get_s->fetch()){
   $i++;
   $user_name = str_ireplace("$search",ucwords("<b>$search</b>"),$row->seller_user_name);
   $data['sellers'][$i]['name'] = $user_name;
   $data['sellers'][$i]['url'] = "$site_url/".$row->seller_user_name;
}

$data['no_results'] = $lang['no_results'];

echo json_encode($data);