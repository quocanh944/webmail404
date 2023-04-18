<?php

$router->get('/', 'controllers/index.php')->only('auth');
$router->get('/starred', 'controllers/starred.php')->only('auth');
$router->get('/spam', 'controllers/spam.php')->only('auth');
$router->get('/trash', 'controllers/trash.php')->only('auth');
$router->get('/draft', 'controllers/draft.php')->only('auth');
$router->get('/sent', 'controllers/sent.php')->only('auth');
$router->get('/mail', 'controllers/mail/viewMail.php')->only('auth');
$router->get('/search', 'controllers/mail/search.php')->only('auth');

$router->get('/register', 'controllers/registration/create.php')->only('guest');
$router->post('/register', 'controllers/registration/store.php')->only('guest');

$router->get('/login', 'controllers/session/create.php')->only('guest');
$router->post('/session', 'controllers/session/store.php')->only('guest');
$router->delete('/session', 'controllers/session/destroy.php')->only('auth');

$router->post('/changeStarred', 'controllers/mail/changeStarred.php')->only('auth');
$router->post('/sendEmail', 'controllers/mail/sendEmail.php')->only('auth');
$router->post('/saveDraft', 'controllers/mail/saveDraft.php')->only('auth');



// Admin
$router->get('/admin', 'controllers/admin/index.php')->only('admin');
$router->get('/user-list', 'controllers/admin/users/UserListController.php')->only('admin');
$router->get('/user-edit', 'controllers/admin/users/UserDetailController.php')->only('admin');
$router->get('/bad-keyword', 'controllers/admin/users/BadKeyWordController.php')->only('admin');

$router->post('/createUser', 'controllers/admin/users/AddUserController.php')->only('admin');
$router->post('/deleteUser', 'controllers/admin/users/DeleteUserController.php')->only('admin');
$router->post('/updateUser', 'controllers/admin/users/UpdateUserController.php')->only('admin');
$router->post('/checkPassword', 'controllers/admin/users/CheckPassWordController.php')->only('admin');
$router->post('/updateSetting', 'controllers/admin/users/UpdateSettingController.php')->only('admin');
$router->post('/bad-keyword', 'controllers/admin/users/BadKeyWordController.php')->only('admin');
$router->post('/lock-user', 'controllers/admin/users/CheckLockController.php')->only('admin');
$router->post('/unlock-user', 'controllers/admin/users/CheckLockController.php')->only('admin');

$router->delete('/bad-keyword', 'controllers/admin/users/BadKeyWordController.php')->only('admin');
