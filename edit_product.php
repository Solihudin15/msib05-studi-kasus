<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CyberShop - Online Smartphone Shop</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- CDN Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<?php
    include "connection.php";
    $id = $_GET["id"];
    
    $products = mysqli_query($connection, "SELECT * FROM produk WHERE id_produk = '$id' ");
    
    foreach ($products as $product){
        $nama_produk = $product['nama_produk'];
        $storage = $product['storage'];
        $ram = $product['ram'];
        $description = $product['description'];
        $price = $product['price'];
        $stock = $product['stock'];
        $kode_brand = $product['kode_brand'];
        $kode_supplier = $product['kode_supplier'];
    }
?>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="index.php" class="text-decoration-none">
                    <span class="h1 text-uppercase text-primary bg-dark px-2">CYBER</span>
                    <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">SHOP</span>
                </a>
            </div>
            <div class="col-lg-4 col-6 text-left">
                <form action="shop.php" method="post">
                    <div class="input-group">
                        <input type="text" class="form-control" name="search" placeholder="Search for products">
                        <?php if (isset($_POST['search'])){
                            $products = mysqli_query($connection, " SELECT * FROM produk WHERE nama_produk LIKE '%" . $_POST['search'] . "%' "); 
                        } ?>
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary rounded-0">
                                <button class="btn btn-sm"><i class="fa fa-search text-primary d-flex"></i></button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-4 col-6 text-right">
                <p class="m-0">Customer Service</p>
                <h5 class="m-0">0815 1021 1241</h5>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>CRUD Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <a href="product.php" class="nav-item nav-link active">Product</a>
                        <a href="brand.php" class="nav-item nav-link">Brand</a>
                        <a href="supplier.php" class="nav-item nav-link">Supplier</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.php" class="nav-item nav-link">Home</a>
                            <a href="shop.php" class="nav-item nav-link">Shop</a>
                            <a href="about.php" class="nav-item nav-link">About</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="cart.php" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Form Start -->
    <div class="container-fluid pt-5 pb-3">
        <div class="row px-xl-5">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="card card-primary border-primary">
                    <div class="card-header bg-primary">
                        <h3 class="card-title mb-0">EDIT DATA PRODUCT</h3>
                    </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form action="backend/proses_edit_product.php?id=<?php echo $id;?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="form-group">
                            <label>Nama Product</label>
                            <input type="text" class="form-control" name="nama_produk" value="<?php echo $nama_produk; ?>">
                        </div>
                        <div class="form-group">
                            <label>Storage</label>
                            <select class="form-control" name="storage">
                                <option value="64GB" <?php if($storage == "64GB") {echo "selected";} ?> >64GB</option>
                                <option value="128GB" <?php if($storage == "128GB") {echo "selected";} ?> >128GB</option>
                                <option value="256GB" <?php if($storage == "256GB") {echo "selected";} ?> >256GB</option>
                                <option value="512GB" <?php if($storage == "512GB") {echo "selected";} ?> >512GB</option>
                                <option value="1TB" <?php if($storage == "1TB") {echo "selected";} ?>>1TB</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>RAM</label>
                            <select class="form-control" name="ram">
                                <option value="4GB" <?php if($ram == "4GB") {echo "selected";} ?> >4GB</option>
                                <option value="6GB" <?php if($ram == "6GB") {echo "selected";} ?> >6GB</option>
                                <option value="8GB" <?php if($ram == "8GB") {echo "selected";} ?> >8GB</option>
                                <option value="12GB" <?php if($ram == "12GB") {echo "selected";} ?> >12GB</option>
                                <option value="16GB" <?php if($ram == "16GB") {echo "selected";} ?> >16GB</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product Description</label>
                            <textarea class="form-control" rows="5" name="description"><?php echo $description; ?></textarea>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input type="text" class="form-control" name="price" value="<?php echo $price; ?>">
                        </div>
                        <div class="form-group">
                            <label>Stock</label>
                            <input type="text" class="form-control" name="stock" value="<?php echo $stock; ?>">
                        </div>
                        <div class="form-group">
                            <label>Brand</label>
                            <select class="form-control" name="kode_brand">
                            <?php $brands = mysqli_query($connection, "SELECT * FROM brand");
                            foreach ($brands as $brand) { ?>
                                <option value="<?php echo $brand['kode_brand'] ?>" 
                                    <?php if($brand['kode_brand'] == $kode_brand) {echo "selected";} ?> >
                                    <?php echo $brand['nama_brand'] ?>
                                </option>
                            <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Supplier</label>
                            <select class="form-control" name="kode_supplier">
                            <?php $suppliers = mysqli_query($connection, "SELECT * FROM supplier");
                            foreach ($suppliers as $supplier) { ?>
                                <option value="<?php echo $supplier['kode_supplier'] ?>"
                                    <?php if($supplier['kode_supplier'] == $kode_supplier) {echo "selected";} ?> >
                                    <?php echo $supplier['nama_supplier'] ?>
                                </option>
                            <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Picture</label>
                            <input class="form-control" type="file" name="picture">
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary rounded">Submit</button>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /.card -->
    
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <h5 class="text-secondary text-uppercase mb-4">Contact us</h5>
                <p class="mb-1">Selamat datang di CyberShop</p>
                <p class="mb-1">Office Hour:</p>
                <p class="mb-4">Senin - Minggu, Jam 09:00 - 20:00 WIB</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Harapan Jaya, Bekasi, Indonesia</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>zsolihudin0215@gmail.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>0815 1021 1241</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">My Account</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Newsletter</h5>
                        <p>Duo stet tempor ipsum sit amet magna ipsum tempor est</p>
                        <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Your Email Address">
                                <div class="input-group-append">
                                    <button class="btn btn-primary">Sign Up</button>
                                </div>
                            </div>
                        </form>
                        <h6 class="text-secondary text-uppercase mt-4 mb-3">Follow Us</h6>
                        <div class="d-flex">
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-secondary">
                    &copy; <a class="text-primary" href="#">Domain</a>. All Rights Reserved. Designed
                    by
                    <a class="text-primary" href="https://htmlcodex.com">HTML Codex</a>
                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="img-fluid" src="img/payments.png" alt="">
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

    <!-- CDN JQuery Form -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script src="https://malsup.github.io/jquery.form.js"></script>

    <!-- Plugin Form JQuery -->
    <script>  
        $(document).ready(function() { 
            $('#myForm').ajaxForm(function() { 
                alert("Thank you for your comment!"); 
            }); 
        }); 
    </script> 
</body>

</html>