<?php
    include "../connection.php";

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
    
    mysqli_query($connection,
    "INSERT INTO `produk` (`nama_produk`, `storage`, `ram`, `description`, `price`, `stock`, `kode_brand`, `kode_supplier`, `picture`) 
    VALUES ('$nama_produk', '$storage', '$ram', '$description', '$price', '$stock', '$kode_brand', '$kode_supplier', '$picture') ");
    
    header("location:../product.php");
?>