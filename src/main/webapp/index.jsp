<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>官网主页</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body>
<div class="top_bj">
    <div class="wrap_1200" name="mycart" >
        <a href="/cart.html"><div class="top_shop"><b name="mycart_count" style="margin-top: -2px;float: right;margin-right: 12px;">0</b></div></a>
        <ul class="top_lanmu">
            <li><a href="/login.html?callback=">登录</a></li>
            <li><a href="/reg_act.html?callback=">注册</a></li>
            <li><a href='/ucenter.html'>订单</a></li>
        </ul>
        <div class="clear_s"></div>
    </div>
</div>
<%--图片轮播效果--%>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active" style="background:#223240;">
            <img src="${APP_PATH }/img/yan1.jpg" alt="First slide" height="200" >
        </div>
        <div class="item" style="background:#F5E4DC;">
            <img src="${APP_PATH }/img/yan2.jpeg" alt="Second slide">
        </div>
        <div class="item" style="background:#DE2A2D;">
            <img src="${APP_PATH }/img/yan3.jpg" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<%--图片动画效果--%>
<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="${APP_PATH }/img/yan2.jpeg" alt="">
        <div class="overlay">

        </div>
    </div>
</div>
<%--图片动画2--%>
<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="${APP_PATH }/img/yan3.jpg" alt="">
        <div class="overlay">

        </div>
    </div>
</div>

<script type="text/javascript">
        //自动播放
        $("#myCarousel").carousel({
            interval :2000,
        });
</script>
</body>
</html>