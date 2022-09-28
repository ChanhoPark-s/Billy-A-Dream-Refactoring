<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="event.model.EventBean"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    


<!doctype html>
<html lang="ko">
    <head>
        <!--Required Meta Tags-->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="description">
        <!-- Title Of Site -->
        <title>Blog Article Page - Optimal Multipurpose eCommerce Bootstrap 5 Html Template</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="resources/assets/images/favicon.png" />
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="resources/assets/css/plugins.css" />
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="resources/assets/css/style.css" />
        <link rel="stylesheet" href="resources/assets/css/responsive.css" />
    </head>

    <body class="blog-page blog-single-page">
        <!-- Page Loader -->
        <div id="pre-loader"><img src="resources/assets/images/loader.gif" alt="Loading..." /></div>
        <!-- End Page Loader -->

        <!--Page Wrapper-->
        <div class="page-wrapper">
            <!--Header-->
            <div id="header" class="header">
                <div class="header-main">
                    <header class="header-wrap container d-flex align-items-center">
                        <div class="row g-0 align-items-center w-100">
                            <!--Social Icons-->
                            <div class="col-4 col-sm-4 col-md-4 col-lg-5 d-none d-lg-block">
                                <ul class="social-icons list-inline">
                                    <li class="list-inline-item"><a href="#"><i class="an an-facebook" aria-hidden="true"></i><span class="tooltip-label">Facebook</span></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="an an-twitter" aria-hidden="true"></i><span class="tooltip-label">Twitter</span></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="an an-pinterest-p" aria-hidden="true"></i><span class="tooltip-label">Pinterest</span></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="an an-instagram" aria-hidden="true"></i><span class="tooltip-label">Instagram</span></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="an an-tiktok" aria-hidden="true"></i><span class="tooltip-label">TikTok</span></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="an an-whatsapp" aria-hidden="true"></i><span class="tooltip-label">Whatsapp</span></a></li>
                                </ul>
                            </div>
                            <!--End Social Icons-->
                            <!--Logo / Menu Toggle-->
                            <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-flex">
                                <!--Mobile Toggle-->
                                <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open me-3 d-lg-none"><i class="icon an an-times-l"></i><i class="icon an an-bars-l"></i></button>
                                <!--End Mobile Toggle-->
                                <!--Logo-->
                                <div class="logo mx-lg-auto"><a href="index.html"><img class="logo-img" src="resources/assets/images/logo.svg" alt="Optimal Multipurpose eCommerce Bootstrap 5 Html Template" title="Optimal Multipurpose eCommerce Bootstrap 5 Html Template" /><span class="logo-txt d-none">Optimal</span></a></div>
                                <!--End Logo-->
                            </div>
                            <!--End Logo / Menu Toggle-->
                            <!--Right Action-->
                            <div class="col-6 col-sm-6 col-md-6 col-lg-5 icons-col text-right d-flex justify-content-end">
                                <!--Search-->
                                <div class="site-search iconset"><i class="icon an an-search-l"></i><span class="tooltip-label">Search</span></div>
                                <!--End Search-->
                                <!--Wishlist-->
                                <div class="wishlist-link iconset">
                                    <a href="my-wishlist.html"><i class="icon an an-heart-l"></i><span class="wishlist-count counter d-flex-center justify-content-center position-absolute translate-middle rounded-circle">0</span><span class="tooltip-label">Wishlist</span></a>
                                </div>
                                <!--End Wishlist-->
                                <!--Setting Dropdown-->
                                <div class="user-link iconset"><i class="icon an an-user-expand"></i><span class="tooltip-label">Account</span></div>
                                <div id="userLinks">
                                    <ul class="user-links">
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Sign Up</a></li>
                                        <li><a href="my-wishlist.html">Wishlist</a></li>
                                        <li><a href="compare-style1.html">Compare</a></li>
                                    </ul>
                                </div>
                                <!--End Setting Dropdown-->
                                <!--Minicart Drawer-->
                                <div class="header-cart iconset">
                                    <a href="cart-style1.html" class="site-header__cart btn-minicart" data-bs-toggle="modal" data-bs-target="#minicart-drawer">
                                        <i class="icon an an-sq-bag"></i><span class="site-cart-count counter d-flex-center justify-content-center position-absolute translate-middle rounded-circle">2</span><span class="tooltip-label">Cart</span>
                                    </a>
                                </div>
                                <!--End Minicart Drawer-->
                                <!--Setting Dropdown-->
                                <div class="setting-link iconset pe-0"><i class="icon an an-right-bar-s"></i><span class="tooltip-label">Settings</span></div>
                                <div id="settingsBox">
                                    <div class="currency-picker">
                                        <span class="ttl">Select Currency</span>
                                        <ul id="currencies" class="cnrLangList">
                                            <li class="selected"><a href="#;" class="active">INR</a></li><li><a href="#;">GBP</a></li><li><a href="#;">CAD</a></li><li><a href="#;">USD</a></li><li><a href="#;">AUD</a></li><li><a href="#;">EUR</a></li><li><a href="#;">JPY</a></li>
                                        </ul>
                                    </div>
                                    <div class="language-picker">
                                        <span class="ttl">SELECT LANGUAGE</span>
                                        <ul id="language" class="cnrLangList">
                                            <li><a href="#" class="active">English</a></li><li><a href="#">French</a></li><li><a href="#">German</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!--End Setting Dropdown-->
                            </div>
                            <!--End Right Action-->
                        </div>
                    </header>
                    <!--Main Navigation Desktop-->
                    <div class="menu-outer">
                        <nav class="container">
                            <div class="row">
                                <div class="col-1 col-sm-12 col-md-12 col-lg-12 align-self-center d-menu-col">
                                    <!--Desktop Menu-->
                                    <nav class="grid__item" id="AccessibleNav">
                                        <ul id="siteNav" class="site-nav medium center hidearrow">
                                            <li class="lvl1 parent megamenu"><a href="#;">Home <i class="an an-angle-down-l"></i></a>
                                                <div class="megamenu style1">
                                                    <div class="row">
                                                        <div class="col-md-8 col-lg-8">
                                                            <div class="row">
                                                                <div class="lvl-1 col-md-5 col-lg-4">
                                                                    <a href="#" class="site-nav lvl-1 menu-title">Home Styles</a>
                                                                    <ul class="subLinks">
                                                                        <li class="lvl-2"><a href="index.html" class="site-nav lvl-2">Home 01 - Default</a></li>
                                                                        <li class="lvl-2"><a href="index-demo2.html" class="site-nav lvl-2">Home 02 - Minimal</a></li>
                                                                        <li class="lvl-2"><a href="index-demo3.html" class="site-nav lvl-2">Home 03 - Colorful</a></li>
                                                                        <li class="lvl-2"><a href="index-demo4.html" class="site-nav lvl-2">Home 04 - Modern</a></li>
                                                                        <li class="lvl-2"><a href="index-demo5.html" class="site-nav lvl-2">Home 05 - Kids Clothing</a></li>
                                                                        <li class="lvl-2"><a href="index-demo6.html" class="site-nav lvl-2">Home 06 - Single Product</a></li>
                                                                        <li class="lvl-2"><a href="index-demo7.html" class="site-nav lvl-2">Home 07 - Glamour</a></li>
                                                                        <li class="lvl-2"><a href="index-demo8.html" class="site-nav lvl-2">Home 08 - Simple</a></li>
                                                                        <li class="lvl-2"><a href="index-demo9.html" class="site-nav lvl-2">Home 09 - Cool <span class="lbl nm_label1">Hot</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo10.html" class="site-nav lvl-2">Home 10 - Cosmetic</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="lvl-1 col-md-5 col-lg-4">
                                                                    <a href="#" class="site-nav lvl-1 menu-title">Home Styles</a>
                                                                    <ul class="subLinks">
                                                                        <li class="lvl-2"><a href="index-demo11.html" class="site-nav lvl-2">Home 11 - Pets <span class="lbl nm_label3">Popular</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo12.html" class="site-nav lvl-2">Home 12 - Tools & Parts</a></li>
                                                                        <li class="lvl-2"><a href="index-demo13.html" class="site-nav lvl-2">Home 13 - Watches <span class="lbl nm_label1">Hot</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo14.html" class="site-nav lvl-2">Home 14 - Food</a></li>
                                                                        <li class="lvl-2"><a href="index-demo15.html" class="site-nav lvl-2">Home 15 - Christmas</a></li>
                                                                        <li class="lvl-2"><a href="index-demo16.html" class="site-nav lvl-2">Home 16 - Phone Case</a></li>
                                                                        <li class="lvl-2"><a href="index-demo17.html" class="site-nav lvl-2">Home 17 - Jewelry</a></li>
                                                                        <li class="lvl-2"><a href="index-demo18.html" class="site-nav lvl-2">Home 18 - Bag <span class="lbl nm_label3">Popular</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo19.html" class="site-nav lvl-2">Home 19 - Swimwear</a></li>
                                                                        <li class="lvl-2"><a href="index-demo20.html" class="site-nav lvl-2">Home 20 - Furniture <span class="lbl nm_label2">New</span></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="lvl-1 col-md-5 col-lg-4">
                                                                    <a href="#" class="site-nav lvl-1 menu-title">Home Styles</a>
                                                                    <ul class="subLinks">
                                                                        <li class="lvl-2"><a href="index-demo21.html" class="site-nav lvl-2">Home 21 - Party Supplies <span class="lbl nm_label2">New</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo22.html" class="site-nav lvl-2">Home 22 - Digital <span class="lbl nm_label2">New</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo23.html" class="site-nav lvl-2">Home 23 - Vogue <span class="lbl nm_label2">New</span></a></li>
                                                                        <li class="lvl-2"><a href="index-demo24.html" class="site-nav lvl-2">Home 24 - Glamour <span class="lbl nm_label2">New</span></a></li>
                                                                    </ul>

                                                                    <div class="row mm-Banners mt-3">
                                                                        <div class="col-md-12 col-lg-12 imageCol text-center">
                                                                            <div class="menubox position-relative">
                                                                                <a href="index-demo5.html" class="mb-0"><img class="blur-up lazyload" src="resources/assets/images/megamenu/megamenu-banner7.png" data-src="resources/assets/images/megamenu/megamenu-banner7.png" alt="image"/></a>
                                                                                <p class="position-absolute bottom-0 start-50 translate-middle-x"><a href="index-demo5.html" class="title text-uppercase mb-3">Kids Store</a></p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-lg-4">
                                                            <div class="row mm-Banners">
                                                                <div class="col-md-12 col-lg-12 imageCol text-center">
                                                                    <div class="menubox position-relative">
                                                                        <a href="index-demo6.html" class="mb-0"><img class="blur-up lazyload" src="resources/assets/images/megamenu/megamenu-banner8.png" data-src="resources/assets/images/megamenu/megamenu-banner8.png" alt="image"/></a>
                                                                        <p class="position-absolute bottom-0 start-50 translate-middle-x"><a href="index-demo6.html" class="title text-uppercase">Single Product Layout</a></p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="lvl1 parent megamenu"><a href="#;">Shop <i class="an an-angle-down-l"></i></a>
                                                <div class="megamenu style4">
                                                    <div class="row">
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Category Page</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="category-2columns.html" class="site-nav lvl-2">2 Columns with style1</a></li>
                                                                <li class="lvl-2"><a href="category-3columns.html" class="site-nav lvl-2">3 Columns with style2</a></li>
                                                                <li class="lvl-2"><a href="category-4columns.html" class="site-nav lvl-2">4 Columns with style3</a></li>
                                                                <li class="lvl-2"><a href="category-5columns.html" class="site-nav lvl-2">5 Columns with style4</a></li>
                                                                <li class="lvl-2"><a href="category-6columns.html" class="site-nav lvl-2">6 Columns with Fullwidth</a></li>
                                                                <li class="lvl-2"><a href="category-7columns.html" class="site-nav lvl-2">7 Columns</a></li>
                                                                <li class="lvl-2"><a href="empty-category.html" class="site-nav lvl-2">Category Empty</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Shop Page</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Left Sidebar</a></li>
                                                                <li class="lvl-2"><a href="shop-right-sidebar.html" class="site-nav lvl-2">Right Sidebar</a></li>
                                                                <li class="lvl-2"><a href="shop-top-filter.html" class="site-nav lvl-2">Top Filter</a></li>
                                                                <li class="lvl-2"><a href="shop-fullwidth.html" class="site-nav lvl-2">Fullwidth</a></li>
                                                                <li class="lvl-2"><a href="shop-no-sidebar.html" class="site-nav lvl-2">Without Filter</a></li>
                                                                <li class="lvl-2"><a href="shop-listview-sidebar.html" class="site-nav lvl-2">List View</a></li>
                                                                <li class="lvl-2"><a href="shop-listview-drawer.html" class="site-nav lvl-2">List View Drawer</a></li>
                                                                <li class="lvl-2"><a href="shop-category-slideshow.html" class="site-nav lvl-2">Category Slideshow</a></li>
                                                                <li class="lvl-2"><a href="shop-heading-with-banner.html" class="site-nav lvl-2">Headings With Banner</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Shop Page</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="shop-sub-collections.html" class="site-nav lvl-2">Sub Collection List <span class="lbl nm_label5">Hot</span></a></li>
                                                                <li class="lvl-2"><a href="shop-masonry-grid.html" class="site-nav lvl-2">Shop Masonry Grid</a></li>
                                                                <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Shop Countdown</a></li>
                                                                <li class="lvl-2"><a href="shop-hover-info.html" class="site-nav lvl-2">Shop Hover Info</a></li>
                                                                <li class="lvl-2"><a href="shop-right-sidebar.html" class="site-nav lvl-2">Infinite Scrolling</a></li>
                                                                <li class="lvl-2"><a href="shop-fullwidth.html" class="site-nav lvl-2">Classic Pagination</a></li>
                                                                <li class="lvl-2"><a href="shop-swatches-style.html" class="site-nav lvl-2">Swatches Style</a></li>
                                                                <li class="lvl-2"><a href="shop-grid-style.html" class="site-nav lvl-2">Grid Style</a></li>
                                                                <li class="lvl-2"><a href="shop-search-results.html" class="site-nav lvl-2">Search Results</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Shop Other Page</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="my-wishlist.html" class="site-nav lvl-2">My Wishlist Style1</a></li>
                                                                <li class="lvl-2"><a href="my-wishlist-style2.html" class="site-nav lvl-2">My Wishlist Style2</a></li>
                                                                <li class="lvl-2"><a href="compare-style1.html" class="site-nav lvl-2">Compare Page Style1</a></li>
                                                                <li class="lvl-2"><a href="compare-style2.html" class="site-nav lvl-2">Compare Page Style2</a></li>
                                                                <li class="lvl-2"><a href="cart-style1.html" class="site-nav lvl-2">Cart Page Style1</a></li>
                                                                <li class="lvl-2"><a href="cart-style2.html" class="site-nav lvl-2">Cart Page Style2</a></li>
                                                                <li class="lvl-2"><a href="checkout-style1.html" class="site-nav lvl-2">Checkout Page Style1</a></li>
                                                                <li class="lvl-2"><a href="checkout-style2.html" class="site-nav lvl-2">Checkout Page Style2</a></li>
                                                                <li class="lvl-2"><a href="checkout-success.html" class="site-nav lvl-2">Checkout Success</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row clear mt-4">
                                                        <div class="col-md-3 col-lg-3">
                                                            <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                        </div>
                                                        <div class="col-md-3 col-lg-3">
                                                            <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                        </div>
                                                        <div class="col-md-3 col-lg-3">
                                                            <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                        </div>
                                                        <div class="col-md-3 col-lg-3">
                                                            <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="lvl1 parent megamenu"><a href="#;">Product <i class="an an-angle-down-l"></i></a>
                                                <div class="megamenu style2">
                                                    <div class="row">
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Product Types</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="product-standard.html" class="site-nav lvl-2">Simple Product</a></li>
                                                                <li class="lvl-2"><a href="product-variable.html" class="site-nav lvl-2">Variable Product</a></li>
                                                                <li class="lvl-2"><a href="product-grouped.html" class="site-nav lvl-2">Grouped Product</a></li>
                                                                <li class="lvl-2"><a href="product-external-affiliate.html" class="site-nav lvl-2">External / Affiliate Product</a></li>
                                                                <li class="lvl-2"><a href="product-outofstock.html" class="site-nav lvl-2">Out Of Stock Product</a></li>
                                                                <li class="lvl-2"><a href="product-layout1.html" class="site-nav lvl-2">New Product</a></li>
                                                                <li class="lvl-2"><a href="product-layout2.html" class="site-nav lvl-2">Sale Product</a></li>
                                                                <li class="lvl-2"><a href="product-layout1.html" class="site-nav lvl-2">Variable Image</a></li>
                                                                <li class="lvl-2"><a href="product-accordian.html" class="site-nav lvl-2">Variable Select</a></li>
                                                                <li class="lvl-2"><a href="prodcut-360-degree-view.html" class="site-nav lvl-2">360 Degree view</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Product Page</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="product-layout1.html" class="site-nav lvl-2">Product Layout1</a></li>
                                                                <li class="lvl-2"><a href="product-layout2.html" class="site-nav lvl-2">Product Layout2</a></li>
                                                                <li class="lvl-2"><a href="product-layout3.html" class="site-nav lvl-2">Product Layout3</a></li>
                                                                <li class="lvl-2"><a href="product-layout4.html" class="site-nav lvl-2">Product Layout4</a></li>
                                                                <li class="lvl-2"><a href="product-layout5.html" class="site-nav lvl-2">Product Layout5</a></li>
                                                                <li class="lvl-2"><a href="product-layout6.html" class="site-nav lvl-2">Product Layout6</a></li>
                                                                <li class="lvl-2"><a href="product-layout7.html" class="site-nav lvl-2">Product Layout7</a></li>
                                                                <li class="lvl-2"><a href="product-accordian.html" class="site-nav lvl-2">Product Accordian</a></li>
                                                                <li class="lvl-2"><a href="product-tabs-left.html" class="site-nav lvl-2">Product Tabs Left</a></li>
                                                                <li class="lvl-2"><a href="product-tabs-center.html" class="site-nav lvl-2">Product Tabs Center</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Top Brands</a>
                                                            <div class="menu-brand-logo">
                                                                <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                                <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                                <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                            </div>
                                                            <div class="menu-brand-logo">
                                                                <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                                <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                                <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                            </div>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3 p-0">
                                                            <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner3.jpg" alt="image"/></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="lvl1 parent megamenu"><a href="#">Features <i class="an an-angle-down-l"></i><span class="navLbl new">New</span></a>
                                                <div class="megamenu style4">
                                                    <div class="row shop-grid-5">
                                                        <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Vendor Pages</a>
                                                            <ul class="subLinks">
                                                                <li><a href="vendor-dashboard.html" class="site-nav">Vendor Dashboard</a></li>
                                                                <li><a href="vendor-profile.html" class="site-nav">Vendor Profile</a></li>
                                                                <li><a href="vendor-uploads.html" class="site-nav">Vendor Uploads</a></li>
                                                                <li><a href="vendor-tracking.html" class="site-nav">Vendor Tracking</a></li>
                                                                <li><a href="vendor-service.html" class="site-nav">Vendor Service</a></li>
                                                                <li><a href="vendor-settings.html" class="site-nav last">Vendor Settings</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Email Template</a>
                                                            <ul class="subLinks">
                                                                <li><a target="_blank" href="email-template/email-order-success1.html" class="site-nav">Order Success 1</a></li>
                                                                <li><a target="_blank" href="email-template/email-order-success2.html" class="site-nav">Order Success 2</a></li>
                                                                <li><a target="_blank" href="email-template/email-invoice-template1.html" class="site-nav">Invoice Template 1</a></li>
                                                                <li><a target="_blank" href="email-template/email-invoice-template2.html" class="site-nav last">Invoice Template 2</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Email Template</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a target="_blank" href="email-template/email-forgot-password.html" class="site-nav">Mail Reset password</a></li>
                                                                <li class="lvl-2"><a target="_blank" href="email-template/email-confirmation.html" class="site-nav">Mail Confirmation</a></li>
                                                                <li class="lvl-2"><a target="_blank" href="email-template/email-promotional1.html" class="site-nav">Mail Promotional 1</a></li>
                                                                <li class="lvl-2"><a target="_blank" href="email-template/email-promotional2.html" class="site-nav last">Mail Promotional 2</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Elements</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="elements-typography.html" class="site-nav lvl-2">Typography</a></li>
                                                                <li class="lvl-2"><a href="elements-buttons.html" class="site-nav lvl-2">Buttons</a></li>
                                                                <li class="lvl-2"><a href="elements-titles.html" class="site-nav lvl-2">Titles</a></li>
                                                                <li class="lvl-2"><a href="elements-banner-styles.html" class="site-nav lvl-2">Banner Styles</a></li>
                                                                <li class="lvl-2"><a href="elements-testimonial.html" class="site-nav lvl-2">Testimonial</a></li>
                                                                <li class="lvl-2"><a href="elements-accordions.html" class="site-nav lvl-2">Accordions</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Elements</a>
                                                            <ul class="subLinks">
                                                                <li class="lvl-2"><a href="elements-icons.html" class="site-nav lvl-2">Icons</a></li>
                                                                <li class="lvl-2"><a href="elements-blog-posts.html" class="site-nav lvl-2">Blog Posts</a></li>
                                                                <li class="lvl-2"><a href="elements-product.html" class="site-nav lvl-2">Product</a></li> 
                                                                <li class="lvl-2"><a href="elements-product-tab.html" class="site-nav lvl-2">Product Tab</a></li> 
                                                                <li class="lvl-2"><a href="elements-top-info-bar.html" class="site-nav lvl-2">Top Info Bar</a></li>
                                                                <li class="lvl-2"><a href="elements-top-promo-bar.html" class="site-nav lvl-2">Top Promo Bar</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row clear mt-4">
                                                        <div class="col-md-3 col-lg-3">
                                                            <img src="resources/assets/images/megamenu/megamenu-store.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                        </div>
                                                        <div class="col-md-3 col-lg-3">
                                                            <img src="resources/assets/images/megamenu/megamenu-elements.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                        </div>
                                                        <div class="col-md-3 col-lg-3">
                                                            <img src="resources/assets/images/megamenu/megamenu-pages.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                        </div>
                                                        <div class="col-md-3 col-lg-3">
                                                            <img src="resources/assets/images/megamenu/megamenu-fast.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="lvl1 parent dropdown"><a href="#;">Pages <i class="an an-angle-down-l"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="aboutus-style1.html" class="site-nav">About Us <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="aboutus-style1.html" class="site-nav">About Us Style1</a></li>
                                                            <li><a href="aboutus-style2.html" class="site-nav">About Us Style2</a></li>
                                                            <li><a href="aboutus-style3.html" class="site-nav last">About Us Style3</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="contact-style1.html" class="site-nav">Contact Us <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="contact-style1.html" class="site-nav">Contact Us Style1</a></li>
                                                            <li><a href="contact-style2.html" class="site-nav last">Contact Us Style2</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="lookbook-2columns.html" class="site-nav">Lookbook <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="lookbook-2columns.html" class="site-nav">2 Columns</a></li>
                                                            <li><a href="lookbook-3columns.html" class="site-nav">3 Columns</a></li>
                                                            <li><a href="lookbook-4columns.html" class="site-nav">4 Columns</a></li>
                                                            <li><a href="lookbook-5columns.html" class="site-nav">5 Columns + Fullwidth</a></li>
                                                            <li><a href="lookbook-shop.html" class="site-nav last">Lookbook Shop</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="faqs-style1.html" class="site-nav">FAQs <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="faqs-style1.html" class="site-nav">FAQs Style1</a></li>
                                                            <li><a href="faqs-style2.html" class="site-nav last">FAQs Style2</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="brands-style1.html" class="site-nav">Brands <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="brands-style1.html" class="site-nav">Brands Style1</a></li>
                                                            <li><a href="brands-style2.html" class="site-nav last">Brands Style2</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="my-account.html" class="site-nav">My Account <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="my-account.html" class="site-nav">My Account</a></li>
                                                            <li><a href="login-sliding-style.html" class="site-nav">Login Sliding Slideshow</a></li>
                                                            <li><a href="login.html" class="site-nav">Login</a></li>
                                                            <li><a href="register.html" class="site-nav">Register</a></li>
                                                            <li><a href="forgot-password.html" class="site-nav">Forgot Password</a></li>
                                                            <li><a href="change-password.html" class="site-nav last">Change Password</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#" class="site-nav">Empty Pages <i class="an an-angle-right-l"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="empty-category.html" class="site-nav">Empty Category</a></li>
                                                            <li><a href="empty-cart.html" class="site-nav">Empty Cart</a></li>
                                                            <li><a href="empty-compare.html" class="site-nav">Empty Compare</a></li>
                                                            <li><a href="empty-wishlist.html" class="site-nav">Empty Wishlist</a></li>
                                                            <li><a href="empty-search.html" class="site-nav last">Empty Search</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="error-404.html" class="site-nav">Error 404 </a></li>
                                                    <li><a href="cms-page.html" class="site-nav">CMS Page</a></li>
                                                    <li><a href="elements-icons.html" class="site-nav">Icons</a></li>
                                                    <li><a href="coming-soon.html" class="site-nav">Coming soon <span class="lbl nm_label2">New</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="lvl1 parent dropdown"><a href="#;">Blog <i class="an an-angle-down-l"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                                                    <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                                                    <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
                                                    <li><a href="blog-masonry.html" class="site-nav">Masonry Blog Style</a></li>
                                                    <li><a href="blog-2columns.html" class="site-nav">2 Columns</a></li>
                                                    <li><a href="blog-3columns.html" class="site-nav">3 Columns</a></li>
                                                    <li><a href="blog-4columns.html" class="site-nav">4 Columns</a></li>
                                                    <li><a href="blog-single-post.html" class="site-nav last">Article Page</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                    <!--End Desktop Menu-->
                                </div>
                            </div>
                        </nav>
                    </div>
                    <!--End Main Navigation Desktop-->
                    <!--Search Popup-->
                    <div id="search-popup" class="search-drawer">
                        <div class="container">
                            <span class="closeSearch an an-times-l"></span>
                            <form class="form minisearch" id="header-search" action="#" method="get">
                                <label class="label"><span>Search</span></label>
                                <div class="control">
                                    <div class="searchField">
                                        <div class="search-category">
                                            <select id="rgsearch-category" name="rgsearch[category]" data-default="All Categories">
                                                <option value="00" label="All Categories" selected="selected">All Categories</option>
                                                <optgroup id="rgsearch-shop" label="Shop">
                                                    <option value="0">- All</option>
                                                    <option value="1">- Men</option>
                                                    <option value="2">- Women</option>
                                                    <option value="3">- Shoes</option>
                                                    <option value="4">- Blouses</option>
                                                    <option value="5">- Pullovers</option>
                                                    <option value="6">- Bags</option>
                                                    <option value="7">- Accessories</option>
                                                </optgroup>
                                            </select>
                                        </div>
                                        <div class="input-box">
                                            <button type="submit" title="Search" class="action search" disabled=""><i class="icon an an-search-l"></i></button>
                                            <input type="text" name="q" value="" placeholder="Search by keyword or #" class="input-text">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--End Search Popup-->
                </div>
            </div>
            <!--End Header-->
            <!--Mobile Menu-->
            <div class="mobile-nav-wrapper" role="navigation">
                <div class="closemobileMenu"><i class="icon an an-times-l pull-right"></i> Close Menu</div>
                <ul id="MobileNav" class="mobile-nav">
                    <li class="lvl1 parent megamenu"><a href="index.html">Home <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="#" class="site-nav">Home Styles <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li class="lvl-2"><a href="index.html" class="site-nav">Home 01 - Default</a></li>
                                    <li class="lvl-2"><a href="index-demo2.html" class="site-nav">Home 02 - Minimal</a></li>
                                    <li class="lvl-2"><a href="index-demo3.html" class="site-nav">Home 03 - Colorful</a></li>
                                    <li class="lvl-2"><a href="index-demo4.html" class="site-nav">Home 04 - Modern</a></li>
                                    <li class="lvl-2"><a href="index-demo5.html" class="site-nav">Home 05 - Kids Clothing</a></li>
                                    <li class="lvl-2"><a href="index-demo6.html" class="site-nav">Home 06 - Single Product</a></li>
                                    <li class="lvl-2"><a href="index-demo7.html" class="site-nav">Home 07 - Glamour</a></li>
                                    <li class="lvl-2"><a href="index-demo8.html" class="site-nav">Home 08 - Simple</a></li>
                                    <li class="lvl-2"><a href="index-demo9.html" class="site-nav">Home 09 - Cool <span class="lbl nm_label1">Hot</span></a></li>
                                    <li class="lvl-2"><a href="index-demo10.html" class="site-nav last">Home 10 - Cosmetic</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Home Styles <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li class="lvl-2"><a href="index-demo11.html" class="site-nav">Home 11 - Pets <span class="lbl nm_label3">Popular</span></a></li>
                                    <li class="lvl-2"><a href="index-demo12.html" class="site-nav">Home 12 - Tools & Parts</a></li>
                                    <li class="lvl-2"><a href="index-demo13.html" class="site-nav">Home 13 - Watches <span class="lbl nm_label1">Hot</span></a></li>
                                    <li class="lvl-2"><a href="index-demo14.html" class="site-nav">Home 14 - Food</a></li>
                                    <li class="lvl-2"><a href="index-demo15.html" class="site-nav">Home 15 - Christmas</a></li>
                                    <li class="lvl-2"><a href="index-demo16.html" class="site-nav">Home 16 - Phone Case</a></li>
                                    <li class="lvl-2"><a href="index-demo17.html" class="site-nav">Home 17 - Jewelry</a></li>
                                    <li class="lvl-2"><a href="index-demo18.html" class="site-nav">Home 18 - Bag <span class="lbl nm_label3">Popular</span></a></li>
                                    <li class="lvl-2"><a href="index-demo19.html" class="site-nav">Home 19 - Swimwear</a></li>
                                    <li class="lvl-2"><a href="index-demo20.html" class="site-nav last">Home 20 - Furniture <span class="lbl nm_label2">New</span></a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Home Styles <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li class="lvl-2"><a href="index-demo21.html" class="site-nav">Home 21 - Party Supplies <span class="lbl nm_label2">New</span></a></li>
                                    <li class="lvl-2"><a href="index-demo22.html" class="site-nav">Home 22 - Digital <span class="lbl nm_label2">New</span></a></li>
                                    <li class="lvl-2"><a href="index-demo23.html" class="site-nav">Home 23 - Vogue <span class="lbl nm_label2">New</span></a></li>
                                    <li class="lvl-2"><a href="index-demo24.html" class="site-nav last">Home 24 - Glamour <span class="lbl nm_label2">New</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Shop <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="#" class="site-nav">Category Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="category-2columns.html" class="site-nav">2 Columns with style1</a></li>
                                    <li><a href="category-3columns.html" class="site-nav">3 Columns with style2</a></li>
                                    <li><a href="category-4columns.html" class="site-nav">4 Columns with style3</a></li>
                                    <li><a href="category-5columns.html" class="site-nav">5 Columns with style4</a></li>
                                    <li><a href="category-6columns.html" class="site-nav">6 Columns with Fullwidth</a></li>
                                    <li><a href="category-7columns.html" class="site-nav">7 Columns</a></li>
                                    <li><a href="empty-category.html" class="site-nav last">Category Empty</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shop Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="shop-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                                    <li><a href="shop-top-filter.html" class="site-nav">Top Filter</a></li>
                                    <li><a href="shop-fullwidth.html" class="site-nav">Fullwidth</a></li>
                                    <li><a href="shop-no-sidebar.html" class="site-nav">Without Filter</a></li>
                                    <li><a href="shop-listview-sidebar.html" class="site-nav">List View</a></li>
                                    <li><a href="shop-listview-drawer.html" class="site-nav">List View Drawer</a></li>
                                    <li><a href="shop-category-slideshow.html" class="site-nav">Category Slideshow</a></li>
                                    <li><a href="shop-heading-with-banner.html" class="site-nav last">Headings With Banner</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shop Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="shop-sub-collections.html" class="site-nav">Sub Collection List <span class="lbl nm_label5">Hot</span></a></li>
                                    <li><a href="shop-masonry-grid.html" class="site-nav">Shop Masonry Grid</a></li>
                                    <li><a href="shop-left-sidebar.html" class="site-nav">Shop Countdown</a></li>
                                    <li><a href="shop-hover-info.html" class="site-nav">Shop Hover Info</a></li>
                                    <li><a href="shop-right-sidebar.html" class="site-nav">Infinite Scrolling</a></li>
                                    <li><a href="shop-fullwidth.html" class="site-nav">Classic Pagination</a></li>
                                    <li><a href="shop-swatches-style.html" class="site-nav">Swatches Style</a></li>
                                    <li><a href="shop-grid-style.html" class="site-nav">Grid Style</a></li>
                                    <li><a href="shop-search-results.html" class="site-nav last">Search Results</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shop Other Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="my-wishlist.html" class="site-nav">My Wishlist Style1</a></li>
                                    <li><a href="my-wishlist-style2.html" class="site-nav">My Wishlist Style2</a></li>
                                    <li><a href="compare-style1.html" class="site-nav">Compare Page Style1</a></li>
                                    <li><a href="compare-style2.html" class="site-nav">Compare Page Style2</a></li>
                                    <li><a href="cart-style1.html" class="site-nav">Cart Page Style1</a></li>
                                    <li><a href="cart-style2.html" class="site-nav">Cart Page Style2</a></li>
                                    <li><a href="checkout-style1.html" class="site-nav">Checkout Page Style1</a></li>
                                    <li><a href="checkout-style2.html" class="site-nav">Checkout Page Style2</a></li>
                                    <li><a href="checkout-success.html" class="site-nav last">Checkout Success</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Product <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="product-standard.html" class="site-nav">Product Types<i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="product-standard.html" class="site-nav">Simple Product</a></li>
                                    <li><a href="product-variable.html" class="site-nav">Variable Product</a></li>
                                    <li><a href="product-grouped.html" class="site-nav">Grouped Product</a></li>
                                    <li><a href="product-external-affiliate.html" class="site-nav">External / Affiliate Product</a></li>
                                    <li><a href="product-outofstock.html" class="site-nav">Out Of Stock Product</a></li>
                                    <li><a href="product-layout1.html" class="site-nav">New Product</a></li>
                                    <li><a href="product-layout2.html" class="site-nav">Sale Product</a></li>
                                    <li><a href="product-layout1.html" class="site-nav">Variable Image</a></li>
                                    <li><a href="product-accordian.html" class="site-nav">Variable Select</a></li>
                                    <li><a href="prodcut-360-degree-view.html" class="site-nav last">360 Degree view</a></li>
                                </ul>
                            </li>
                            <li><a href="product-layout1.html" class="site-nav">Product Page Types <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="product-layout1.html" class="site-nav">Product Layout1</a></li>
                                    <li><a href="product-layout2.html" class="site-nav">Product Layout2</a></li>
                                    <li><a href="product-layout3.html" class="site-nav">Product Layout3</a></li>
                                    <li><a href="product-layout4.html" class="site-nav">Product Layout4</a></li>
                                    <li><a href="product-layout5.html" class="site-nav">Product Layout5</a></li>
                                    <li><a href="product-layout6.html" class="site-nav">Product Layout6</a></li>
                                    <li><a href="product-layout7.html" class="site-nav">Product Layout7</a></li>
                                    <li><a href="product-accordian.html" class="site-nav">Product Accordian</a></li>
                                    <li><a href="product-tabs-left.html" class="site-nav">Product Tabs Left</a></li>
                                    <li><a href="product-tabs-center.html" class="site-nav last">Product Tabs Center</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Features <i class="an an-plus-l"></i><span class="lbl nm_label1">New</span></a>
                        <ul>
                            <li><a href="#" class="site-nav">Vendor Pages <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="vendor-dashboard.html" class="site-nav">Vendor Dashboard</a></li>
                                    <li><a href="vendor-profile.html" class="site-nav">Vendor Profile</a></li>
                                    <li><a href="vendor-uploads.html" class="site-nav">Vendor Uploads</a></li>
                                    <li><a href="vendor-tracking.html" class="site-nav">Vendor Tracking</a></li>
                                    <li><a href="vendor-service.html" class="site-nav">Vendor Service</a></li>
                                    <li><a href="vendor-settings.html" class="site-nav last">Vendor Settings</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Email Template <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a target="_blank" href="email-template/email-order-success1.html" class="site-nav">Order Success 1</a></li>
                                    <li><a target="_blank" href="email-template/email-order-success2.html" class="site-nav">Order Success 2</a></li>
                                    <li><a target="_blank" href="email-template/email-invoice-template1.html" class="site-nav">Invoice Template 1</a></li>
                                    <li><a target="_blank" href="email-template/email-invoice-template2.html" class="site-nav last">Invoice Template 2</a></li>
                                    <li><a target="_blank" href="email-template/email-forgot-password.html" class="site-nav">Mail Reset password</a></li>
                                    <li><a target="_blank" href="email-template/email-confirmation.html" class="site-nav">Mail Confirmation</a></li>
                                    <li><a target="_blank" href="email-template/email-promotional1.html" class="site-nav">Mail Promotional 1</a></li>
                                    <li><a target="_blank" href="email-template/email-promotional2.html" class="site-nav last">Mail Promotional 2</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Elements <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="elements-typography.html" class="site-nav">Typography</a></li>
                                    <li><a href="elements-buttons.html" class="site-nav">Buttons</a></li>
                                    <li><a href="elements-titles.html" class="site-nav">Titles</a></li>
                                    <li><a href="elements-banner-styles.html" class="site-nav">Banner Styles</a></li>
                                    <li><a href="elements-testimonial.html" class="site-nav">Testimonial</a></li>
                                    <li><a href="elements-accordions.html" class="site-nav">Accordions</a></li>
                                    <li><a href="elements-icons.html" class="site-nav">Icons</a></li>
                                    <li><a href="elements-blog-posts.html" class="site-nav">Blog Posts</a></li>
                                    <li><a href="elements-product.html" class="site-nav">Product</a></li> 
                                    <li><a href="elements-product-tab.html" class="site-nav">Product Tab</a></li> 
                                    <li><a href="elements-top-info-bar.html" class="site-nav">Top Info Bar</a></li>
                                    <li><a href="elements-top-promo-bar.html" class="site-nav last">Top Promo Bar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Pages <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="aboutus-style1.html" class="site-nav">About Us <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="aboutus-style1.html" class="site-nav">About Us Style1</a></li>
                                    <li><a href="aboutus-style2.html" class="site-nav">About Us Style2</a></li>
                                    <li><a href="aboutus-style3.html" class="site-nav last">About Us Style3</a></li>
                                </ul>
                            </li>
                            <li><a href="contact-style1.html" class="site-nav">Contact Us <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="contact-style1.html" class="site-nav">Contact Us Style1</a></li>
                                    <li><a href="contact-style2.html" class="site-nav last">Contact Us Style2</a></li>
                                </ul>
                            </li>
                            <li><a href="lookbook-2columns.html" class="site-nav">Lookbook <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="lookbook-2columns.html" class="site-nav">2 Columns</a></li>
                                    <li><a href="lookbook-3columns.html" class="site-nav">3 Columns</a></li>
                                    <li><a href="lookbook-4columns.html" class="site-nav">4 Columns</a></li>
                                    <li><a href="lookbook-5columns.html" class="site-nav">5 Columns + Fullwidth</a></li>
                                    <li><a href="lookbook-shop.html" class="site-nav last">Lookbook Shop</a></li>
                                </ul>
                            </li>
                            <li><a href="faqs-style1.html" class="site-nav">FAQs <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="faqs-style1.html" class="site-nav">FAQs Style1</a></li>
                                    <li><a href="faqs-style2.html" class="site-nav last">FAQs Style2</a></li>
                                </ul>
                            </li>
                            <li><a href="brands-style1.html" class="site-nav">Brands <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="brands-style1.html" class="site-nav">Brands Style1</a></li>
                                    <li><a href="brands-style2.html" class="site-nav last">Brands Style2</a></li>
                                </ul>
                            </li>
                            <li><a href="my-account.html" class="site-nav">My Account <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="my-account.html" class="site-nav">My Account</a></li>
                                    <li><a href="login-sliding-style.html" class="site-nav">Login Sliding Slideshow</a></li>
                                    <li><a href="login.html" class="site-nav">Login</a></li>
                                    <li><a href="register.html" class="site-nav">Register</a></li>
                                    <li><a href="forgot-password.html" class="site-nav">Forgot Password</a></li>
                                    <li><a href="change-password.html" class="site-nav last">Change Password</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Empty Pages <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="empty-category.html" class="site-nav">Empty Category</a></li>
                                    <li><a href="empty-cart.html" class="site-nav">Empty Cart</a></li>
                                    <li><a href="empty-compare.html" class="site-nav">Empty Compare</a></li>
                                    <li><a href="empty-wishlist.html" class="site-nav">Empty Wishlist</a></li>
                                    <li><a href="empty-search.html" class="site-nav last">Empty Search</a></li>
                                </ul>
                            </li>
                            <li><a href="error-404.html" class="site-nav">Error 404 </a></li>
                            <li><a href="cms-page.html" class="site-nav">CMS Page</a></li>
                            <li><a href="elements-icons.html" class="site-nav">Icons</a></li>
                            <li><a href="coming-soon.html" class="site-nav last">Coming soon <span class="lbl nm_label2">New</span></a></li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="blog-left-sidebar.html">Blog <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                            <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                            <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
                            <li><a href="blog-masonry.html" class="site-nav">Masonry Blog Style</a></li>
                            <li><a href="blog-2columns.html" class="site-nav">2 Columns</a></li>
                            <li><a href="blog-3columns.html" class="site-nav">3 Columns</a></li>
                            <li><a href="blog-4columns.html" class="site-nav">4 Columns</a></li>
                            <li><a href="blog-single-post.html" class="site-nav last">Article Page</a></li>
                        </ul>
                    </li>
                    <li class="acLink"></li>
                    <li class="lvl1 bottom-link"><a href="login.html">Login</a></li>
                    <li class="lvl1 bottom-link"><a href="register.html">Signup</a></li>
                    <li class="lvl1 bottom-link"><a href="my-wishlist.html">Wishlist</a></li>
                    <li class="lvl1 bottom-link"><a href="compare-style1.html">Compare</a></li>
                    <li class="help bottom-link"><b>NEED HELP?</b><br>Call: +41 525 523 5687</li>
                </ul>
            </div>
            <!--End Mobile Menu-->

            <!--Body Container-->
            <div id="page-content">
                <!--Breadcrumbs-->
                <div class="breadcrumbs-wrapper text-uppercase">
                    <div class="container">
                        <div class="breadcrumbs"><a href="index.html" title="Back to the home page">Home</a><span>|</span><span class="fw-bold">Unique Designs, Unique You</span></div>
                    </div>
                </div>
                <!--End Breadcrumbs-->

                <!--Container-->
                <div class="container">
                    <div class="row">
                        <!--Sidebar-->
                        <div class="col-12 col-sm-12 col-md-12 col-lg-3 blog-sidebar sidebar sidebar-noborder">
                            <!--Search-->
                           
                            <!--End Search-->
                            <!--Sidebar tags-->
                        <!--End Sidebar-->

                        <!--Main Content-->
                        <div class="col-12 col-sm-12 col-md-12 col-lg-9 main-col">
                            <div class="article"> 
                                <h1 class="h3">이벤트</h1>
                                <ul class="publish-detail d-flex-wrap mb-4 pt-1">                      
                                    <li><i class="icon an an-clock-r"></i><time datetime="2022-09-18">2022-09-18</time></li>
                                    <li><i class="icon an an-user-al"></i><span class="clr-555 me-1">Posted by:</span>관리자</li>
                                    <li><i class="icon an an-comments-l"></i>방금전</li>
                                </ul>
                              
                          
<form name="myform"  action="usereventContent.evt">

	<table width="500" border="1" cellspacing="0" cellpadding="0"  
       align="center">  
  <tr height="30">
  
    <td align="center" width="125" >글번호</td>
    <td align="center" width="125"> ${bean.num}</td>
    <td align="center" width="125" >조회수</td>
    <td align="center" width="125"> ${bean.readcount}</td>
    
  </tr>
  <tr height="40">
    <td align="center" width="125" >작성자</td>
    
    <td align="center" width="125">관리자</td>
    
    
    <td align="center" width="125"  >이벤트 기간</td>
    <td align="center" width="125" colspan="3"> ${bean.eventdate} <fmt:parseDate var="formattedDay" value="${evnt.eventdate }" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="newformattedDay" value="${formattedDay }" pattern="yyyy-MM-dd"/>
				${newformattedDay }</td>
   
		
    
    

  </tr>
  <tr height="30">
    <td align="center" width="125" >글제목</td>
    <td align="center" width="375" colspan="3"> ${bean.title}</td>
  </tr>
    <tr>
     <td align="center" width="125">이벤트 이미지</td>
      <td align="center" width="375" colspan="3"><img src="${pageContext.request.contextPath}/resources/assets/images/${bean.eventImage}"></td>
      

     
   </tr> 
   <br>
  <tr >
    <td align="center" width="125" >글내용</td>
    
    <td align="center" width="375" colspan="3">${bean.write}</td>
  </tr> 
      <tr>
      <input type="button" value="이벤트 글 목록" onclick="location.href='view.evt?pageNum=${pageNumber}'">  
      </tr>
</table>  
</form>




   
                              
                              
                              
                                
                                <hr>
                                <!-- Article Social -->
                                <div class="social-sharing d-flex-center">
                                  
                                </div>
                                <!-- Article Nav -->
                                <div class="blog-nav d-flex-center mt-4 clearfix">
                                    <div class="nav-prev me-auto"><a href="#"><i class="align-middle me-2 icon an an-long-arrow-alt-left"></i><span>Previous post</span></a></div>
                                    <div class="nav-next ms-auto"><a href="#"><span>Next post</span><i class="align-middle ms-2 icon an an-long-arrow-alt-right"></i></a></div>
                                </div>
                                <hr>
                                <!-- Article Comment -->
                                <div class="blog-comment">
                               
                                <!--End Return to Posts-->
                            </div>
                        </div>
                        <!--End Main Content-->
                    </div>
                </div>
                <!--End Container-->
            </div>
            <!--End Body Container-->

            <!--Footer-->
            <div class="footer footer-1">
                <div class="footer-top clearfix">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 text-center about-col mb-4">
                                <img src="resources/assets/images/footer-logo.png" alt="Optimal" class="mb-3"/>
                                <p>55 Gallaxy Enque, 2568 steet, 23568 NY</p>
                                <p class="mb-0 mb-md-3">Phone: <a href="tel:+011234567890">(+01) 123 456 7890</a> <span class="mx-1">|</span> Email: <a href="mailto:info@example.com">info@example.com</a></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links">
                                <h4 class="h4">Informations</h4>
                                <ul>
                                    <li><a href="my-account.html">My Account</a></li>
                                    <li><a href="aboutus-style1.html">About us</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="privacy-policy.html">Privacy policy</a></li>
                                    <li><a href="#">Terms &amp; condition</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-2 footer-links">
                                <h4 class="h4">Quick Shop</h4>
                                <ul>
                                    <li><a href="#">Women</a></li>
                                    <li><a href="#">Men</a></li>
                                    <li><a href="#">Kids</a></li>
                                    <li><a href="#">Sportswear</a></li>
                                    <li><a href="#">Sale</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links">
                                <h4 class="h4">Customer Services</h4>
                                <ul>
                                    <li><a href="#">Request Personal Data</a></li>
                                    <li><a href="faqs-style1.html">FAQ's</a></li>
                                    <li><a href="contact-style1.html">Contact Us</a></li>
                                    <li><a href="#">Orders and Returns</a></li>
                                    <li><a href="#">Support Center</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-4 newsletter-col">
                                <div class="display-table pt-md-3 pt-lg-0">
                                    <div class="display-table-cell footer-newsletter">
                                        <form action="#" method="post">
                                            <label class="h4">NEWSLETTER SIGN UP</label>
                                            <p>Enter Your Email To Receive Daily News And Get 20% Off Coupon For All Items.</p>
                                            <div class="input-group">
                                                <input type="email" class="brounded-start input-group__field newsletter-input mb-0" name="EMAIL" value="" placeholder="Email address" required>
                                                <span class="input-group__btn">
                                                    <button type="submit" class="btn newsletter__submit rounded-end" name="commit" id="Subscribe"><i class="an an-envelope-l"></i></button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <ul class="list-inline social-icons mt-3 pt-1">
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Facebook"><i class="an an-facebook" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Twitter"><i class="an an-twitter" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Pinterest"><i class="an an-pinterest-p" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Instagram"><i class="an an-instagram" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="TikTok"><i class="an an-tiktok" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Whatsapp"><i class="an an-whatsapp" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom clearfix">
                    <div class="container">
                        <div class="d-flex-center flex-column justify-content-md-between flex-md-row-reverse">
                            <img src="resources/assets/images/payment.png" alt="Paypal Visa Payments"/>
                            <div class="copytext text-uppercase">&copy; 2022 Optimal. All Rights Reserved.</div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Footer-->

            <!--Scoll Top-->
            <span id="site-scroll"><i class="icon an an-chevron-up"></i></span>
            <!--End Scoll Top-->

            <!--MiniCart Drawer-->
            <div class="minicart-right-drawer modal right fade" id="minicart-drawer">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div id="cart-drawer" class="block block-cart">
                            <div class="minicart-header">
                                <a href="javascript:void(0);" class="close-cart" data-bs-dismiss="modal" aria-label="Close"><i class="an an-times-r" aria-hidden="true" data-bs-toggle="tooltip" data-bs-placement="left" title="Close"></i></a>
                                <h4 class="fs-6">Your cart (2 Items)</h4>
                            </div>
                            <div class="minicart-content">
                                <ul class="clearfix">
                                    <li class="item d-flex justify-content-center align-items-center">
                                        <a class="product-image" href="product-layout1.html">
                                            <img class="blur-up lazyload" src="resources/assets/images/products/cart-product-img1.jpg" data-src="resources/assets/images/products/cart-product-img1.jpg" alt="image" title="">
                                        </a>
                                        <div class="product-details">
                                            <a class="product-title" href="product-layout1.html">Floral Crop Top</a>
                                            <div class="variant-cart">Black / XL</div>
                                            <div class="priceRow">
                                                <div class="product-price">
                                                    <span class="money">$59.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="qtyDetail text-center">
                                            <div class="wrapQtyBtn">
                                                <div class="qtyField">
                                                    <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon an an-minus-r" aria-hidden="true"></i></a>
                                                    <input type="text" name="quantity" value="1" class="qty">
                                                    <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon an an-plus-l" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <a href="#" class="edit-i remove"><i class="icon an an-edit-l" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"></i></a>
                                            <a href="#" class="remove"><i class="an an-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                                        </div>
                                    </li>
                                    <li class="item d-flex justify-content-center align-items-center">
                                        <a class="product-image" href="product-layout1.html">
                                            <img class="blur-up lazyload" src="resources/assets/images/products/cart-product-img1.jpg" data-src="resources/assets/images/products/cart-product-img1.jpg" alt="image" title="">
                                        </a>
                                        <div class="product-details">
                                            <a class="product-title" href="product-layout1.html">V Neck T-shirts</a>
                                            <div class="variant-cart">Blue / XL</div>
                                            <div class="priceRow">
                                                <div class="product-price">
                                                    <span class="money">$199.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="qtyDetail text-center">
                                            <div class="wrapQtyBtn">
                                                <div class="qtyField">
                                                    <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon an an-minus-r" aria-hidden="true"></i></a>
                                                    <input type="text" name="quantity" value="1" class="qty">
                                                    <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon an an-plus-l" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <a href="#" class="edit-i remove"><i class="icon an an-edit-l" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"></i></a>
                                            <a href="#" class="remove"><i class="an an-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="minicart-bottom">
                                <div class="shipinfo text-center mb-3 text-uppercase">
                                    <p class="freeShipMsg"><i class="an an-truck fs-5 me-2 align-middle"></i>SPENT <b>$199.00</b> MORE FOR FREE SHIPPING</p>
                                </div>
                                <div class="subtotal">
                                    <span>Total:</span>
                                    <span class="product-price">$93.13</span>
                                </div>
                                <a href="checkout-style1.html" class="w-100 p-2 my-2 btn btn-outline-primary proceed-to-checkout rounded">Proceed to Checkout</a>
                                <a href="cart-style1.html" class="w-100 btn-primary cart-btn rounded">View Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End MiniCart Drawer-->
            <div class="modalOverly"></div>


            <!-- Including Jquery -->
            <script src="resources/assets/js/vendor/jquery-min.js"></script>
            <script src="resources/assets/js/vendor/js.cookie.js"></script>
            <!--Including Javascript-->
            <script src="resources/assets/js/plugins.js"></script>
            <script src="resources/assets/js/main.js"></script>

        </div>
        <!--End Page Wrapper-->
    </body>
</html>