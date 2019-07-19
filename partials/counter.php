 <?php
    
   // connects to the database 
   $connection_mysql = mysqli_connect("localhost","username","password","dbname");
   
   // if the connection fails to connect to the database
   if (mysqli_connect_errno($connection_mysql)){
      // shows message when accessing file 
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
   $sql = "SELECT FORMAT(patronId, 2) FROM patroncount";
   
   if ($result = mysqli_query($connection_mysql,$sql)){
      $rowcount = mysqli_num_rows($result);
		 
      mysqli_free_result($result);
   }
   mysqli_close($connection_mysql);
?>

<!--  --> 
<div class="center-text">
    <?php printf("%02d \n",$rowcount); ?>
</div> 