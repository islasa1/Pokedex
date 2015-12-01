<?php
  
// This PHP script will echo the appropriate sprite pointed to by 
// the database, based on the argument PokeNo

  require_once '../app_config.php';
  
  $PokeNo = $_GET['PokeNo'];
  
  $query = "SELECT * FROM Sprites WHERE PokeNo = " . $PokeNo;
  
   
   /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query))
    {
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            
            $imagedir = "../" . $row["Sprite"];
            echo ("<img src= " . $imagedir . " border=0 />");
            
        }

        /* free result set */
        mysqli_free_result($result);
    }

  mysqli_close($link);
?>