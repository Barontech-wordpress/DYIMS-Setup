<?php echo $this->lang->line('quick_link'); ?>:

<?php if(has_permission(VIEW, 'message', 'message')){ ?>
<a href="<?php echo site_url('message/inbox'); ?>"><?php echo $this->lang->line('message'); ?></a> |
<?php } ?>
<?php if(has_permission(VIEW, 'message', 'mail')){ ?>
<a href="<?php echo site_url('message/mail/index'); ?>"><?php echo $this->lang->line('manage_email'); ?></a> |
<?php } ?>

<?php if(has_permission(VIEW, 'message', 'text')){ ?>
<a href="<?php echo site_url('message/text/index'); ?>"><?php echo $this->lang->line('manage_sms'); ?></a>                    
<?php } ?>