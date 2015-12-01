<?php
  
  require_once '../app_config.php';
  
  $query = "SELECT * FROM PokeList";
  
  
  /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query)) {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            printf("%d\t%s<br>", $row["PokeNo"], $row["Name"]);
        }

        /* free result set */
        mysqli_free_result($result);
    }
  
    mysqli_close($link);
?>