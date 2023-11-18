<?php
    include "../connection.php";
    
    $id = $_GET['id'];
    $nama_brand = $_POST['nama_brand'];
    $asal_brand = $_POST['asal_brand'];
    $website = $_POST['website'];
    $logo_brand = $_FILES['logo_brand']['name'];
    $file_tmp = $_FILES['logo_brand']['tmp_name'];
    
    move_uploaded_file($file_tmp, '../img/' . $logo_brand);
    
    mysqli_query($connection, "UPDATE brand SET nama_brand = '$nama_brand', asal_brand = '$asal_brand',
    website = '$website', logo_brand = '$logo_brand' WHERE kode_brand = '$id' ");
    
    header("location:../brand.php");
?>