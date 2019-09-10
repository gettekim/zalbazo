<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/webjars/css/jquery.multiselect.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="/webjars/js/jquery.multiselect.js"></script>
 <link rel="stylesheet" type="text/css" href="/webjars/css/demo.css" />
 <link rel="stylesheet" type="text/css" href="/webjars/css/backgroundTransition.css" />
 <link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<style>

.ms-options-wrap{
 width : 300px;
}
.fixed{
    position:fixed;
}
html, body{
    margin:0;
    padding:0;
}
header{
    background-color:white;
    height:100px;
    width:100%;
}
header ul{
    list-style-type:none;
    float:right;
}
ul li{
    display:inline-block;
    margin:20px;
}

.dd{
    background-color:yellow;
    width:100%;
    height:2000px;
}

</style>

</head>
<body>
 <header>
           <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><a class="navbar-brand logo" href="#">Zalbazo</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
            id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link active" href="index.html">Home</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="features.html">커뮤니티</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="pricing.html">지식인</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="about-us.html">Q&A</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="contact-us.html">마이페이지</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="contact-us.html">로그인</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="contact-us.html">회원가입</a></li>
            </ul>
        </div>
    </div>
</nav>
        </header>



<div style="width:100px height:100px">
 <div class="backgroundTransition">
          <div class="content">
              <h1>병원검색</h1>
         
              <p>검색해주세요</p>
            
     </div>
      </div>
 </div>

 
    <form name="form1" method="Get" action="/in">
  
	<select id="label" name="label" multiple class="form-control" >
	<option value="미용">미용</option>
	<option value="주차">주차</option>
	<option value="특별">특별</option>
	<option value="24시">24시</option>
	
</select>

        <select name="searchOption">
            
            <option value="all">all</option>
            <option value="name" >이름</option>
            <option value="address">주소</option>
            <option value="info" >내용</option>
        </select>
        <input name="keyword" value="${map.keyword}">
        <input type="submit" value="검색">
        
    </form>
   
     <table border="1" width="600px">
        <tr>
            <th>번호</th>
            <th>병원이름</th>
            <th>주소</th>
            <th>정보</th>
            
        </tr>
        
        <c:forEach var="row" items="${map.list}">
        <tr>
            <td>${row.hospitalId}</td>
            <td>${row.name}</td>
            <td>${row.address}</td>
            <td>${row.info}</td>
        </tr>    
        </c:forEach>
</table>
     

 <div class="dd" id="dd">
            
        </div>









<script type="text/javascript" src="/webjars/js/backgroundTransition.js"></script>
<script>
$(document).ready(function(){
	  $('.backgroundTransition').backgroundTransition({
		  backgrounds:[
			  { src: 'http://www.blueb.co.kr/SRC2/_image/01.jpg' },
			  { src: 'http://www.blueb.co.kr/SRC2/_image/02.jpg' },
			  { src: 'http://www.blueb.co.kr/SRC2/_image/03.jpg' },
			  { src: 'http://www.blueb.co.kr/SRC2/_image/04.jpg' },
			  { src: 'http://www.blueb.co.kr/SRC2/_image/05.jpg' },
			  { src: 'http://www.blueb.co.kr/SRC2/_image/06.jpg' },
			  { src: 'http://www.blueb.co.kr/SRC2/_image/07.jpg' }
		  ],
		  transitionDelay: 4,
		  animationSpeed: 800
	  });
});

$('select[multiple]').multiselect({
// text to use in dummy input
placeholder   : 'select',    

// how many columns should be use to show options
columns       : 3,  

// include option search box   
search        : false,    

// search filter options
});


var header = document.getElementsByTagName('header')[0];
window.addEventListener('scroll', function(){
    //DOM에 있는 첫번째 div를 선택하고 그 div의 상대적 y값을 계산
    //offsetTop은 해당 태그를 감싸는 상위태그중에 static이 아닌 태그를 기준으로 좌표를 계산
    var divTag= document.getElementsById('dd')[0];
    var divTop = divTag.offsetTop;
    //현재 스크롤 위치 계산 
    var scrollTop = document.documentElement.scrollTop;
    //현재 스크롤바의 좌표값이 div가 위치한 곳보다 50 더 밑으로 내려간 곳보다 더 클때
    if(scrollTop>divTop+50){
        header.classList.add('fixed');
    }else{//스크롤바가 지정한곳 보다 위로 움직였을 경우 
        header.classList.remove('fixed');
    }
});

$(document).on('scroll',function(){
    var divTag = $('div');
    var divTop = divTag.offset().top;
    var scrollTop = $(document).scrollTop();
    if(scrollTop>divTop+100){
        //만약에 header에 fixed 클래스가 없을경우 if문 실행.
        //클래스가 있는데도 실행이 되면 계속 헤더가 사라지고 페이딩이 되어버리기 때문에 불편합니다
        if(!$('header').hasClass('fixed')){
            $('header').hide().fadeIn(200,function(){
                $(this).addClass('fixed');
            });
        }
    }else{
        //반면에 이건 header가 fixed 클래스를 가지고 있을때에만 실행
        //fixed값이 없는데도 실행이 된다면 스크롤바가 윗부분에 있을때 계속 페이드아웃이 됩니다
        if($('header').hasClass('fixed')){
            $('header').fadeOut(200,function(){
                $('header').removeClass('fixed');
            });
            //ES6의 promise 함수를 이용합니다.promise란 이 코드는 저 위의 코드의 실행이 끝났을때 실행이 되게 하는 것입니다. 
            $('header').promise().done(function(){
                $(this).fadeIn();
            });
        }
    }
});
</script>
<script src="/webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>