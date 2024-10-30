<?php

require_once 'controllers/UserController.php';

$userController = new UserController();

if ($_SERVER['REQUEST_METHOD'] == 'GET' && $_SERVER['REQUEST_URI'] == '/users') {
    $userController->getUsersJson();
} else {
    $userController->displayUsersPage();
}

?>
