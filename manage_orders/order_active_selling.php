<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="table-responsive box-table mt-3">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th><?= $lang['th']['order_summary']; ?></th>
            <th><?= $lang['th']['order_date']; ?></th>
            <th><?= $lang['th']['due_on']; ?></th>
            <th><?= $lang['th']['total']; ?></th>
            <th>FAQ Answers</th>
            <th><?= $lang['th']['status2']; ?></th>
        </tr>
        </thead>
        <tbody>
        <?php
        $sel_orders = $db->select("orders", array("seller_id" => $login_seller_id, "order_active" => "yes"), "DESC");
        $count_orders = $sel_orders->rowCount();
        while ($row_orders = $sel_orders->fetch()) {
            $order_id = $row_orders->order_id;
            $proposal_id = $row_orders->proposal_id;
            $seller_id = $row_orders->seller_id;
            $buyer_id = $row_orders->buyer_id;
            $order_price = $row_orders->order_price;
            $order_status = $row_orders->order_status;
            $order_number = $row_orders->order_number;
            $order_duration = intval($row_orders->order_duration);
            $order_date = $row_orders->order_date;
            $order_due = date("F d, Y", strtotime($order_date . " + $order_duration days"));
            $select_proposals = $db->select("proposals", array("proposal_id" => $proposal_id));
            $row_proposals = $select_proposals->fetch();

            if (!empty($row_proposals)) {
                $proposal_title = $row_proposals->proposal_title;
                $proposal_img1 = getImageUrl2("proposals", "proposal_img1", $row_proposals->proposal_img1);

                ?>
                <tr>
                    <td>
                        <a href="order_details?order_id=<?= $order_id; ?>" class="make-black">
                            <img class="order-proposal-image" src="<?= $proposal_img1; ?>"/>
                            <p class="order-proposal-title"><?= $proposal_title; ?></p>
                        </a>
                    </td>
                    <td><?= $order_date; ?></td>
                    <td><?= $order_due; ?></td>
                    <td><?= showPrice($order_price); ?></td>
                    <td>
                        <button type="button" class="btn btn-primary answers" data-toggle="modal"
                                data-proposal_title="<?= $proposal_title ?>" data-proposal_id="<?= $proposal_id ?>"
                                data-buyer_id="<?= $buyer_id ?>" data-seller_id="<?= $seller_id ?>"
                                data-target=".bd-example-modal-lg">FAQ Answers
                        </button>
                    </td>
                    <td>
                        <button class="btn btn-success"><?= ucwords($order_status); ?></button>
                    </td>
                </tr>
            <?php }
        } ?>
        </tbody>
    </table>
    <?php
    if ($count_orders == 0) {
        echo "
		   <center>
			   <h3 class='pb-4 pt-4'>
			   	<i class='fa fa-meh-o'></i> {$lang['selling_orders']['no_active']}
			   </h3>
		   </center>";
    }
    ?>
</div>


<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="row ">
                <div class="col-md-12" >
                    <div class="proposal_title p-3"></div>

                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).on("click", ".answers", function () {

        var proposal_title = $(this).data('proposal_title');
        var buyer_id = $(this).data('buyer_id');
        var seller_id = $(this).data('seller_id');
        var proposal_id = $(this).data('proposal_id');

        // alert(proposal_title);
        // var data= {proposal_id : proposal_id, buyer_id : buyer_id, seller_id : seller_id,proposal_title:proposal_title},
        // var formD=data.serialize()
        // console.log(formD);
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "GET",
            url: "manage_orders/ajax_faq.php",
            data: {proposal_id: proposal_id, buyer_id: buyer_id, seller_id: seller_id, proposal_title: proposal_title},
            success: function (data) {
                result = JSON.parse(data);

                // var a=0
                if(result && result.length > 0) {
                    $('.proposal_title').empty();
                    for (i = 0; i < result.length; i++) {
                     row = `
                    <h5 >Question: ${result[i].title}</h5>
                    <p style="border-bottom: 1px solid black">Answer: ${result[i].answer}</p>`;
                    $('.proposal_title').append(row);
                }

                      }else {
                    $('.proposal_title').empty();
                    let row = `
                    <h4 >NO RESULT FOUND</h4>`;
                    $('.proposal_title').append(row);
                }

                /*$.each(result, function (key, value) {
                    $('.proposal_title').text(value.title);
                    // $('.proposal_title').text(i[1])
                    console.log(value);
                    // a++
                })*/


                // alert(data.data);
                // $("#driver_detail").html(data);
                // $("#imageIcons").hide();
            }
        });

    });
</script>