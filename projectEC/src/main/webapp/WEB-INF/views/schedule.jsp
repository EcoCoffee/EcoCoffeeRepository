<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
<title> Calendar </title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- HELPERS -->
<link rel="stylesheet" type="text/css" href="./resources/assets/helpers/boilerplate.css">
<link rel="stylesheet" type="text/css" href="./resources/assets/helpers/grid.css">
<link rel="stylesheet" type="text/css" href="./resources/assets/helpers/utils.css">

<!-- ELEMENTS -->
<link rel="stylesheet" type="text/css" href="./resources/assets/elements/buttons.css">
<link rel="stylesheet" type="text/css" href="./resources/assets/elements/content-box.css">
<link rel="stylesheet" type="text/css" href="./resources/assets/elements/forms.css">
<link rel="stylesheet" type="text/css" href="./resources/assets/elements/images.css">

<!-- ICONS -->
<link rel="stylesheet" type="text/css" href="./resources/assets/icons/fontawesome/fontawesome.css">

<!-- WIDGETS -->
<link rel="stylesheet" type="text/css" href="./resources/assets/widgets/calendar/calendar.css">
<link rel="stylesheet" href="./resources/assets/widgets/calendar/bootstrap.min.css">

<!-- Frontend theme -->
<link rel="stylesheet" type="text/css" href="./resources/assets/themes/frontend/color-schemes/default.css">

<!-- Components theme -->
<link rel="stylesheet" type="text/css" href="./resources/assets/themes/components/default.css">

<!-- JS Core -->

<script type="text/javascript" src="./resources/assets/js-core/jquery-core.js"></script>
<script type="text/javascript">
    $(window).load(function(){
        setTimeout(function() {
            $('#loading').fadeOut( 400, "linear" );
        }, 300);
        
    });
</script>



</head>
<body>

<!-- Calendar -->

<script type="text/javascript" src="./resources/assets/widgets/daterangepicker/moment.js"></script>
<script type="text/javascript" src="./resources/assets/widgets/calendar/calendar.js"></script>
<script type="text/javascript" src="./resources/assets/widgets/calendar/calendar-demo.js"></script>
<script type="text/javascript" src="./resources/assets/widgets/calendar/calendarSchdule.js"></script>
<script type="text/javascript" src="./resources/assets/widgets/calendar/sweetalert.min.js?ver=1"></script>
<script type="text/javascript" src="./resources/assets/widgets/calendar/stringBuffer.js"></script>
<script type="text/javascript" src="./resources/assets/widgets/calendar/bootstrap.min.js"></script><!-- 모달 -->


<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
var jquery = jQuery.noConflict();
   
// 유효성 검사 및 값 전송
function calendarSchduleAdd() {
   var cafeid = $('#cafeid').val();
   var reserdate = $('#reserdate').val();
   var resertime = $('#resertime').val();
   
   if(resertime == '') {
      alert('예약시간을 선택하세요.');
      return false;
   }
   
   console.log(cafeid + reserdate + resertime);
   //$('#frmSchdule').submit();
   
   jquery.ajax({   
      url: 'insertschdule',
      type: 'POST',
      data : {"cafeid": cafeid
         , "reserdate": reserdate
         , "resertime": resertime
      },
      success: function(msg) {
         console.log(msg);
         alert('저장되었습니다.');
         $('.modal').on('hidden.bs.modal', function (e) {
        	    console.log('modal close');
        	  $(this).find('form')[0].reset()
        	});
      },
      error: function(e) {
         console.log(e);
      }
   });
} // calendarSchduleAdd() end   
   
</script>
<!--  -->

<div class="panel">
    <div class="panel-body">
        <h3 class="title-hero">
            Eco Coffee
        </h3>
        <div class="example-box-wrapper row">
            <div id="calendar-example-1" class="col-md-10 center-margin"></div>
        </div>
    </div>
</div>

  <!-- 일정 생성 modal -->
  <div class="modal fade" id="schduleForm" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">Reservation</h4>
        </div>
        
        
        <div class="modal-body">
          <form class='form-margin40' id='frmSchdule' name="frmSchdule"
          method="post" action="insertschdule">
            <div class='form-group'>
              <label>카페</label> <input type='text' class='form-control'
                id='cafeid' name='cafeid'>
            </div>
            <div class='form-group'>
              <label>배출일</label> <input class='form-control startDate'
                type="date" id='reserdate' name='reserdate' readonly="readonly">
            </div>            
            <div class='form-group'>
              <label>예약시간</label> <input class='form-control' type="time"
                id='resertime' name='resertime'>
            </div>
         <!--    <div class='form-group'>
              <label>수거업체</label>
              <textarea rows="4" class='form-control' id="description"
                name='description'></textarea>
            </div> -->
            <div class='modal-footer'>
              <input type="button" id="confirm" class='btn btn-sm btn-warning' onclick="calendarSchduleAdd()" value="확인" />  
                <input type='button' class='btn btn-sm btn-warning' data-dismiss='modal' value="취소" />
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
