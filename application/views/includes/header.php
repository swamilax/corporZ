<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- MetaTags -->
  <?php
  if (!empty($metatags)) {
    echo $metatags;
  }
  ?>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/frontend/images/favicon.ico">

  <!-- Title -->
  <?php
  if (!empty($title)) {
  ?>
    <title><?php echo $title; ?></title>
  <?php
  }
  ?>

  <!-- Stylesheet -->
  <?php
  if (!empty($styles)) {
    foreach ($styles as $style) {
      echo $style;
    }
  }
  ?>

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<style>
.float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	left:40px;
	background-color:#25d366;
	color:#FFF;
	border-radius:50px;
	text-align:center;
  font-size:30px;
	box-shadow: 2px 2px 3px #999;
  z-index:100;
}

.my-float{
	margin-top:16px;
}

.bounce-7 
{
        animation-name: bounce-7;
        animation-timing-function: cubic-bezier(0.280, 0.840, 0.420, 1);
}

@keyframes bounce-7 
{
        0%   { transform: scale(1,1)      translateY(0); }
        10%  { transform: scale(1.1,.9)   translateY(0); }
        30%  { transform: scale(.9,1.1)   translateY(-100px); }
        50%  { transform: scale(1.05,.95) translateY(0); }
        57%  { transform: scale(1,1)      translateY(-7px); }
        64%  { transform: scale(1,1)      translateY(0); }
        100% { transform: scale(1,1)      translateY(0); }
}
</style>

</head>

<body>
<a href="#" class="float bounce-7" target="_blank">
<i class="fa fa-whatsapp my-float bounce-7"></i>
</a>