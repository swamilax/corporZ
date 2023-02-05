<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Website
$route['default_controller'] = 'home';
$route['404-page-not-found'] = 'error';
$route['home'] = 'home';
$route['admin'] = 'auth/login';
$route['auth'] = 'auth/login';
$route['blogs'] = 'blog/all';
$route['gallery'] = 'gallery';
$route['contact-us'] = 'contact';
$route['contact-us/send'] = 'contact/send';

// Blogs & Pages
$route['(:any)'] = 'blog/index/$1';


// Admin
// $route['student_login'] = 'auth/student_login/login';
$route['404_override'] = 'error/index/';
$route['translate_uri_dashes'] = FALSE;
