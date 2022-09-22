<style>
    .column-row{
        border-bottom: solid 1px;
    }
    .row-body{
        padding:12px;
        border: 2px solid;
    }
    table, td, th {
  border: 1px solid black;
    }
    .table2 {
  border-collapse: collapse;
}
 .m-b{
   margin-bottom: 10px; 
}
 .m-t-10{
   margin-top: 10px; 
}
.fn-size{
    font-size: 10px;
}
.text-center{
        text-align: center;
}
</style>
<div class="row">
    <div class="col-md-4 row-body">
        <section class="content invoice profile_img layout-box" style="background: #ffffff;">
            <!-- title row -->
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-3 invoice-header_ text-center" style="text-align: center !important;">
                    <?php if($settings->logo){ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->logo; ?>" alt="" width="50" />
                    <?php }else if($settings->front_logo){ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->front_logo; ?>" alt="" width="50"/>
                    <?php }else{ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->brand_logo; ?>" alt="" width="50"/>
                    <?php } ?>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 invoice-header_" style="text-align: center !important;">
                    <h4><?php echo $settings->school_name; ?></h4>
                    <?php echo $settings->address; ?>
                    <br><?php echo $this->lang->line('phone'); ?>: <?php echo $settings->phone; ?>,
                    <?php echo $this->lang->line('email'); ?>: <?php echo $settings->email; ?>
                </div>
            </div>
            <!--<div class="row">-->
            <!--    <div class="col-md-12 col-sm-12 col-xs-12 invoice-header_" style="text-align: center !important;">-->
            <!--        <h3><?php echo $settings->school_name; ?></h3>-->
            <!--        <?php echo $settings->address; ?>-->
            <!--        <br><?php echo $this->lang->line('phone'); ?>: <?php echo $settings->phone; ?>,-->
            <!--        <?php echo $this->lang->line('email'); ?>: <?php echo $settings->email; ?>-->
            <!--    </div>-->
            <!--</div>-->
            <div class="row"><hr/></div>
            <!-- info row -->
            <div class="row invoice-info">
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('invoice'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->custom_invoice_id; ?>
                   </div>
                </div>
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('student'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->user_name; ?>
                   </div>
                </div>
                
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo $this->lang->line('department'); ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo $invoice->class_name; ?>
                   </div>
                </div>
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('phone'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->phone; ?>
                   </div>
                </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo $this->lang->line('issue_date'); ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo date($settings->sms_date_format, strtotime($invoice->date)); ?>
                   </div>
                </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('status'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo get_paid_status($invoice->paid_status); ?>
                   </div>
                </div>
                
              
                    <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo "Bank Name" ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo "Mezan Bank " ?>
                   </div>
                   </div>
                   <div class="row invoice-col_ m-b">
                   <div class="col-md-3 col-sm-3 col-xs-3">
                       <?php echo "A/c No" ?>
                   </div>
                   <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo "#000000000" ?>
                   </div>
                   </div>
              
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-5 col-sm-5 col-xs-5">
                    <strong><?php echo "Collage Name"; ?>: </strong>
                </div>
                  <div class="col-md-7 col-sm-7 col-xs-7">
                       </strong> <?php echo $settings->school_name; ?>
                   </div>
                </div>
             
                <!-- /.col -->
            </div>

        </section>
        <section class="content invoice">
            <div class="row">
                <!-- accepted payments column -->
                <!--<div class="col-xs-6">-->
                <!--    <p class="lead"><?php echo $this->lang->line('payment_method'); ?>:</p>-->
                <!--    <img src="<?php echo IMG_URL; ?>visa.png" alt="Visa">-->
                <!--    <img src="<?php echo IMG_URL; ?>mastercard.png" alt="Mastercard">-->
                <!--    <img src="<?php echo IMG_URL; ?>american-express.png" alt="American Express">-->
                <!--    <img src="<?php echo IMG_URL; ?>paypal.png" alt="Paypal">-->
                <!--</div>-->
                <!-- /.col -->
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table class="table table2">
                            <thead style="boarder">
                        <tr>
                            <th><?php echo $this->lang->line('description'); ?></th>
                            <th><?php echo $this->lang->line('amount'); ?></th>
                        
                        </tr>
                    </thead>
                            <tbody>
                                <?php if(isset($invoice_items) && !empty($invoice_items)){ ?>
                            <?php $counter = 1; foreach($invoice_items as $item){ ?>
                                <tr>
                        
                                    <th style="width:56%"><?php echo $item->title; ?>:</th>
                                    <td><?php echo $settings->currency_symbol; ?><?php echo $item->gross_amount; ?></td>
                                    
                                    
                                    
                                    <!--<td  style="width:10%"><?php echo $counter++; ?></td>-->
                                    <!--<td  style="width:25%"> <?php echo $item->title; ?></td>-->
                                    <!--<td> <?php echo $settings->currency_symbol; ?><?php echo $item->gross_amount; ?></td>-->
                                    <!--<td><?php echo $settings->currency_symbol; ?><?php echo round($item->discount,2); ?></td>-->
                                    <!--<td><?php echo $settings->currency_symbol; ?><?php echo round($item->net_amount, 2); ?></td>-->
                                </tr>
                            <?php } ?>
                        <?php } ?>
                            <tr>
                                <th style="width:56%"><?php echo $this->lang->line('subtotal'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $invoice->gross_amount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('discount'); ?></th>
                                <td><?php echo $settings->currency_symbol; ?><?php  echo $invoice->inv_discount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('total'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $invoice->net_amount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('paid_amount'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $paid_amount ? $paid_amount : 0.00; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('due_amount'); ?>:</th>
                                <td><span class="btn-danger" style="padding: 5px;border-radius: 4px;"><?php echo $settings->currency_symbol; ?><?php echo $invoice->net_amount-$paid_amount; ?></span></td>
                            </tr>
                            <?php if($invoice->paid_status == 'paid'){ ?>
                                <tr>
                                    <th><?php echo $this->lang->line('paid_date'); ?>:</th>
                                    <td><?php echo date($settings->sms_date_format, strtotime($invoice->date)); ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-xs-12"></div>
            </div>
            <!-- /.row -->
            <div class="row">
                <p class="white text-center">
                    <?php if(isset($settings->footer) && $settings->footer != ''){ ?>
                    <h5>PAYMANET TERMS:</h5>
                    <ul>
                        <li class="fn-size">Fee must be deposited between 9:00 A.M. to 5.00 P.M. in working days</li>
                        <li class="fn-size">Fee must be deposited within due dates</li>
                        <li class="fn-size">Any kind of editing in the voucher is strictly prohibited</li>
                        <li class="fn-size">The bank will only accept the exact amount written on the fee voucher.</li>
                    </ul>
                    <p class="text-center"><?php  echo $this->lang->line('bank_copy'); ?></p>
                        <!--<?php echo $settings->footer; ?>-->
                    <?php }else{ ?>
                        <?php echo 'Copyright © '. date('Y').' <a target="_blank" href="https://codecanyon.net/user/codetroopers">Codetroopers Team.</a> All rights reserved.'; ?>
                    <?php } ?>
                </p>
            </div>

        </section>


        <!-- this row will not appear when printing -->
      

    </div>
   <div class="col-md-4 row-body">
        <section class="content invoice profile_img layout-box" style="background: #ffffff;">
            <!-- title row -->
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-3 invoice-header_ text-center" style="text-align: center !important;">
                    <?php if($settings->logo){ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->logo; ?>" alt="" width="50" />
                    <?php }else if($settings->front_logo){ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->front_logo; ?>" alt="" width="50"/>
                    <?php }else{ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->brand_logo; ?>" alt="" width="50"/>
                    <?php } ?>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 invoice-header_" style="text-align: center !important;">
                    <h4><?php echo $settings->school_name; ?></h4>
                    <?php echo $settings->address; ?>
                    <br><?php echo $this->lang->line('phone'); ?>: <?php echo $settings->phone; ?>,
                    <?php echo $this->lang->line('email'); ?>: <?php echo $settings->email; ?>
                </div>
            </div>
            <!--<div class="row">-->
            <!--    <div class="col-md-12 col-sm-12 col-xs-12 invoice-header_" style="text-align: center !important;">-->
            <!--        <h3><?php echo $settings->school_name; ?></h3>-->
            <!--        <?php echo $settings->address; ?>-->
            <!--        <br><?php echo $this->lang->line('phone'); ?>: <?php echo $settings->phone; ?>,-->
            <!--        <?php echo $this->lang->line('email'); ?>: <?php echo $settings->email; ?>-->
            <!--    </div>-->
            <!--</div>-->
            
            
            
            
            <div class="row"><hr/></div>
            <!-- info row -->
            <div class="row invoice-info">
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('invoice'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->custom_invoice_id; ?>
                   </div>
                </div>
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('student'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->user_name; ?>
                   </div>
                </div>
                
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo $this->lang->line('department'); ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo $invoice->class_name; ?>
                   </div>
                </div>
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('phone'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->phone; ?>
                   </div>
                </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo $this->lang->line('issue_date'); ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo date($settings->sms_date_format, strtotime($invoice->date)); ?>
                   </div>
                </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('status'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo get_paid_status($invoice->paid_status); ?>
                   </div>
                </div>
                
                 <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo "Bank Name" ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo "Mezan Bank " ?>
                   </div>
                   </div>
                   <div class="row invoice-col_ m-b">
                   <div class="col-md-3 col-sm-3 col-xs-3">
                       <?php echo "A/c No" ?>
                   </div>
                   <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo "#000000000" ?>
                   </div>
                   </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-5 col-sm-5 col-xs-5">
                    <strong><?php echo "Collage Name"; ?>: </strong>
                </div>
                  <div class="col-md-7 col-sm-7 col-xs-7">
                       </strong> <?php echo $settings->school_name; ?>
                   </div>
                </div>
             
                <!-- /.col -->
            </div>

        </section>
        <section class="content invoice">
            <div class="row">
                <!-- accepted payments column -->
                <!--<div class="col-xs-6">-->
                <!--    <p class="lead"><?php echo $this->lang->line('payment_method'); ?>:</p>-->
                <!--    <img src="<?php echo IMG_URL; ?>visa.png" alt="Visa">-->
                <!--    <img src="<?php echo IMG_URL; ?>mastercard.png" alt="Mastercard">-->
                <!--    <img src="<?php echo IMG_URL; ?>american-express.png" alt="American Express">-->
                <!--    <img src="<?php echo IMG_URL; ?>paypal.png" alt="Paypal">-->
                <!--</div>-->
                <!-- /.col -->
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table class="table table2">
                            <thead style="boarder">
                        <tr>
                            <th><?php echo $this->lang->line('description'); ?></th>
                            <th><?php echo $this->lang->line('amount'); ?></th>
                        
                        </tr>
                    </thead>
                            <tbody>
                                <?php if(isset($invoice_items) && !empty($invoice_items)){ ?>
                            <?php $counter = 1; foreach($invoice_items as $item){ ?>
                                <tr>
                        
                                    <th style="width:56%"><?php echo $item->title; ?>:</th>
                                    <td><?php echo $settings->currency_symbol; ?><?php echo $item->gross_amount; ?></td>
                                    
                                    
                                    
                                    <!--<td  style="width:10%"><?php echo $counter++; ?></td>-->
                                    <!--<td  style="width:25%"> <?php echo $item->title; ?></td>-->
                                    <!--<td> <?php echo $settings->currency_symbol; ?><?php echo $item->gross_amount; ?></td>-->
                                    <!--<td><?php echo $settings->currency_symbol; ?><?php echo round($item->discount,2); ?></td>-->
                                    <!--<td><?php echo $settings->currency_symbol; ?><?php echo round($item->net_amount, 2); ?></td>-->
                                </tr>
                            <?php } ?>
                        <?php } ?>
                            <tr>
                                <th style="width:56%"><?php echo $this->lang->line('subtotal'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $invoice->gross_amount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('discount'); ?></th>
                                <td><?php echo $settings->currency_symbol; ?><?php  echo $invoice->inv_discount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('total'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $invoice->net_amount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('paid_amount'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $paid_amount ? $paid_amount : 0.00; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('due_amount'); ?>:</th>
                                <td><span class="btn-danger" style="padding: 5px;border-radius: 4px;"><?php echo $settings->currency_symbol; ?><?php echo $invoice->net_amount-$paid_amount; ?></span></td>
                            </tr>
                            <?php if($invoice->paid_status == 'paid'){ ?>
                                <tr>
                                    <th><?php echo $this->lang->line('paid_date'); ?>:</th>
                                    <td><?php echo date($settings->sms_date_format, strtotime($invoice->date)); ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-xs-12"></div>
            </div>
            <!-- /.row -->
            <div class="row">
                <p class="white text-center">
                    <?php if(isset($settings->footer) && $settings->footer != ''){ ?>
                    <h5>PAYMANET TERMS:</h5>
                    <ul>
                        <li class="fn-size">Fee must be deposited between 9:00 A.M. to 5.00 P.M. in working days</li>
                        <li class="fn-size">Fee must be deposited within due dates</li>
                        <li class="fn-size">Any kind of editing in the voucher is strictly prohibited</li>
                        <li class="fn-size">The bank will only accept the exact amount written on the fee voucher.</li>
                    </ul>
                    <p class="text-center"><?php  echo $this->lang->line('student_copy'); ?></p>
                        <!--<?php echo $settings->footer; ?>-->
                    <?php }else{ ?>
                        <?php echo 'Copyright © '. date('Y').' <a target="_blank" href="https://codecanyon.net/user/codetroopers">Codetroopers Team.</a> All rights reserved.'; ?>
                    <?php } ?>
                </p>
            </div>

        </section>


        <!-- this row will not appear when printing -->
    

    </div>
    <div class="col-md-4 row-body">
        <section class="content invoice profile_img layout-box" style="background: #ffffff;">
            <!-- title row -->
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-3 invoice-header_ text-center" style="text-align: center !important;">
                    <?php if($settings->logo){ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->logo; ?>" alt="" width="50" />
                    <?php }else if($settings->front_logo){ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->front_logo; ?>" alt="" width="50"/>
                    <?php }else{ ?>
                        <img src="<?php echo UPLOAD_PATH; ?>logo/<?php echo $settings->brand_logo; ?>" alt="" width="50"/>
                    <?php } ?>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 invoice-header_" style="text-align: center !important;">
                    <h4><?php echo $settings->school_name; ?></h4>
                    <?php echo $settings->address; ?>
                    <br><?php echo $this->lang->line('phone'); ?>: <?php echo $settings->phone; ?>,
                    <?php echo $this->lang->line('email'); ?>: <?php echo $settings->email; ?>
                </div>
            </div>
            <!--<div class="row">-->
            <!--    <div class="col-md-12 col-sm-12 col-xs-12 invoice-header_" style="text-align: center !important;">-->
            <!--        <h3><?php echo $settings->school_name; ?></h3>-->
            <!--        <?php echo $settings->address; ?>-->
            <!--        <br><?php echo $this->lang->line('phone'); ?>: <?php echo $settings->phone; ?>,-->
            <!--        <?php echo $this->lang->line('email'); ?>: <?php echo $settings->email; ?>-->
            <!--    </div>-->
            <!--</div>-->
            
            
            
            
            <div class="row"><hr/></div>
            <!-- info row -->
            <div class="row invoice-info">
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('invoice'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->custom_invoice_id; ?>
                   </div>
                </div>
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('student'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->user_name; ?>
                   </div>
                </div>
                
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo $this->lang->line('department'); ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo $invoice->class_name; ?>
                   </div>
                </div>
                
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('phone'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo $invoice->phone; ?>
                   </div>
                </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo $this->lang->line('issue_date'); ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo date($settings->sms_date_format, strtotime($invoice->date)); ?>
                   </div>
                </div>
                <div class="row invoice-col_ m-b">
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <strong><?php echo $this->lang->line('status'); ?>: </strong>
                </div>
                  <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo get_paid_status($invoice->paid_status); ?>
                   </div>
                </div>
                
                 <div class="row invoice-col_ m-b">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <strong><?php echo "Bank Name" ?>: </strong>
                </div>
                  <div class="col-md-8 col-sm-8 col-xs-8 column-row">
                       <?php echo "Mezan Bank " ?>
                   </div>
                   </div>
                   <div class="row invoice-col_ m-b">
                   <div class="col-md-3 col-sm-3 col-xs-3">
                       <?php echo "A/c No" ?>
                   </div>
                   <div class="col-md-9 col-sm-9 col-xs-9 column-row">
                       <?php echo "#000000000" ?>
                   </div>
                   </div>
                   
                <div class="row invoice-col_ m-b">
                <div class="col-md-5 col-sm-5 col-xs-5">
                    <strong><?php echo "Collage Name"; ?>: </strong>
                </div>
                  <div class="col-md-7 col-sm-7 col-xs-7">
                       </strong> <?php echo $settings->school_name; ?>
                   </div>
                </div>
             
                <!-- /.col -->
            </div>

        </section>
        <section class="content invoice">
            <div class="row">
                <!-- accepted payments column -->
                <!--<div class="col-xs-6">-->
                <!--    <p class="lead"><?php echo $this->lang->line('payment_method'); ?>:</p>-->
                <!--    <img src="<?php echo IMG_URL; ?>visa.png" alt="Visa">-->
                <!--    <img src="<?php echo IMG_URL; ?>mastercard.png" alt="Mastercard">-->
                <!--    <img src="<?php echo IMG_URL; ?>american-express.png" alt="American Express">-->
                <!--    <img src="<?php echo IMG_URL; ?>paypal.png" alt="Paypal">-->
                <!--</div>-->
                <!-- /.col -->
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table class="table table2">
                            <thead style="boarder">
                        <tr>
                            <th><?php echo $this->lang->line('description'); ?></th>
                            <th><?php echo $this->lang->line('amount'); ?></th>
                        
                        </tr>
                    </thead>
                            <tbody>
                                <?php if(isset($invoice_items) && !empty($invoice_items)){ ?>
                            <?php $counter = 1; foreach($invoice_items as $item){ ?>
                                <tr>
                        
                                    <th style="width:56%"><?php echo $item->title; ?>:</th>
                                    <td><?php echo $settings->currency_symbol; ?><?php echo $item->gross_amount; ?></td>
                                    
                                    
                                    
                                    <!--<td  style="width:10%"><?php echo $counter++; ?></td>-->
                                    <!--<td  style="width:25%"> <?php echo $item->title; ?></td>-->
                                    <!--<td> <?php echo $settings->currency_symbol; ?><?php echo $item->gross_amount; ?></td>-->
                                    <!--<td><?php echo $settings->currency_symbol; ?><?php echo round($item->discount,2); ?></td>-->
                                    <!--<td><?php echo $settings->currency_symbol; ?><?php echo round($item->net_amount, 2); ?></td>-->
                                </tr>
                            <?php } ?>
                        <?php } ?>
                            <tr>
                                <th style="width:56%"><?php echo $this->lang->line('subtotal'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $invoice->gross_amount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('discount'); ?></th>
                                <td><?php echo $settings->currency_symbol; ?><?php  echo $invoice->inv_discount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('total'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $invoice->net_amount; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('paid_amount'); ?>:</th>
                                <td><?php echo $settings->currency_symbol; ?><?php echo $paid_amount ? $paid_amount : 0.00; ?></td>
                            </tr>
                            <tr>
                                <th><?php echo $this->lang->line('due_amount'); ?>:</th>
                                <td><span class="btn-danger" style="padding: 5px;border-radius: 4px;"><?php echo $settings->currency_symbol; ?><?php echo $invoice->net_amount-$paid_amount; ?></span></td>
                            </tr>
                            <?php if($invoice->paid_status == 'paid'){ ?>
                                <tr>
                                    <th><?php echo $this->lang->line('paid_date'); ?>:</th>
                                    <td><?php echo date($settings->sms_date_format, strtotime($invoice->date)); ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-xs-12"></div>
            </div>
            <!-- /.row -->
            <div class="row">
                <p class="white text-center">
                    <?php if(isset($settings->footer) && $settings->footer != ''){ ?>
                    <h5>PAYMANET TERMS:</h5>
                    <ul>
                        <li class="fn-size">Fee must be deposited between 9:00 A.M. to 5.00 P.M. in working days</li>
                        <li class="fn-size">Fee must be deposited within due dates</li>
                        <li class="fn-size">Any kind of editing in the voucher is strictly prohibited</li>
                        <li class="fn-size">The bank will only accept the exact amount written on the fee voucher.</li>
                    </ul>
                    <p class="text-center"><?php  echo "Collage Copy" ?></p>
                        <!--<?php echo $settings->footer; ?>-->
                    <?php }else{ ?>
                        <?php echo 'Copyright © '. date('Y').' <a target="_blank" href="https://codecanyon.net/user/codetroopers">Codetroopers Team.</a> All rights reserved.'; ?>
                    <?php } ?>
                </p>
            </div>

        </section>

    </div>
</div>
  <div class="row m-t-10">
     <!-- this row will not appear when printing -->
        <section>
            <div class="row no-print" style="margin-top:"10px" ">
                <div class="col-xs-12 col-md-12 col-sm-12">
                    <button class="btn btn-default" onclick="window.print();"><i class="fa fa-print"></i> <?php echo $this->lang->line('print'); ?></button>
                    <?php if($invoice->paid_status != 'paid'){ ?>
                        <a href="<?php echo site_url('accounting/payment/index/'.$invoice->inv_id); ?>"><button class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> <?php echo $this->lang->line('pay_now'); ?></button></a>
                    <?php } ?>
                </div>
            </div>
        </section>
    </div>





