<?php

$router->get('/', 'controllers/index.php');
$router->get('/about', 'controllers/about.php');
$router->get('/contact', 'controllers/contact.php');

$router->get('/notes', 'controllers/notes/index.php')->only('auth');
$router->get('/note', 'controllers/notes/show.php');
$router->delete('/note', 'controllers/notes/destroy.php');

$router->get('/note/edit', 'controllers/notes/edit.php');
$router->patch('/note', 'controllers/notes/update.php');

$router->get('/notes/create', 'controllers/notes/create.php');
$router->post('/notes', 'controllers/notes/store.php');

$router->get('/register', 'controllers/registration/create.php')->only('guest');
$router->post('/register', 'controllers/registration/store.php')->only('guest');

$router->get('/login', 'controllers/session/create.php')->only('guest');
$router->post('/session', 'controllers/session/store.php')->only('guest');
$router->delete('/session', 'controllers/session/destroy.php')->only('auth');

// // Admin router

$router->get('/admin', 'controllers/admin/dashboard.php')
       ->only('auth');

$router->get('/admin/users', 'controllers/admin/users/index.php')
       ->only('auth');

$router->get('/admin/users/create', 'controllers/admin/users/create.php')
       ->only('auth');

$router->post('/admin/users', 'controllers/admin/users/store.php')
       ->only('auth');

$router->get('/admin/users/{id}', 'controllers/admin/users/show.php')
       ->only('auth');

$router->get('/admin/users/{id}/edit', 'controllers/admin/users/edit.php')
       ->only('auth');

$router->patch('/admin/users/{id}', 'controllers/admin/users/update.php')
       ->only('auth');

$router->delete('/admin/users/{id}', 'controllers/admin/users/destroy.php')
       ->only('auth');

$router->get('/admin/email/settings', 'controllers/admin/email/settings.php')
       ->only('auth');

$router->post('/admin/email/settings', 'controllers/admin/email/update_settings.php')
       ->only('auth');

$router->get('/admin/badkeywords', 'controllers/admin/bad_keywords/index.php')
       ->only('auth');

$router->get('/admin/badkeywords/create', 'controllers/admin/bad_keywords/create.php')
       ->only('auth');

$router->post('/admin/badkeywords', 'controllers/admin/bad_keywords/store.php')
       ->only('auth');

$router->get('/admin/badkeywords/{id}', 'controllers/admin/bad_keywords/show.php')
       ->only('auth');

$router->get('/admin/badkeywords/{id}/edit', 'controllers/admin/bad_keywords/edit.php')
       ->only('auth');

$router->patch('/admin/badkeywords/{id}', 'controllers/admin/bad_keywords/update.php')
       ->only('auth');

$router->delete('/admin/badkeywords/{id}', 'controllers/admin/bad_keywords/destroy.php')
       ->only('auth');
