<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Product Detail</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="./style/product_detail.css"> 
    </head>
    <body>
        <%@include file="common/header.jsp" %>

        <div class="container">
            <div class="col-lg-8  p-3 main-section bg-white">

                <div class="row border m-0">
                    <div class="col-lg-4 left-side-product-box pb-3 product-banner">
                        <img src="https://bizweb.dktcdn.net/100/347/446/files/bo-hoa-lan-cat-tuong-gia-hoa-len-cat-tuong.jpg?v=1564825969218" class="border p-3">
                    </div>
                    <div class="col-lg-8">
                        <div class="right-side-pro-detail  p-3 m-0">
                            <div class="row">
                                <div class="col-lg-12 product-name">
                                    <p class="m-0 p-0">Hoa Cát Tường</p>
                                </div>
                                <div class="col-lg-12 product-price">
                                    <p class="m-0 p-0 price-pro">200000 VNĐ</p>

                                </div>
                                <div class="col-lg-12 pt-2 product-type">
                                    <h5>Thể loại</h5>
                                    <span>Hoa ngày Tết
                                    </span>

                                </div>
                                <div class="col-lg-12 pt-2 product-desc">
                                    <h5>Chi tiết sản phẩm</h5>
                                    <span>Hoa Cát Tường biểu tượng đẹp đẽ của một ý chí sống kiên cường, nhiệt huyết 
                                        và mang ý nghĩa tượng trưng cho một lời cầu chúc cho cuộc sống hạnh phúc và viên mãn. 
                                    </span>

                                </div>

                                <div class="col-lg-12 product-amount">
                                    <h5>Số lượng :</h5>
                                    <input type="number" class="form-control text-center w-100 amount" value="1">
                                </div>
                                <div class="col-lg-12 mt-3">
                                    <div class="row">
                                        <div class="col-lg-6 pb-2 ">
                                            <a href="#" class="btn btn-danger w-100">Add To Cart</a>
                                        </div>
                                        <div class="col-lg-6">
                                            <a href="#" class="btn btn-success w-100 shop-now">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container position-relative text-center more">
                    <h1>More Product</h1>
                    <div class="listp">
                        <c:forEach items="${listP}" var="p">
                            <div class="col-sm-3">
                                <div class="d-flex justify-content-between align-items-center flex-column flex-lg-row my-5" id="new"> 
                                    <div class="card m-2 card-pro">

                                        <div class="product">
                                            <a href="#" class="product-img">
                                                <img src="${p.banners}" alt="Product" class="card-img-top p-img"
                                                     height="200" >
                                            </a>
                                            <a href="#" class="buy">
                                                Add To Cart
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <p class="card-text fw-bold namep">
                                                ${p.name}
                                            </p>
                                            <small class="text-secondary pricep">
                                                ${p.price} VNĐ
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

            </div>

        </div>
        <%--<%@include file="common/footer.jsp" %>--%>

    </body>
</html>
