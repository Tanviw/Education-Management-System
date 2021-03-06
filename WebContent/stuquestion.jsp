<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/head.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>学生提问</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">


</head>
<body>

<div class="col-md-12 column">
    <div class="headpanel">
        <ul class="nav nav-pills">

            <li><a href="student.jsp">网上选课</a></li>
            <li><a href="stucourse.jsp">课表查询</a></li>
            <li><a href="stugrade.jsp">成绩查询</a></li>
            <li><a href="stucomment.jsp">教师评价</a></li>
            <li class="active"><a href="#">学生提问</a>
            <c:if test="${sessionScope.uncheckedAnsNum>0}">
            <span id='teacdy'>${uncheckedAnsNum}</span>
            </c:if>
            </li>

        </ul>
    </div>
<div class="main-content">
<hr/>

		<div class="col-md-4 column corslist">
		<h3>课程列表</h3>
		<ul>
<c:forEach var="course" items="${sessionScope.selectedCorsList}">
			<li data="${course.teacherCourseId}" onclick="showQuestion(this)">${course.courseName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${course.teacherName}</span></li>
        	</c:forEach>
</ul>
		
		</div>
		<div class="col-md-8 column">
		
		<div class="tabbable" id="tabsquestion">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-ask" data-toggle="tab">提问</a>
					</li>
					<li>
						 <a href="#panel-solved" data-toggle="tab">已回答</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-ask">
					<div>
					<ul id="questionList">
					
					</ul>
					<div id="corsTeac"></div>
					</div>
						
					</div>
					<div class="tab-pane" id="panel-solved">
						<ul id="answerList">
					
						</ul>
					</div>
				</div>
			</div>
		
		</div>
	



</div>



</div>




<%@include file="/footer.jsp" %>

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/student.js"></script>

</body>
</html>