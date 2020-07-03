<?php
$latest_build = '4200';
$ui->assign('latest_build',$latest_build);
// Enable Error Reporting
ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);
$msg = '';

# Date: May 22, 2015


$d = ORM::for_table('sys_pl')->raw_query("SHOW COLUMNS FROM sys_pl LIKE 'name'")->find_one();

if($d){
    $r = ORM::for_table('sys_pl')->raw_execute("ALTER TABLE sys_pl DROP name, DROP url, DROP icon");
    $msg .= 'Updated sys_pl table
';
}

$d = ORM::for_table('crm_accounts')->raw_query("SHOW TABLES LIKE 'crm_customfields'")->find_one();

if(!$d){
    $r = ORM::for_table('crm_accounts')->raw_execute("CREATE TABLE IF NOT EXISTS crm_customfields (
id int(10) NOT NULL AUTO_INCREMENT,
  ctype text,
  relid int(10) NOT NULL DEFAULT '0',
  fieldname text,
  fieldtype text,
  description text,
  fieldoptions text,
  regexpr text,
  adminonly text,
  required text,
  showorder text,
  showinvoice text,
  sorder int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1");

    $msg .= 'Created table crm_customfields
';
}


$d = ORM::for_table('crm_accounts')->raw_query("SHOW TABLES LIKE 'crm_customfieldsvalues'")->find_one();

if(!$d){
    $r = ORM::for_table('crm_accounts')->raw_execute("CREATE TABLE IF NOT EXISTS crm_customfieldsvalues (
  id int(10) NOT NULL AUTO_INCREMENT,
  fieldid int(10) NOT NULL,
  relid int(10) NOT NULL,
  fvalue text NOT NULL,
  PRIMARY KEY ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1");

    $msg .= 'Created table crm_customfieldsvalues
';
}

if(add_option('build',$latest_build)){
    $msg .= 'Build Row Created
';
}

if((get_option('build')) != $latest_build){
    update_option('build',$latest_build);
    $msg .= 'Build Updated to: '.$latest_build.'
';
}


// ALTER TABLE sys_invoices ADD discount DECIMAL(14,2) NOT NULL DEFAULT '0.00' AFTER subtotal;

// ALTER TABLE sys_invoices ADD discount_type VARCHAR(1) NOT NULL DEFAULT 'f' AFTER subtotal;

// SHOW COLUMNS FROM user LIKE 'flexi'"

$d = ORM::for_table('sys_invoices')->raw_query("SHOW COLUMNS FROM sys_invoices LIKE 'discount'")->find_one();


if(!$d){
    $r = ORM::for_table('sys_invoices')->raw_execute("ALTER TABLE sys_invoices ADD discount DECIMAL(14,2) NOT NULL DEFAULT '0.00' AFTER subtotal");
    $r = ORM::for_table('sys_invoices')->raw_execute("ALTER TABLE sys_invoices ADD discount_value DECIMAL(14,2) NOT NULL DEFAULT '0.00' AFTER subtotal");
    $r = ORM::for_table('sys_invoices')->raw_execute("ALTER TABLE sys_invoices ADD discount_type VARCHAR(1) NOT NULL DEFAULT 'f' AFTER subtotal");

    $msg .= 'Discount Column Created in Invoice Table
';
}


if(add_option('animate','1')){
    $msg .= 'Animate Row Created
';
}


if(add_option('pdf_font','dejavusanscondensed')){
    $msg .= 'Font Row Created
';
}


/*
 * @ From v 2.3
*/


$d = ORM::for_table('crm_customfields')->where('ctype','')->find_many();
foreach($d as $ds){
    $x = ORM::for_table('crm_customfields')->find_one($ds['id']);
    $x->ctype = 'crm';
    $x->save();
    $msg .= 'ctype changed for '.$ds['fieldname'].'
';
}





/*
 * @ From v 2.4
*/

// Added for Settings -> Choose Features


if(add_option('accounting','1')){
    $msg .= 'accounting Row Created
';
}

if(add_option('invoicing','1')){
    $msg .= 'invoicing Row Created
';
}

if(add_option('quotes','1')){
    $msg .= 'quotes Row Created
';
}

if(add_option('client_dashboard','1')){
    $msg .= 'client_dashboard Row Created
';
}



//creating table for quote


$d = ORM::for_table('crm_accounts')->raw_query("SHOW TABLES LIKE 'sys_quotes'")->find_one();

if(!$d){
    $r = ORM::execute("
    CREATE TABLE IF NOT EXISTS sys_quotes (
id int(10) NOT NULL AUTO_INCREMENT,
subject text NOT NULL,
stage enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
validuntil date NOT NULL,
userid int(10) NOT NULL,
invoicenum text NOT NULL,
cn text NOT NULL,
account text NOT NULL,
firstname text NOT NULL,
lastname text NOT NULL,
companyname text NOT NULL,
email text NOT NULL,
address1 text NOT NULL,
address2 text NOT NULL,
city text NOT NULL,
state text NOT NULL,
postcode text NOT NULL,
country text NOT NULL,
phonenumber text NOT NULL,
currency int(10) NOT NULL,
subtotal decimal(10,2) NOT NULL,
discount_type text NOT NULL,
discount_value decimal(10,2) NOT NULL,
discount decimal(10,2) NOT NULL,
taxname text NOT NULL,
taxrate decimal(10,2) NOT NULL,
tax1 decimal(10,2) NOT NULL,
tax2 decimal(10,2) NOT NULL,
total decimal(10,2) NOT NULL,
proposal text NOT NULL,
customernotes text NOT NULL,
adminnotes text NOT NULL,
datecreated date NOT NULL,
lastmodified date NOT NULL,
datesent date NOT NULL,
dateaccepted date NOT NULL,
vtoken text NOT NULL,
PRIMARY KEY ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000
    ");

    $msg .= 'Created table sys_quotes
';

    $r = ORM::execute("CREATE TABLE IF NOT EXISTS sys_quoteitems (
id int(10) NOT NULL AUTO_INCREMENT,
qid int(10) NOT NULL,
itemcode text NOT NULL,
description text NOT NULL,
qty text NOT NULL,
amount decimal(10,2) NOT NULL,
discount decimal(10,2) NOT NULL,
total decimal(10,2) NOT NULL,
taxable int(1) NOT NULL,
PRIMARY KEY ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1
 ");

    $msg .= 'Created table sys_quoteitems
';

}


$d = ORM::for_table('sys_email_templates')->where('tplname','Quote:Quote Created')->find_one();
if(!$d){
    ORM::execute("INSERT INTO sys_email_templates (tplname, language_id, subject, message, send, core, hidden) VALUES
('Quote:Quote Created', 1, '{{quote_subject}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style=\"padding:10px 5px\">    Quote Unique URL: <a href=\"{{quite_url}}\" target=\"_blank\">{{quote_url}}</a><br></div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0)
");

    $msg .= 'Quote Email Template Created
';

}


$d = ORM::for_table('sys_invoices')->raw_query("SHOW COLUMNS FROM sys_invoices LIKE 'cn'")->find_one();


if(!$d){

   ORM::execute("ALTER TABLE sys_invoices ADD cn VARCHAR(100) NOT NULL DEFAULT '' AFTER account");

    $msg .= 'Custom Invoice Number Column Created in Invoice Table
';
}


// Braintree and ccavenue Payment Gateway from v2.4


// INSERT INTO sys_pg (name, settings, value, processor, ins, c1, c2, c3, c4, c5, status, sorder) VALUES('Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Active', 5);
$d = ORM::for_table('sys_pg')->where('processor','braintree')->find_one();

if(!$d){
   ORM::execute("INSERT INTO sys_pg (name, settings, value, processor, ins, c1, c2, c3, c4, c5, status, sorder) VALUES('Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 5)");
   ORM::execute("INSERT INTO sys_pg (name, settings, value, processor, ins, c1, c2, c3, c4, c5, status, sorder) VALUES('CCAvenue', 'Merchant ID', 'your merchant id', 'ccavenue', '', 'insert working key here', 'INR', '1', '', '', 'Inactive', 6)");

    $msg .= 'PG 2.4 Rows created
';

}



// =============================================== V 3.0.0 ===============================================

// For API support

$d = ORM::for_table('crm_accounts')->raw_query("SHOW TABLES LIKE 'sys_api'")->find_one();

if(!$d){

    $t = new Schema('sys_api');
    $t->add('label');
    $t->add('ip');
    $t->add('apikey');
    $t->save();

    $msg .= 'API Table is created
';

}

if(add_option('contact_set_view_mode','card')){
    $msg .= 'contact_set_view_mode Row Created
';
}


// End ==================================

// Version 3.2

if(file_exists('sysfrm/controllers/cases.php')){
    unlink('sysfrm/controllers/cases.php');
}

if(file_exists('sysfrm/controllers/notes.php')){
    unlink('sysfrm/controllers/notes.php');
}


// Version 3.3


if(add_option('invoice_terms','')){
    $msg .= 'Invoice Terms Row Created
';
}


if(add_option('console_notify_invoice_created','0')){
    $msg .= 'console_notify_invoice_created Row Created
';
}


// Version 3.4

if(add_option('i_driver','v2')){
    $msg .= 'i_driver Row Created
';
}



// Version 3.6


$d = ORM::for_table('sys_invoices')->raw_query("SHOW COLUMNS FROM sys_invoices LIKE 'eid'")->find_one();


if(!$d){

    ORM::execute("ALTER TABLE sys_invoices ADD eid INT(10) NOT NULL DEFAULT '0' AFTER nd, ADD ename VARCHAR(200) NOT NULL DEFAULT '' AFTER eid");

    $msg .= 'Emp Column Created in Invoice Table
';
}

// v 4.0

// create purchase key row

if(add_option('purchase_code','')){
    $msg .= 'Purchase Code Row is Created
';
}

if(add_option('c_cache','')){
    $msg .= 'Cache Row is Created
';
}


if(add_option('mininav','0')){
    $msg .= 'Mini Navbar Row is Created
';
}

if(add_option('hide_footer','0')){
    $msg .= 'Hide Footer Row is Created
';
}

if(add_option('design','default')){
    $msg .= 'Design row is created
';
}

$d = ORM::for_table('sys_accounts')->raw_query("SHOW COLUMNS FROM sys_accounts LIKE 'bank_name'")->find_one();


if(!$d){

    ORM::execute("ALTER TABLE sys_accounts ADD bank_name VARCHAR(200) NULL DEFAULT NULL, ADD account_number VARCHAR(200) NULL DEFAULT NULL, ADD currency VARCHAR(20) NULL DEFAULT NULL, ADD branch VARCHAR(200) NULL DEFAULT NULL, ADD address VARCHAR(200) NULL DEFAULT NULL, ADD contact_person VARCHAR(200) NULL DEFAULT NULL, ADD contact_phone VARCHAR(100) NULL DEFAULT NULL, ADD website VARCHAR(200) NULL DEFAULT NULL, ADD ib_url VARCHAR(200) NULL DEFAULT NULL, ADD created DATE NULL DEFAULT NULL, ADD notes TEXT NULL DEFAULT NULL, ADD sorder INT(11) NULL DEFAULT NULL, ADD e VARCHAR(200) NULL DEFAULT NULL, ADD token VARCHAR(200) NULL DEFAULT NULL, ADD status VARCHAR(200) NULL DEFAULT NULL");

    $msg .= 'Accounts table altered
';
}


// V 4.1

if(add_option('default_landing_page','login')){
    $msg .= 'Default landing page row is created
';
}

$d = ORM::for_table('sys_pg')->raw_query("SHOW COLUMNS FROM sys_pg LIKE 'logo'")->find_one();


if(!$d){
    $r = ORM::for_table('sys_invoices')->raw_execute("ALTER TABLE sys_pg ADD logo VARCHAR (200), ADD mode VARCHAR (200)");

    $msg .= 'Sys_pg altered.
';
}


$d = ORM::for_table('crm_accounts')->raw_query("SHOW COLUMNS FROM crm_accounts LIKE 'tax_number'")->find_one();


if(!$d){
    $r = ORM::for_table('crm_accounts')->raw_execute("
ALTER TABLE crm_accounts
ADD twitter VARCHAR (100),
ADD skype VARCHAR (100),
 ADD tax_number VARCHAR (100),
  ADD entity_number	VARCHAR (100),
  ADD currency	VARCHAR (50),
  ADD pmethod VARCHAR (100),
  ADD autologin VARCHAR (100),
  ADD lastlogin datetime,
  ADD lastloginip VARCHAR (100),
  ADD stage VARCHAR (50),
  ADD timezone VARCHAR (50),
  ADD isp VARCHAR (100),
  ADD lat VARCHAR (50),
  ADD lon VARCHAR (50),
  ADD gname VARCHAR (200),
  ADD gid INT (11) NOT NULL DEFAULT '0',
  ADD sid VARCHAR (200),
  ADD role VARCHAR (200),
  ADD country_code VARCHAR (20),
  ADD country_idd VARCHAR (20),
  ADD signed_up_by VARCHAR (100),
  ADD signed_up_ip VARCHAR (20),
  ADD dob date,
  ADD ct VARCHAR (200),
  ADD assistant VARCHAR (200),
  ADD asst_phone VARCHAR (100),
  ADD second_email VARCHAR (100),
  ADD second_phone VARCHAR (100),
  ADD taxexempt VARCHAR (50),
  ADD latefeeoveride VARCHAR (50),
  ADD overideduenotices VARCHAR (50),
  ADD separateinvoices VARCHAR (50),
  ADD disableautocc VARCHAR (50),
  ADD billingcid INT (10) NOT NULL DEFAULT '0',
  ADD securityqid INT (10) NOT NULL DEFAULT '0',
  ADD securityqans text,
  ADD cardtype VARCHAR (200),
  ADD cardlastfour VARCHAR (20),
  ADD cardnum text,
  ADD startdate VARCHAR (50),
  ADD expdate VARCHAR (50),
  ADD issuenumber VARCHAR (200),
  ADD bankname VARCHAR (200),
  ADD banktype VARCHAR (200),
  ADD bankcode VARCHAR (200),
  ADD bankacct VARCHAR (200),
  ADD gatewayid INT (10) NOT NULL DEFAULT '0',
  ADD language text,
  ADD pwresetkey VARCHAR (100),
  ADD emailoptout VARCHAR (50),
  ADD email_verified VARCHAR (50),
  ADD created_at datetime,
  ADD updated_at datetime,
  ADD pwresetexpiry datetime,
  ADD c1 VARCHAR (200),
  ADD c2 VARCHAR (200),
  ADD c3 VARCHAR (200),
  ADD c4 VARCHAR (200),
  ADD c5 VARCHAR (200)

");

    $msg .= 'Contacts table altered.
';
}


$d = ORM::for_table('crm_accounts')->raw_query("SHOW TABLES LIKE 'crm_groups'")->find_one();

if(!$d){

    $s = new Schema('crm_groups');
    $s->add('gname','varchar',200);
    $s->add('color','varchar',50);
    $s->add('discount','varchar',50);
    $s->add('parent','varchar',200);
    $s->add('pid','int',10);
    $s->add('exempt');
    $s->add('description');
    $s->add('separateinvoices');
    $s->add('sorder','int',10);
    $s->add('c1','varchar',200);
    $s->add('c2','varchar',200);
    $s->add('c3','varchar',200);
    $s->add('c4','varchar',200);
    $s->add('c5','varchar',200);
    $s->save();


    $msg .= 'Created table crm_groups
';
}


//

// email template

$d = ORM::for_table('sys_email_templates')->where('tplname','Client:Client Signup Email')->find_one();

if(!$d){

    $c = ORM::for_table('sys_email_templates')->create();

    $c->tplname = 'Client:Client Signup Email';
    $c->language_id = 1;
    $c->subject = 'Your {{business_name}} Login Info';
    $c->message = '<p>Dear {{client_name}},</p>
<p>Welcome to {{business_name}}.</p>
<p>You can track your billing, profile, transactions from this portal.</p>
<p>Your login information is as follows:</p>
<p>---------------------------------------------------------------------------------------</p>
<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>
<p>----------------------------------------------------------------------------------------</p>
<p>We very much appreciate you for choosing us.</p>
<p>{{business_name}} Team</p>';

    $c->send = 'Yes';
    $c->core = 'Yes';
    $c->hidden = 0;

    $c->save();

    $msg .= 'New email template added
';


}



// V 4.2

if(add_option('recaptcha','0')){
    $msg .= 'recaptcha row is created
';
}

if(add_option('recaptcha_sitekey','')){
    $msg .= 'recaptcha sitekey row is created
';
}


if(add_option('recaptcha_secretkey','')){
    $msg .= 'recaptcha secretkey row is created
';
}

if(add_option('home_currency','USD')){
    $msg .= 'home_currency row is created
';
}

if(add_option('currency_decimal_digits','true')){
    $msg .= 'currency_decimal_digits row is created
';
}

if(add_option('currency_symbol_position','p')){
    $msg .= 'currency_symbol_position row is created
';
}

if(add_option('thousand_separator_placement','3')){
    $msg .= 'thousand_separator_placement row is created
';
}

// End Update


if($msg == ''){
    $msg = 'Done! You are using Latest Version!';
}
else{
    $msg .= 'Update Completed!
';
}

$ui->assign('msg',$msg);

$ui->display('update.tpl');
