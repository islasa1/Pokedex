<?php 
    define('DB_USERNAME', 'pokedexx_guest');
    define('DB_PASSWORD', 'guest');
    define('DB_ADDRESS', 'localhost');
    define('DB_DATABASE', 'pokedexx_Pokedex');

    $link = mysqli_connect(DB_ADDRESS, DB_USERNAME, DB_PASSWORD, DB_DATABASE); 
    if (!$link)
    {
        echo "Error: Unable to connect to MySQL." . PHP_EOL;
        echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
  
?>