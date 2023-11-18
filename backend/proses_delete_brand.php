<?php
    include "../connection.php";
    
    $id = $_GET['id'];
    
    mysqli_query($connection, "DELETE FROM brand WHERE kode_brand = '$id' ");
    
    header("location:../brand.php");
?>