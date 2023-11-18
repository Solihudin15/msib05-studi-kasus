<?php
    include "../connection.php";
    
    $kode_brand = $_POST['kode_brand'];
    $nama_brand = $_POST['nama_brand'];
    $asal_brand = $_POST['asal_brand'];
    $website = $_POST['website'];
    $logo_brand = $_FILES['logo_brand']['name'];
    $file_tmp = $_FILES['logo_brand']['tmp_name'];
    
    move_uploaded_file($file_tmp, '../img/' . $logo_brand);
    
    mysqli_query($connection,
    "INSERT INTO `brand` (`kode_brand`, `nama_brand`, `asal_brand`, `website`, `logo_brand`) 
    VALUES ('$kode_brand', '$nama_brand', '$asal_brand', '$website', '$logo_brand' ) ");
    
    header("location:../brand.php");
?>