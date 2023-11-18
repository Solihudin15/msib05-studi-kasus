<?php
    include "../connection.php";
    
    $kode_supplier = $_POST['kode_supplier'];
    $nama_supplier = $_POST['nama_supplier'];
    $telp_supplier = $_POST['telp_supplier'];
    $email_supplier = $_POST['email_supplier'];
    $alamat_supplier = $_POST['alamat_supplier'];
    $logo_supplier = $_FILES['logo_supplier']['name'];
    $file_tmp = $_FILES['logo_supplier']['tmp_name'];
    
    move_uploaded_file($file_tmp, '../img/' . $logo_supplier);
    
    mysqli_query($connection,
    "INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `telp_supplier`, `email_supplier`, `alamat_supplier`, `logo_supplier`) 
    VALUES ('$kode_supplier', '$nama_supplier', '$telp_supplier', '$email_supplier', '$alamat_supplier', '$logo_supplier') ");
    
    header("location:../supplier.php");
?>