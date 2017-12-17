<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
 */
$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['gioithieu'] = "gioithieu/index";
$route['admin'] = "page/index";
$route['tin-tuc/(:any)'] = "home/detailTintuc/$1";
$route['tin-tuc.html'] = "home/tintuc";
$route['van-ban/(:any)'] = "home/detailVanban/$1";
$route['van-ban.html'] = "home/vanban";
$route['tai-lieu.html'] = "home/tailieu";
$route['quyet-dinh-ban-hanh-chuan-dau-ra.html'] = "home/qd_chuandaura";
$route['chuan-dau-ra-nganh.html'] = "home/chuandaura_view";
$route['quyet-dinh-ban-hanh-chuong-trinh-dao-tao.html'] = "home/qd_ctdt";
$route['khung-chuong-trinh-dao-tao-nganh.html'] = "home/ctdaotao";
$route['gioi-thieu.html'] = "home/index";
$route['chi-tiet-chuong-trinh-dao-tao/(:any)'] = "home/chitietCtDaotao/$1";
