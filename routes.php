<?php

$router->get('/', 'controllers/index.php')->only('auth');
$router->get('/starred', 'controllers/starred.php')->only('auth');
$router->get('/spam', 'controllers/spam.php')->only('auth');
$router->get('/trash', 'controllers/trash.php')->only('auth');
$router->get('/draft', 'controllers/draft.php')->only('auth');
$router->get('/sent', 'controllers/sent.php')->only('auth');

$router->get('/register', 'controllers/registration/create.php')->only('guest');
$router->post('/register', 'controllers/registration/store.php')->only('guest');

$router->get('/login', 'controllers/session/create.php')->only('guest');
$router->post('/session', 'controllers/session/store.php')->only('guest');
$router->delete('/session', 'controllers/session/destroy.php')->only('auth');

$router->post('/changeStarred', 'controllers/mail/changeStarred.php')->only('auth');
$router->post('/sendEmail', 'controllers/mail/sendEmail.php')->only('auth');