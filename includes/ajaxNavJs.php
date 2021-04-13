<?php
@session_start();
//if(!isset($_SESSION['seller_user_name'])){
//    echo "<script>window.open('login','_self')</script>";
//}else {
$select_seller = $db->select("sellers", array("seller_user_name" => $_SESSION['seller_user_name']));
$seller_id = $select_seller->fetch()->seller_id;
//}
?>
<script>
    var c_notifications_body = function(){
        seller_id = <?=$seller_id ?>;
        // alert(seller_id);
        base_url = window.location.origin;
//         base_url = 'http://localhost/mystore/';
        if (location.hostname === "localhost" || location.hostname === "127.0.0.1") {
            base_url = base_url + '/mystore';
        }
        $.ajax({
            method: "POST",
            url: base_url+"/includes/comp/c-notifications-body",
            data: {seller_id: seller_id}
        }).done(function(data){
            result = $.parseJSON(data);
            notifications = result.notifications;
            html = "<h3 class='dropdown-header'> "+result['lang'].notifications+" ("+result.count_all_notifications+") <a class='float-right make-black' href='"+base_url+"/notifications' style='color:black;'>"+result['lang'].view_notifications+"</a></h3>";
            if(parseInt(result.count_all_notifications) == 0){
                html += "<h6 class='text-center mt-3'>"+result['lang'].no_notifications+"</h6>";
            }
            for(i in notifications){
                html += "<div class='"+notifications[i].class+"'><a href='"+base_url+"/dashboard?n_id="+notifications[i].id+"'><img src='"+notifications[i].sender_image+"' width='50' height='50' class='rounded-circle'><strong class='heading'>"+notifications[i]['sender_user_name']+ "</strong><p class='message text-truncate'>"+notifications[i].message+"</p><p class='date text-muted'>"+notifications[i].date+"</p></a></div>";
            }
            if(parseInt(result.count_all_notifications) > 0){
                html += "<div class='mt-2'><center class='pl-2 pr-2'><a href='"+base_url+"/notifications' class='ml-0 btn btn-success btn-block'>"+result.see_all+"</a></center></div>";
            }
            $('.c-notifications-header').text(result.count_unread_notifications);
            $('.dropdown-header').text(result.count_unread_notifications);
            $('.notifications-dropdown').html(html);
        });
    }
    setTimeout(c_notifications_body, 5000);
    c_notifications_body();

    var c_messages_header = function(){
        $.ajax({
            method: "POST",
            url: base_url+"/includes/comp/c-messages-header",
            data: {seller_id: seller_id}
        }).done(function(data){
            if(data > 0){
                $(".c-messages-header").html(data);
            }else{
                $(".c-messages-header").html("");
            }
            setTimeout(c_messages_header, 5000);
        });
    }
    c_messages_header();

    // c_messages_body
    var c_messages_body = function(){
        $.ajax({
            method: "POST",
            url: base_url+"/includes/comp/c-messages-body",
            data: {seller_id: seller_id}
        }).done(function(data){
            result = $.parseJSON(data);
            messages = result.messages;
            html = "<h3 class='dropdown-header'> "+result['lang'].inbox+" ("+result.count_all_inbox_sellers+") <a class='float-right make-black' href='"+base_url+"/conversations/inbox' style='color:black;'>"+result['lang'].view_inbox+"</a></h3>";
            if(parseInt(result.count_all_inbox_sellers) == 0){
                html += "<h6 class='text-center mt-3'>"+result['lang'].no_inbox+"</h6>";
            }
            for(i in messages){
                html += "<div class='"+messages[i].class+"'><a href='"+base_url+"/conversations/inbox?single_message_id="+messages[i].message_group_id+"'><img src='"+messages[i].sender_image+"' width='50' height='50' class='rounded-circle'><strong class='heading'>"+messages[i]['sender_user_name']+"</strong><p class='message text-truncate'>"+messages[i].desc+"</p><p class='date text-muted'>"+messages[i].date+"</p></a></div>";
            }
            if(parseInt(result.count_all_inbox_sellers) > 0){
                html += "<div class='mt-2'><center class='pl-2 pr-2'><a href='"+base_url+"/conversations/inbox' class='ml-0 btn btn-success btn-block'>"+result.see_all+"</a></center></div>";
            }
            $('.messages-dropdown').html(html);
            setTimeout(c_messages_body, 5000);
        });
    }
    c_messages_body();

    // var messagePopup = function(){
    //     $.ajax({
    //         method: "POST",
    //         url: base_url+"/includes/messagePopup",
    //         data: {seller_id: seller_id}
    //     }).done(function(data){
    //
    //         result = $.parseJSON(data);
    //         html = '';
    //         for(i in result){
    //             html += "<div class='header-message-div'><a class='float-left' href='"+base_url+"/conversations/inbox?single_message_id="+result[i].message_group_id+"'><img src='"+result[i].sender_image+"' width='50' height='50' class='rounded-circle'><strong class='heading'>"+result[i].sender_user_name+" </strong><p class='message'>"+result[i].desc+"</p><p class='date text-muted'>"+result[i].date+"</p></a><a href='#' class='float-right close closePopup btn btn-sm pl-lg-5 pt-0'><i class='fa fa-times'></i></a></div>";
    //         }
    //         $('.messagePopup').prepend(html);
    //         setTimeout(messagePopup, 7000);
    //     });
    // }
    // messagePopup();

</script>
