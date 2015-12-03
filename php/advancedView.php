<?php 
    
    require_once '../app_config.php';
    
    // This will be the "Advanced View" 
    $PokeNo = $_GET['PokeNo'];
    
    // This query ensures that as long as the pokemon has relevant data, it will
    // be pulled, even if there is no evo data
    $query = "SELECT * FROM AdvancedView WHERE PokeNo=" . $PokeNo;
  
  
  /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query)) {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            printf("%s\t%s<br>%s<br>%d<br>%f<br>%f", $row["Type1"], $row["Type2"], $row["Description"], $row["evoNo"], $row["Size"], $row["Weight"]);
        }

        /* free result set */
        mysqli_free_result($result);
    }
  
    mysqli_close($link);
?>