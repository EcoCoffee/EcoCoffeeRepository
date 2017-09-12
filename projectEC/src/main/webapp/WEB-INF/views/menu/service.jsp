<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<% String gc = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>
        /* Loading Spinner */
        .spinner{margin:0;width:70px;height:18px;margin:-35px 0 0 -9px;position:absolute;top:50%;left:50%;text-align:center}.spinner > div{width:18px;height:18px;background-color:#333;border-radius:100%;display:inline-block;-webkit-animation:bouncedelay 1.4s infinite ease-in-out;animation:bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode:both;animation-fill-mode:both}.spinner .bounce1{-webkit-animation-delay:-.32s;animation-delay:-.32s}.spinner .bounce2{-webkit-animation-delay:-.16s;animation-delay:-.16s}@-webkit-keyframes bouncedelay{0%,80%,100%{-webkit-transform:scale(0.0)}40%{-webkit-transform:scale(1.0)}}@keyframes bouncedelay{0%,80%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}40%{transform:scale(1.0);-webkit-transform:scale(1.0)}}
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ECO COFFEE - ECO 마일리지</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
</head>

<!-- Favicons -->
<link rel="shortcut icon" href="../resources/assets/images/icons/favicon.ico">

<!--instagram-->
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/instagram.css">

<!-- HELPERS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/animate.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/backgrounds.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/boilerplate.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/border-radius.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/grid.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/page-transitions.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/spacing.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/typography.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/utils.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/colors.css">

<!-- ELEMENTS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/elements/badges.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/buttons.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/content-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/dashboard-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/forms.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/images.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/info-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/invoice.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/loading-indicators.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/menus.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/panel-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/response-messages.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/responsive-tables.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/ribbon.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/social-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/tables.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/tile-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/timeline.css">

<!-- FRONTEND ELEMENTS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/footer.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/blog.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/cta-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/feature-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/hero-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/icon-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/portfolio-navigation.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/pricing-table.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/sliders.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/testimonial-box.css">

<!-- ICONS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/icons/fontawesome/fontawesome.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/icons/linecons/linecons.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/icons/spinnericon/spinnericon.css">

<!-- WIDGETS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/accordion-ui/accordion.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/calendar/calendar.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/carousel/carousel.css">

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/justgage/justgage.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/morris/morris.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/piegage/piegage.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/xcharts/xcharts.css">

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/chosen/chosen.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/colorpicker/colorpicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/datatable/datatable.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/datepicker/datepicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/datepicker-ui/datepicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/dialog/dialog.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/dropdown/dropdown.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/dropzone/dropzone.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/file-input/fileinput.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/input-switch/inputswitch.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/input-switch/inputswitch-alt.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/ionrangeslider/ionrangeslider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/jcrop/jcrop.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/jgrowl-notifications/jgrowl.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/loading-bar/loadingbar.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/maps/vector-maps/vectormaps.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/markdown/markdown.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/modal/modal.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/multi-select/multiselect.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/multi-upload/fileupload.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/nestable/nestable.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/noty-notifications/noty.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/popover/popover.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/pretty-photo/prettyphoto.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/progressbar/progressbar.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/range-slider/rangeslider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/slidebars/slidebars.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/slider-ui/slider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/summernote-wysiwyg/summernote-wysiwyg.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/tabs-ui/tabs.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/theme-switcher/themeswitcher.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/timepicker/timepicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/tocify/tocify.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/tooltip/tooltip.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/touchspin/touchspin.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/uniform/uniform.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/wizard/wizard.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/xeditable/xeditable.css">

<!-- FRONTEND WIDGETS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/layerslider/layerslider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/owlcarousel/owlcarousel.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/fullpage/fullpage.css">

<!-- SNIPPETS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/chat.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/files-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/login-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/notification-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/progress-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/todo.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/user-profile.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/mobile-navigation.css">

<!-- APPLICATIONS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/applications/mailbox.css">

<!-- Admin theme -->

<link rel="stylesheet" type="text/css" href="../resources/assets/themes/admin/layout.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/themes/admin/color-schemes/default.css">

<!-- Frontend theme -->

<link rel="stylesheet" type="text/css" href="../resources/assets/themes/frontend/layout.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/themes/frontend/color-schemes/default.css">

<!-- Components theme -->

<link rel="stylesheet" type="text/css" href="../resources/assets/themes/components/default.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/themes/components/border-radius.css">

<!-- Admin responsive -->

<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/responsive-elements.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/admin-responsive.css">

<!-- Frontend responsive -->

<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/responsive-elements.css">
<link rel="stylesheet" type="text/css" href="../resources//assets/helpers/frontend-responsive.css">

    <!-- JS Core -->

    <script type="text/javascript" src="../resources/assets/js-core/jquery-core.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/jquery-ui-core.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/jquery-ui-widget.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/jquery-ui-mouse.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/jquery-ui-position.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/transition.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/modernizr.js"></script>
    <script type="text/javascript" src="../resources/assets/js-core/jquery-cookie.js"></script>

<script type="text/javascript">
    $(window).load(function(){
        setTimeout(function() {
            $('#loading').fadeOut( 400, "linear" );
        }, 300);
    });
</script>

</head>

<body>
<div id="loading">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>

<div id="page-wrapper"><div class="top-bar bg-topbar">
    <div class="container">
            <div class="float-right user-account-btn dropdown">
            <div class="user-profile clearfix">
            	<img width="28" src="./resources/assets/image-resources/gravatar.jpg">
            
            <c:if test="${loginId == null}">
            <a href="<%=gc%>/member/login" title="Login" class="btn btn-sm float-left btn-alt btn-hover mrg10R btn-default">
                <span>LOGIN</span>
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
            <a href="<%=gc%>/member/join" title="Join" class="btn btn-sm float-left btn-alt btn-hover mrg10R btn-default">
                <span>JOIN</span>
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
            </c:if>
            
            <c:if test="${loginId != null}">
			<div align="justify" style="width : 415px;">
				<span>${sessionScope.loginName}(${sessionScope.loginId})님 로그인&nbsp;&nbsp;</span>
                <a href="<%=gc%>/member/update" title="Update" class="btn btn-sm float-left btn-alt btn-hover mrg10R btn-default">
                <span>UPDATE</span>
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
            <a href="<%=gc%>/member/logout" title="Logout" class="btn btn-sm float-left btn-alt btn-hover mrg10R btn-default">
                <span>LOGOUT</span>
                <i class="glyph-icon icon-arrow-right"></i>
            </a>
			</div>
            </c:if>
            </div>
            </div>
        </div>
    </div><!-- .container -->
</div><!-- .top-bar -->

<div class="main-header bg-header wow fadeInDown">
    <div class="container">
    <a href="<%=gc%>/mainHome" class="header-logo" title="EcoCoffee - Create perfect RECYLCE Coffee"></a><!-- .header-logo -->
    <div class="right-header-btn">
        <div id="mobile-navigation">
            <button id="nav-toggle" class="collapsed" data-toggle="collapse" data-target=".header-nav"><span></span></button>
        </div>
    </div><!-- .header-logo -->
    <ul class="header-nav collapse">
        <li>
            <a href="#" title="Homepages">
                홈페이지소개
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <ul>
                <li><a href="index.html" title="Homepage example 1"><span>홈페이지 소개</span></a></li>
                <li><a href="index-alt.html" title="Homepage example 2"><span>커피박 소개</span></a></li>
                <li><a href="<%=gc%>/menu/service" title="Homepage example 3"><span>에코마일리지</span></a></li>
                
            </ul>
        </li>
        <li>
            <a href="<%=gc%>/menu/map" title="Hero sections">
               가맹점소개
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <ul class="footer-nav">
                <li><a href="hero-static.html" title="Static hero sections"><span>가맹 카페</span></a></li>
                <li><a href="hero-alignments.html" title="Hero alignments"><span>가맹 수거업체</span></a></li>
           
            </ul>
        </li>
       <li>
            <a href="#" title="Components">
                서비스 이용하기
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a href="content-boxes.html" title="Components framework">
                        <span>예약관련</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="<%=gc%>/menu/product" title="Components">
               상품페이지
            </a>
        </li>
        <li>
            <a href="#" title="ContactUs">
                Contact US               
            </a>
        </li>
       
    </ul><!-- .header-nav -->
</div><!-- .container -->
</div><!-- .main-header -->
</div>

<div class="hero-box hero-box-smaller full-bg-13 font-inverse" data-top-bottom="background-position: 50% 0px;" data-bottom-top="background-position: 50% -600px;">
       
    <div class="container">
        <h1 class="hero-heading wow fadeInDown" data-wow-duration="0.6s">ECO Coffee</h1>
        <p class="hero-text wow bounceInUp" data-wow-duration="0.9s" data-wow-delay="0.2s">The most complete user interface framework that can be used to create stunning admin dashboards and presentation websites.</p>
    </div>
    <div class="hero-overlay bg-black"></div>
</div>

<!-- Lazyload -->

<script type="text/javascript" src="../resources/assets/widgets/lazyload/lazyload.js"></script>
<script type="text/javascript">
    /* Lazyload */

    $(function() {
        $("img.lazy").lazyload({
            effect: "fadeIn",
            threshold: 100
        });
    });
</script>

<!-- PrettyPhoto modals -->

<!--<link rel="stylesheet" type="text/css" href="../../assets/widgets/pretty-photo/prettyphoto.css">-->
<script type="text/javascript" src="../resources/assets/widgets/pretty-photo/prettyphoto.js"></script>
<script type="text/javascript">
    /* PrettyPhoto */

    $(document).ready(function() {
        $(".prettyphoto").prettyPhoto();
    });
</script>

<div id="page-content" class="container mrg25T">
    <div class="row">
        <div class="col-md-9">
                <div class="post-image col-md-4">
                    <a href="../resources/assets/image-resources/stock-images/img-50.jpg" class="prettyphoto" rel="prettyPhoto[pp_gal]" title="Blog post title">
                        <img class="img-responsive lazy img-rounded" src="" data-original="../resources/assets/image-resources/stock-images/img-50.jpg" alt="">
                    </a>
                </div>
                <div class="post-content-wrapper col-md-8">
                    <a class="post-title" href="blog-single.html" title="">
                        <h3>ECO MILEAGE</h3><br>
                    </a>
                    <div class="post-content">
                        <p>▶ 에코(eco, 친환경)와 마일리지(mileage, 쌓는다)의 합성어로 친환경을 쌓는다는 의미</p>
                        <p>▶ 전기, 수도, 도시가스를 절약하시면 마일리지로 적립하실 수 있는 시민참여 프로그램</p>
                        <p>▶ 에코마일리지 가입시 매달 전기, 수도, 도시가스 사용량 한번에 확인 및 관리 가능</p>
                        <p>▶ 에너지사용량(전기, 수도, 도시가스)은 에코마일리지에서 6개월 주기로 집계</p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=> 절감율에 따라 마일리지 적립</p>
                    </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="content-box">
    <h3 class="content-box-header bg-default">
        HOMEPAGE
    </h3>
    <div class="posts-list content-box-wrapper">
        <ul class="">
            <li>
                <div class="post-image">
                    <a href="../resources/assets/image-resources/stock-images/img-48.JPG" class="prettyphoto" rel="prettyPhoto[pp_gal]" title="Blog post title">
                        <img class="img-responsive" src="../resources/assets/image-resources/stock-images/img-48.JPG" alt="">
                    </a>
                </div>
                <div class="post-body">
                    <a class="post-title" href="http://ecomileage.seoul.go.kr/home/index.do" title="">
                        <h3>SEOUL ECO MILEAGE</h3>
                    </a>
                    <p>서울시 에코 마일리지 홈페이지</p>
                </div>
            </li>
            <li>
                <div class="post-image">
                    <a href="../resources/assets/image-resources/stock-images/img-47.jpg" class="prettyphoto" rel="prettyPhoto[pp_gal]" title="Blog post title">
                        <img class="img-responsive" src="../resources/assets/image-resources/stock-images/img-47.jpg" alt="">
                    </a>
                </div>
                <div class="post-body">
                    <a class="post-title" href="https://www.facebook.com/ecomileage" title="">
                        <h3>ECO MILEAGE FACEBOOK</h3>
                    </a>
                    <p>서울시 에코 마일리지 페이스북</p>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="list-group mrg20B">
    <a href="#" class="list-group-item">
        <i class="glyph-icon icon-dashboard"></i>
        Fashion
        <i class="glyph-icon icon-chevron-right"></i>
    </a>
    <a href="#" class="list-group-item">
        <i class="glyph-icon font-red icon-bullhorn"></i>
        Gadgets
        <i class="glyph-icon font-green icon-chevron-right"></i>
    </a>
    <a href="#" class="list-group-item">
        <i class="glyph-icon font-primary icon-camera"></i>
        Web applications
        <i class="glyph-icon icon-chevron-right"></i>
    </a>
    <a href="#" class="list-group-item">
        <i class="glyph-icon font-azure icon-gears"></i>
        Gaming
        <i class="glyph-icon icon-chevron-right"></i>
    </a>
    <a href="#" class="list-group-item disabled">
        <i class="glyph-icon font-blue-alt icon-globe"></i>
        Music
        <i class="glyph-icon icon-chevron-right"></i>
    </a>
</div>
<div class="content-box">
    <h3 class="content-box-header bg-default">
        Instagram - Hash Tags
    </h3>
    <div class="content-box-wrapper clearfix tags-list">
        <a href="https://www.instagram.com/explore/tags/%EC%97%90%EC%BD%94%EB%A7%88%EC%9D%BC%EB%A6%AC%EC%A7%80/?hl=ko" title="" class="bs-label label-black">#에코마일리지</a>
        <a href="https://www.instagram.com/explore/tags/%EC%97%90%EC%BD%94/?hl=ko" title="" class="bs-label label-black">#에코</a>
        <a href="https://www.instagram.com/explore/tags/eco/?hl=ko" title="" class="bs-label label-success">#ECO</a>
        <a href="https://www.instagram.com/explore/tags/ecomileage/?hl=ko" title="" class="bs-label label-warning">#ECOMILEAGE</a>
        <a href="https://www.instagram.com/explore/tags/%E3%82%A8%E3%82%B3%E3%83%BC/?hl=ko" title="" class="bs-label label-success">#エコー</a>
    </div>
</div>
        </div>
    </div>
</div>

<br><br>

<div class="main-footer bg-gradient-4 clearfix"><!--assets/helpers/backgrounds.css-->
    <div class="footer-pane">
        <div class="container clearfix">
            <div class="logo">&copy; 2017 SCIT 33rd A Class ECO COFFEE All Rights Reserved.</div>
            <div class="footer-nav-bottom">
              	Contact us.&nbsp;&nbsp;
					<i class="glyph-icon icon-envelope-o"></i>
                    <a href="https://www.instagram.com/coffeerecycle/" title="">Instagram Message</a>
            </div>
        </div>
    </div>
</div>

<!-- FRONTEND ELEMENTS -->


<!-- Skrollr -->

<script type="text/javascript" src="../resources/assets/widgets/skrollr/skrollr.js"></script>

<!-- Owl carousel -->

<script type="text/javascript" src="../resources/assets/widgets/owlcarousel/owlcarousel.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/owlcarousel/owlcarousel-demo.js"></script>

<!-- HG sticky -->

<script type="text/javascript" src="../resources/assets/widgets/sticky/sticky.js"></script>

<!-- WOW -->

<script type="text/javascript" src="../resources/assets/widgets/wow/wow.js"></script>

<!-- VideoBG -->

<script type="text/javascript" src="../resources/assets/widgets/videobg/videobg.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/videobg/videobg-demo.js"></script>

<!-- Mixitup -->

<script type="text/javascript" src="../resources/assets/widgets/mixitup/mixitup.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/mixitup/isotope.js"></script>

<!-- WIDGETS -->

<!-- Bootstrap Dropdown -->

<script type="text/javascript" src="../resources/assets/widgets/dropdown/dropdown.js"></script>

<!-- Bootstrap Tooltip -->

<script type="text/javascript" src="../resources/assets/widgets/tooltip/tooltip.js"></script>

<!-- Bootstrap Popover -->

<script type="text/javascript" src="../resources/assets/widgets/popover/popover.js"></script>

<!-- Bootstrap Progress Bar -->

<script type="text/javascript" src="../resources/assets/widgets/progressbar/progressbar.js"></script>

<!-- Bootstrap Buttons -->

<script type="text/javascript" src="../resources/assets/widgets/button/button.js"></script>

<!-- Bootstrap Collapse -->

<script type="text/javascript" src="../resources/assets/widgets/collapse/collapse.js"></script>

<!-- Superclick -->

<script type="text/javascript" src="../resources/assets/widgets/superclick/superclick.js"></script>

<!-- Input switch alternate -->

<script type="text/javascript" src="../resources/assets/widgets/input-switch/inputswitch-alt.js"></script>

<!-- Slim scroll -->

<script type="text/javascript" src="../resources/assets/widgets/slimscroll/slimscroll.js"></script>

<!-- Content box -->

<script type="text/javascript" src="../resources/assets/widgets/content-box/contentbox.js"></script>

<!-- Overlay -->

<script type="text/javascript" src="../resources/assets/widgets/overlay/overlay.js"></script>

<!-- Widgets init for demo -->

<script type="text/javascript" src="../resources/assets/js-init/widgets-init.js"></script>
<script type="text/javascript" src="../resources/assets/js-init/frontend-init.js"></script>

<!-- Theme layout -->

<script type="text/javascript" src="../resources/assets/themes/frontend/layout.js"></script>

<!-- Theme switcher -->

<script type="text/javascript" src="../resources/assets/widgets/theme-switcher/themeswitcher.js"></script>

</body>
</html>