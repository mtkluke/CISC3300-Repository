<?php


require 'models/User.php';
require 'controllers/UserController.php';

use controllers\UserController;

// Instantiate the UserController and call the index method
$userController = new UserController();
$userController->index();
