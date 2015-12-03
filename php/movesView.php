<?php 
    
    require_once '../app_config.php';
    
    // This will be the "movesView" 
    $PokeNo = $_GET['PokeNo'];
    
    // This query will pull the list of moves a pokemove may learn, could be implemented as a view, but 
    // that would require updating the schema yet again, very tedious at this stage
    $query = "SELECT PokeNo, PokeMoves.MoveNo, Name FROM PokeMoves, MoveList WHERE PokeMoves.MoveNo = MoveList.MoveNo AND PokeNo=" . $PokeNo;
  
  
  /* Select queries return a resultset */
    if ( $result = mysqli_query($link, $query)) {
        
        /* fetch the associative array */
        while($row = mysqli_fetch_assoc($result))
        {
            printf("%d\t%s<br>", $row["MoveNo"], $row["Name"]);
        }

        /* free result set */
        mysqli_free_result($result);
    }
  
    mysqli_close($link);
?>