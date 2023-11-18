<?php
    include "../connection.php";
    
    $id = $_GET['id'];
    
    mysqli_query($connection, "DELETE FROM supplier WHERE kode_supplier = '$id' ");
    
    header("location:../supplier.php");
?>