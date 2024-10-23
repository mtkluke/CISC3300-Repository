<?php

namespace models;

class User
{
    public function getAllUsers()
    {
        // Return an array of associative arrays
        return [
            ['id' => 1, 'name' => 'Funny Guy'],
            ['id' => 2, 'name' => 'Not Funny Guy'],
            ['id' => 3, 'name' => 'Bobo Baba'],
        ];
    }
}
