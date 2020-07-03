<?php

Class Notify_Email
{


    protected $contents;
    protected $values = array();

    public static function _init()
    {
        global $config;
        $sysEmail = $config['sysEmail'];
        $sysCompany = $config['CompanyName'];
        $mail = new PHPMailer();
        $mail->CharSet = 'UTF-8';
        //check for smtp
        $e = ORM::for_table('sys_emailconfig')->find_one('1');
        if($e['method'] == 'smtp'){
            $mail->isSMTP();
            $mail->Host = $e['host'];
            $mail->SMTPAuth = true;
            $mail->Username = $e['username'];
            $mail->Password = $e['password'];
            $mail->SMTPSecure = $e['secure'];
            $mail->Port = $e['port'];
        }
        $mail->SetFrom($sysEmail, $sysCompany);
        $mail->AddReplyTo($sysEmail, $sysCompany);
        return $mail;
    }


    public static function _log($userid, $email, $subject, $message, $iid='0')
    {
        $date = date('Y-m-d H:i:s');
        $d = ORM::for_table('sys_email_logs')->create();
        $d->userid = $userid;
        $d->sender = '';
        $d->email = $email;
        $d->subject = $subject;
        $d->message = $message;
        $d->date = $date;
        $d->iid = $iid;
        $d->save();
        $id = $d->id();
        return $id;

    }


    public static function _send($name,$to,$subject,$message,$uid='0',$iid='0',$cc='',$bcc='',$attachment_path='',$attachment_file=''){
        $mail = self::_init();
        $mail->AddAddress($to, $name);

        if($cc != ''){
            $mail->AddAddress($cc);
        }

        if($bcc != ''){
            $mail->AddBCC($bcc);
        }

        if($attachment_path != ''){
            $mail->AddAttachment($attachment_path, $attachment_file,  'base64', 'application/pdf');
        }

        // check for attachment



        $mail->Subject = $subject;
        $mail->MsgHTML($message);
        global $_app_stage;
        if($_app_stage == 'Demo'){

        }
        else{
            $mail->Send();
        }

        //add log
        self::_log($uid,$to,$subject,$message,$iid);


    }

    public static function _test()
    {
        $mail = self::_init();
        $email = 'sadia@ibilling.io';
        $mail_subject = 'Test Email';
        $name = 'Sadia';
        $body = 'Hello this is test email body';
        $mail->AddAddress($email, $name);
        $mail->Subject = $mail_subject;
        $mail->MsgHTML($body);
        $mail->Send();

    }

    public static function _otp($otp,$name,$email)
    {
        $mail = self::_init();
        global $config;

        $sysCompany = $config['CompanyName'];
        $mail_subject = $sysCompany . ' OTP (One Time Password)';

        $body = 'Your '.$sysCompany.' password has been verified and OTP is required to proceed further. Your current session OTP is '.$otp.' and only valid for this session. If you didn\'t login, please contact us immediately.';
        $mail->AddAddress($email, $name);
        $mail->Subject = $mail_subject;
        $mail->MsgHTML($body);
        $mail->Send();

    }




   

   }