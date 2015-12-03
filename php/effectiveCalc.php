<?php 
    
    require_once '../app_config.php';
    
    // This will be the "effectiveCal" 
    $AtkType = $_GET['atkType'];
    $Type1 = $_GET['type1'];
    $Type2 = $_GET['type2'];
    
    // This query ensures that as long as the pokemon has relevant data, it will
    // be pulled, even if there is no evo data
    
    // those double quotes are ugly..
    $query = "SELECT damageCalc('$AtkType' , $Type1 , $Type2 )";

  
  /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query)) {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_row($result))
        {
            printf("%2.2f", $row[0]);
        }

        /* free result set */
        mysqli_free_result($result);
    }
  
    mysqli_close($link);
?>