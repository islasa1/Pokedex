<?php 
    
    require_once '../app_config.php';
    
    // This will be the "Standard View" 
    // Unfortunately, you cannot dynamically change views
    // in MySQL, and functions are only allowed to return
    // one value, so instead use a php script to change query
    $PokeNo = $_GET['PokeNo'];
    
    // This query ensures that as long as the pokemon has relevant data, it will
    // be pulled, even if there is no evo data
    $query = "SELECT Type1, Type2, Description FROM Pokemon LEFT JOIN (PokeStage) ON ( PokeStage.PokeNo = Pokemon.PokeNo) WHERE Pokemon.PokeNo =" . $PokeNo;
  
  
  /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query)) {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            printf("%s\t%s<br>%s<br>%d", $row["Type1"], $row["Type2"], $row["Description"], $row["evoNo"]);
        }

        /* free result set */
        mysqli_free_result($result);
    }
  
    mysqli_close($link);
?>