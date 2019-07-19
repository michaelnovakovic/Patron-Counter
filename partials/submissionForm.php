<?php
if(isset($_POST["submit"])){
    
    $hostname='localhost';
    $username='username';
    $password='password';

    try {
    $dbh = new PDO("mysql:host=$hostname;dbname=dbname",$username,$password);

    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // <== add this line
    $sql = "INSERT INTO patroncount (patronCode, timeofEntry)
    VALUES ('".$_POST["patronCode"]."', NOW() )";
    if ($dbh->query($sql)) {
    // echo "<script type= 'text/javascript'>alert('New Record Inserted Successfully');</script>";
    }
    else{
    // echo "<script type= 'text/javascript'>alert('Data not successfully Inserted.');</script>";
    }

    $dbh = null;
    }
    catch(PDOException $e)
    {
    echo $e->getMessage();
    }
    
    // Relocates to the index(home) page
    header("location: index.php");

}
?>

<!--  -->
<div class="container">
  <div class="row">
    <div class="col-sm"></div>
    <div class="col-sm sub-form text-center">
      <form action="" class="form-inlin justify-content-center" method="post">
                <div class="form-group">
                    <label class="sr-only">Library Card</label>
                    <input type="text" class="form-control" name="patronCode" id="patronCode" required="required"  autofocus placeholder="Library Card"/>
                </div>
                <button type="submit" value="Submit" name="submit" class="btn btn-success">Submit</button>
            </form>
    </div>
    <div class="col-sm"></div> <!-- added for extra space -->
  </div>
</div>

