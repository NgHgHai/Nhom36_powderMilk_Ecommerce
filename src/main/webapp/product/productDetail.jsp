<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>HaChaMilk - Website mua sữa bột hàng đầu Việt Nam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap"
          rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel='stylesheet' href='https://sachinchoolur.github.io/lightslider/dist/css/lightslider.css'>

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/productDetail.css">
</head>
<body>
<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status"></div>
</div>
<!-- Spinner End -->

<%--header start--%>
<%@ include file="/viewDefault/header.jsp" %>
<%--header end--%>

<!-- product detail start-->
<div class="container-fluid mt-2 mb-3">
    <div class="row no-gutters">
        <div class="col-md-5 pr-2">
            <div class="card">
                <img src="${product.getImgDisplay()}" style=" width: 350px;margin: auto;">
            </div>
            <div class="card mt-2">
                <div class="slogan_footer row">
                    <div class="col-lg-4">
                        <div class="item_slogan text-center">
                            <div>
                                <img src="../img/graphics/icon_footer_1.svg" class="loading" data-was-processed="true">
                            </div>
                            <div class="txt_slogan"><br>Cash On Delivery</div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="item_slogan text-center">
                            <div><img src="../img/graphics/icon_footer_3.svg" class="loading" data-was-processed="true">
                            </div>
                            <div class="txt_slogan"><br>Free Refunds <br> and exchanges 14 days</div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="item_slogan text-center">
                            <div><img src="../img/graphics/icon_footer_4.svg" class="loading" data-was-processed="true">
                            </div>
                            <div class="txt_slogan"><br>Global<br> Reputable brand</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="card">
                <div class="d-flex flex-row align-items-center">
                    <div class="p-ratings"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                            class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                    <span class="ml-1">5.0</span></div>
                <div class="about"><span class="font-weight-bold">${product.getName()} </span>
                    <div class="row">
                        <h4 class="font-weight-bold col-3">${product.getPrice()}</h4>
                        <div class="qty-container col-4">
                            <button class="qty-btn-minus btn-light" type="button"><i class="fa fa-minus"></i></button>
                            <input type="text" name="qty" value="0" class="input-qty"/>
                            <button class="qty-btn-plus btn-light" type="button"><i class="fa fa-plus"></i></button>
                        </div>
                    </div>

                </div>
                <div class="buttons">
                    <form action="" method="post" accept-charset="utf-8">
                        <ul class="spe_ul"></ul>
                        <div class="_p-qty-and-cart">
                            <div class="_p-add-cart">
                                <button class="btn-theme btn buy-btn" tabindex="0">
                                    <i class="fa fa-shopping-cart"></i> Buy Now
                                </button>
                                <button class="btn-theme btn btn-success" tabindex="0">
                                    <i class="fa fa-shopping-cart"></i> Add to Cart
                                </button>
                                <input type="hidden" name="pid" value="18"/>
                                <input type="hidden" name="price" value="850"/>
                                <input type="hidden" name="url" value=""/>
                            </div>
                        </div>
                    </form>
                </div>
                <hr>
                <div class="product-description">
                    <div class="d-flex flex-row align-items-center"><i class="fa fa-calendar-check-o"></i> <span
                            class="ml-1">Delivery from sweden, 3-7 days</span></div>
                    <div class="mt-2"><span class="font-weight-bold">Description</span>
                        <p>${product.getDesc()}</p>
                        <div class="bullets">
                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Best in Quality</span>
                            </div>
                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Anti-creak joinery</span>
                            </div>
                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Sturdy laminate surfaces</span>
                            </div>
                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Relocation friendly design</span>
                            </div>
                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">High gloss, high style</span>
                            </div>
                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Easy-access hydraulic storage</span>
                            </div>
                        </div>
                    </div>
                    <div class="mt-2"><span class="font-weight-bold">Store</span></div>
                    <div class="d-flex flex-row ">
                        <div class="d-flex flex-column ml-1 comment-profile">
                            <div class="comment-ratings"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                    class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                            <span class="username">Rare Boutique</span> <small class="followers">25K Followers</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mt-2"><span>Similar items:</span>

                <div class="similar-products mt-2 d-flex flex-row">
                    <c:forEach var="pro" items="${listRelative}">
                        <div class="card border p-1" style="width: 9rem;margin-right: 3px;"><img
                                src="${pro.getImgDisplay()}" class="card-img-top" alt="...">
                            <div class="card-body"><h6 class="card-title">${p.getPrice()}</h6></div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>
</div>
<!--product detail end-->
</div>
<%@ include file="/viewDefault/footer.jsp" %>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
<script src='https://sachinchoolur.github.io/lightslider/dist/js/lightslider.js'></script>
<script> $('#lightSlider').lightSlider({gallery: true, item: 1, loop: true, slideMargin: 0, thumbItem: 9});
</script>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/wow/wow.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="../js/main.js"></script>
</body>
</html>