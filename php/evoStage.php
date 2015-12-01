<?php
  
  require_once '../app_config.php';
  
  $evoNo = $_GET['evoNo'];
  
  $query = "SELECT * FROM PokeStage WHERE evoNo = " . $evoNo;
  
   
   /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query))
    {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            printf("%d\t%d<br>", $row["stageNo"], $row["PokeNo"]);
        }

        /* free result set */
        mysqli_free_result($result);
    }

  mysqli_close($link);
?>