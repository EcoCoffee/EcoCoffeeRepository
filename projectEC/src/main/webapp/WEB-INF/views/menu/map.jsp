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
<title>ECO COFFEE - MAP</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
</head>

<!-- Favicons -->
<link rel="shortcut icon" href="../resources/assets/images/icons/favicon.png">

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
            	<img width="28" src="../resources/assets/image-resources/gravatar.jpg">
            
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

<div class="hero-box hero-box-smaller full-bg-13 font-inverse" data-top-bottom="background-position: 50% 0px;" data-bottom-top="background-position: 50% -600px;">
       
    <div class="container">
        <h1 class="hero-heading wow fadeInDown" data-wow-duration="0.6s">ECO Coffee</h1>
        <p class="hero-text wow bounceInUp" data-wow-duration="0.9s" data-wow-delay="0.2s">The most complete user interface framework that can be used to create stunning admin dashboards and presentation websites.</p>
    </div>
    <div class="hero-overlay bg-black"></div>
</div>

<div id="page-content"
         class="col-md-10 center-margin frontend-components mrg25T">
         <!--body 겉부분-->
         <div class="row">
            <!--목록이랑 지도-->
            <div class="col-md-2">
               <!--목록-->
               <div id="accordion" class="panel-group">
                  <div class="panel">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordion"
                              class="display-block" href="#Elements"> 가맹 카페 <i
                              class="glyph-icon icon-angle-right float-right"></i>
                           </a>
                        </h4>
                     </div>
                  </div>
                  <!--elements-->
                  <div class="panel">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordion"
                              class="display-block" href="#Maps"> 수거업체 <i
                              class="glyph-icon icon-angle-right float-right"></i>
                           </a>
                        </h4>
                     </div>
                     <div id="Maps" class="panel-collapse collapse">
                        <div class="panel-body">
                           <ul class="nav">
                              <li><a href="gmaps.html" title="gMaps"><span>gMaps</span></a></li>
                              <li><a href="vector-maps.html" title="Vector maps"><span>Vector
                                       maps</span></a></li>
                              <li><a href="mapael.html" title="Mapael"><span>Mapael</span></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <!--Maps-->
               </div>
               <!--panel-group-->
            </div>
            <!--목록-->
            <div class="col-md-10">
               <!--지도부분-->
               <!-- GMaps -->

               <!--다음지도API,라이브러리불러오기-->
               <script type="text/javascript"
                  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=90659a87ed8bdd7044bb32388141231d&libraries=services,clusterer,drawing"></script>

               <div id="page-title">
                  <h2>gMaps</h2>
                  <p> Maps API</p>
               </div>

               <div class="panel">
                  <!-- 마커만 보여주기 -->
                  <div class="panel-body">
                     <h3 class="title-hero">가맹카페</h3>
                     <div class="example-box-wrapper">
                        <div id="map-basic" style="height: 500px;"></div>
                     </div>
                  </div>
               </div>

               <div class="panel">
                  <!--마커+클러스터  -->
                  <div class="panel-body">
                     <h3 class="title-hero">수거업체</h3>
                     <div class="example-box-wrapper">
                        <div class="row">
                           <div class="content-box pad10A center-margin col-md-12">
                              <div id="map-cluster" style="height: 500px;"></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               
               <div id = "output2" style="background-color: yellow">
                
               </div>
               <!-- 다음지도 스크립트 -->
               <!-- 지도틀 다음으로 스트립트 넣어줘야함.  -->
                <script type="text/javascript" src="../resources/js/dmaps.js"></script> 
               <!-- <script type="text/javascript" src="../resources/js/dmaps2.js"></script> -->
            </div>
         </div>

      </div>
      <!-- 여기에 코딩 -->

      <br>
      <br>
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
   <!-- .main-header -->
   <!-- Skrollr -->
   <script>
      $(document).ready(function() {
         var map = new daum.maps.Map(document.getElementById('map-cluster'), { // 지도를 표시할 div
              center : new daum.maps.LatLng(37.566826005485716, 126.9786567859313), // 지도의 중심좌표 
              level : 9 // 지도의 확대 레벨 
          });
          
          // 마커 클러스터러를 생성합니다 
          var clusterer = new daum.maps.MarkerClusterer({
              map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
              averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
              minLevel: 5 // 클러스터 할 최소 지도 레벨 
            });   
          
       // 주소-좌표 변환 객체를 생성합니다
          var geocoder = new daum.maps.services.Geocoder();
       
          var markerPosition;
          var markers;
          // 데이터를 가져오기 위해 jQuery를 사용합니다
          // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
             $.ajax({
                type : "get"
                , url : "getMap"
                , dataType : "json"
                , cache : false
                , success : function(resp) {
                  
                   $.each(resp, function(i, position){
                      var c = position.name+":"+position.lat+":"+position.lng
                   
                      markerPosition = new daum.maps.LatLng(position.lat, position.lng);
                        var markerTitle = position.name;
                         
               console.log(markerPosition);
                      
                      markers = new daum.maps.Marker({
                         map : map
                         , title : markerTitle
                         , position: markerPosition //setMarker효과
                         , clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
                      });
                      
                         var infowindow = new daum.maps.InfoWindow({
//                           position: markerPosition
                            content : markerTitle
//                            , removable : false
                       }); 

                        daum.maps.event.addListener(markers, 'mouseover', function() {
                          //infowindow.setPosition();
                       infowindow.open(map, markers);
                          });
                      
                      // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
//                          function makeOverListener(map, markers, infowindow) {
//                              return function() {
//                                  infowindow.open(map, markers);
//                              };
//                          }
   
//                          daum.maps.event.addListener(markers, 'mouseout', function() {
//                              infowindow.close();
//                          });
                     
                     
                        map.setCenter(markerPosition); //설정안하면 가운데로 안감
                   
                     daum.maps.event.addListener(markers, 'click', function() {
            
                   $('#output2').html(markers);
                           // 현재 지도 레벨에서 1레벨 확대한 레벨          
                           var level = map.getLevel()-1;
         
                          // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
                       map.setLevel(level, {anchor: map.setCenter(markerPosition)});
                       });
                     
                   }) //each
                   
                     clusterer.addMarkers(markers);
                    
                 }
                ,error : function(e) {
                    alert(JSON.stringify(e)); 
                }
          });
           
       
      })
   </script>

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