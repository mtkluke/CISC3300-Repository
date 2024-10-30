<?php

require_once 'models/UserModel.php';

class UserController {

    // Serve HTML page
    public function displayUsersPage() {
        include 'views/users.html';
    }

    // Serve JSON data
    public function getUsersJson() {
        $userModel = new UserModel();
        $users = $userModel->getAllUsers();
        header('Content-Type: application/json');
        echo json_encode($users);
    }
}

?>
