<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->get('services', 'Services::list');
$routes->post('services', 'Services::list');
$routes->get('services/new', 'Services::create');
$routes->post('services/new', 'Services::create');
$routes->get('services/edit/(:num)', 'Services::edit/$1');
$routes->post('services/edit/(:num)', 'Services::edit/$1');
$routes->get('articles', 'Home::articles');
$routes->get('contacts', 'Home::contacts');


$routes->get('logout', 'Home::index');