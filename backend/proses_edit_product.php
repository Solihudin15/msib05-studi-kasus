<?php
    include "../connection.php";

    $id = $_GET['id'];
    $nama_produk = $_POST['nama_produk'];
    $storage = $_POST['storage'];
    $ram = $_POST['ram'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $stock = $_POST['stock'];
    $kode_brand = $_POST['kode_brand'];
    $kode_supplier = $_POST['kode_supplier'];
    $picture = $_FILES['picture']['name'];
    $file_tmp = $_FILES['picture']['tmp_name'];
    
    move_uploaded_file($file_tmp, '../img/' . $picture);
    
    mysqli_query($connection, "UPDATE produk SET nama_produk = '$nama_produk', storage = '$storage', ram = '$ram', description = '$description', 
    price = '$price', stock = '$stock', kode_brand = '$kode_brand', kode_supplier = '$kode_supplier', picture = '$picture' WHERE id_produk = '$id' ");
    
    header("location:../product.php");
    
?>