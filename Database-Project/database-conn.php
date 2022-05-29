<?php

class Database {
    function connect() {
        $connection = mysqli_connect('localhost', 'root', '', 'movies');
        if (!$connection) {
            echo 'Error ' . mysqli_connect_error();
        }
        else {
            return $connection;
        }
        
    }

    function read($query) {
        $conn = $this->connect();
         //make query and get result
        $result = mysqli_query($conn, $query);

        //check result 
        if (!$result) {
            return false;
        }

       else {
           $data = false;
           while ($row = mysqli_fetch_assoc($result)) {
               $data[] = $row;
               
           }
            
           return $data;
       }    
    }
}

