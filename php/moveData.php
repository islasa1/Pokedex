<?php 
    
    require_once '../app_config.php';
    
    // This will be the "moveData" 
    $MoveNo = $_GET['MoveNo'];
    
    // This query will pull the Move data
    $query = "SELECT * FROM MoveList WHERE MoveNo=" . $MoveNo;
  
  
  /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query)) {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            printf("%s<br>%s<br>%d<br>%d<br>%s", $row["Name"], $row["Description"],
                  $row["Power"], $row["Accuracy"], $row["Type"]);
        }

        /* free result set */
        mysqli_free_result($result);
    }
  
    mysqli_close($link);
?>