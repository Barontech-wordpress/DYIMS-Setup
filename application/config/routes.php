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

$route['news'] = 'web/news';
$route['news-detail/(:num)'] = 'web/news_detail/$1';
$route['notice'] = 'web/notice';
$route['notice-detail/(:num)'] = 'web/notice_detail/$1';
$route['holiday'] = 'web/holiday';
$route['holiday-detail/(:num)'] = 'web/holiday_detail/$1';
$route['events'] = 'web/events';
$route['event-detail/(:num)'] = 'web/event_detail/$1';
$route['galleries'] = 'web/galleries';
$route['gallery-image/(:num)'] = 'web/gallery_image/$1';
$route['teachers'] = 'web/teachers';
$route['staff'] = 'web/staff';
$route['faq'] = 'web/faq';
$route['contact'] = 'web/contact';
$route['about'] = 'web/about';
$route['programs'] = 'web/programs';
$route['campuslife'] = 'web/campuslife';
$route['hnd'] = 'web/hnd';
$route['ott'] = 'web/ott';
$route['mlt'] = 'web/mlt';
$route['dpt'] = 'web/dpt';
$route['rit'] = 'web/rit';
$route['library'] = 'web/library_page';
$route['chairman-message-page'] = 'web/chairmanmessagepage';
$route['project-director-message'] = 'web/projectdirectormessage';
$route['coomessage'] = 'web/coomessage';
$route['principal-message'] = 'web/principalmessage';
$route['affiliations'] = 'web/affiliations';
$route['collaborations'] = 'web/collaborations';
$route['qec'] = 'web/qec';
$route['qec-mission'] = 'web/qecmission';
$route['qec-forms'] = 'web/qecform';
$route['qec-coordinators'] = 'web/coordinators';
$route['mission-vision'] = 'web/missionvision';
$route['school-of-nursing'] = 'web/schoolofnursing';
$route['library-facility'] = 'web/facilitylibrary';
$route['transport-facility'] = 'web/facilitytransport';
$route['tuckshop-facility'] = 'web/facilitytuckshop';
$route['how-to-apply'] = 'web/howtoapply';
$route['date-and-deadline'] = 'web/dateanddeadline';
$route['laboratory-facility'] = 'web/laboratory';
$route['auditorium-facility'] = 'web/auditorium';
$route['computer-lab'] = 'web/computerlab';
// $route['dispenser'] = 'web/dispenser';
$route['campus-location'] = 'web/campuslocation';
$route['qadir-ali-hospital'] = 'web/qadiralihospital';
$route['social-welfare'] = 'web/socialwelfare';
$route['sports-ground'] = 'web/sportsground';
$route['student-advisory'] = 'web/studentadvisory';
$route['study-tour'] = 'web/studytour';
$route['car-parking'] = 'web/carparking';
$route['communication-skills'] = 'web/communicationskills';
$route['grooming'] = 'web/grooming';
$route['professional-development'] = 'web/professionaldevlopment';
$route['history'] = 'web/dyimshistory';



$route['admission-online'] = 'web/admission_online';
$route['admission-form'] = 'web/admission_form';

$route['page/(:any)'] = 'web/page/$1';

$route['login'] = 'welcome';
$route['forgot'] = 'auth/forgot';
$route['logout'] = 'auth/logout';
$route['reset/(:any)'] = 'auth/reset/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
