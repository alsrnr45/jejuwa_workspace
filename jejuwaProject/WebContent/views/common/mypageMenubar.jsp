<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    
    <style>
    	
        div{box-sizing: border-box;}
		ul, li, em{list-style: none;}
		ul{
		    display: block;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding-inline-start: 40px;
		    }
		li{display: list-item;}
		*{box-sizing: border-box;}
		
		
		.myPageAll a{text-decoration: none; margin: -30px;}
		.myPageAll ul {margin-top: -5px;}
		.myPageAll ul li{margin-top: 10px;}
		.mypagewrap{width: 1000px; height:1200px;  margin: auto; margin-top: 50px;}
		
		.mypagewrap>div{width: 100%;}
		.mypagecontent{height: 100%;}
		
		
		.mypagecontent>div{height: 100%; float: left;}
		.mycontent_1{width: 25%;}
		.content_2{width: 75%;}
		
		#Menu a{
		    padding-top: 10px;
		    font-size: 20px;
		    line-height: 24px;
		    letter-spacing: -1px;
		    color: black;
		    margin-left: -2px;
		    font-weight: bold;
		    }
		.mycontent_1 li a{
		    font-size: 13px;
		    color: black;
		    letter-spacing: -0.8px;
		    }
		.mycontent_1 li a:hover, #Menu a:hover{color: orange;}
		
		/*.myPageAll{border: 1px solid red; position: relative; top: 100px;}*/
		#myPageHead{margin: auto; margin-left: -20px; position: relative; top: 10px;}
			
		.myPageBar{
            margin: auto; 
            margin-left: 10px; 
            border: 1px solid gray; 
            width: 170px; 
            height: 550px; 
            position: absolute;
            top: 450px;
        }
		
		.userBox{
		    font-size: 11px;
		    line-height: 20px;
		    position: relative;
		    height: 51px;
		    padding: 8px 0 0 30px;
		    background-color: orange;
		    margin-top: 20px;
		    }
		
		
		#userIcon{width: 40px;}    
		
		.welcome{
		    font-size: 15px;
		    padding-left: 60px;
		    position: absolute;
		    font-weight: bold;
    
}
    </style>

</head>
<body>

	<%@ include file = "../common/loginUserMenubar.jsp" %>
	
	 <div class="mypagewrap">       
        <div class="mypagecontent" >
            <div class="mycontent_1">
                <div class="myPageAll">
                    <h3 align="center" style="margin-top: 30px;">
                        <a href="" style="color: black; font-weight: bold;" id="myPageHead">마이페이지</a>
                    </h3>
                    <br><br><br>
                    <ul class="myPageBar">
                        <li>
                            <h2 id="Menu"><a>예약정보</a></h2>
                            <ul>
                                <li class="subMenu">
                                    <a href="<%=contextPath%>/list.mpr">예약조회</a>
                                </li>
                                <li class="subMenu">
                                    <a href="<%=contextPath%>/list.mpc">취소내역</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <h2 id="Menu"><a>구매혜택</a></h2>
                            <ul>
                                <li class="subMenu">
                                    <a href="<%=contextPath%>/list.mycpn?currentPage=1">쿠폰조회</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <h2 id="Menu"><a href="<%=contextPath%>/list.mpl">좋아요</a></h2>
                        </li>

                        <li>
                            <h2 id="Menu"><a>활동내역</a></h2>
                            <ul>
                                <li class="subMenu">
                                    <a href="">1:1 문의내역</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <h2 id="Menu"><a>회원정보</a></h2>
                            <ul>
                                <li class="subMenu">
                                    <a href="<%=contextPath%>/myInfo.mp">개인정보수정</a>
                                </li>
                                <li class="subMenu">
                                    <a href="<%=contextPath%>/withdrawalForm.mp">회원탈퇴</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                        
                </div>
            </div>
			
			<br><br>
            <!-- 강동원님 반갑습니다 영역 -->
            <div class="content_2">
                <div class="userBox">
                    <div class="userimg">
                        <span></span>
                        <img src="<%=request.getContextPath() %>/resources/images/user.png" alt="user" id="userIcon">
                    </div>
                    <p class="welcome" style="position: absolute; top: 12px;">
                        <%=loginUser.getMemName() %>님 반갑습니다.
                    </p>   
                </div>
        