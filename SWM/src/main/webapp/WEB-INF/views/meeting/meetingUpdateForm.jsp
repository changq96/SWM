<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/meeting.css"> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css"> --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/meeting/main.css">
<link rel="stylesheet" type="text/css" href="../../../resources/css/meeting/meeting.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/meeting/bccbe8508a4ff8396565.css" as="style">

<link data-vue-meta="ssr" rel="preload" href="${pageContext.request.contextPath}/resources/js/meeting/348d9764bf4bb1ed9da9.js" as="script">
</head>
<body>

<c:import url="../common/header.jsp" />
<c:import url="./meetingSubject.jsp"/>

<form data-v-5ccf00ea class="container" name="container" action="/meeting/meetingUpdate" method="post"> 
<div id="app">
<div data-v-5ccf00ea>

	<input type="hidden" name="meeting_no" value="${m.meeting_no }"/>
	<div data-v-5ccf00ea class="section" name="section">
		<h2 data-v-5ccf00ea >모집 대상</h2>
		<p data-v-5ccf00ea class="description">같은 또래의 사람들을 모을 수 있어욤 !</p>
			
		<c:choose>
			<c:when test="${m.meeting_age == '10대'}">
				<label data-v-5ccf00ea class="radio" name="meeting_age">
	    			<input type="radio" class="radio" id="teen" name="meeting_age" value="10대" checked>10대
	   			</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="twenty" name="meeting_age" value="20대">20대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="thirty" name="meeting_age" value="30대">30대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="nothing" name="meeting_age" value="상관없음">상관없음
				</label>
			</c:when>
			
			<c:when test="${m.meeting_age == '20대'}">
				<label data-v-5ccf00ea class="radio" name="meeting_age">
	    			<input type="radio" class="radio" id="teen" name="meeting_age" value="10대" >10대
	   			</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="twenty" name="meeting_age" value="20대" checked>20대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="thirty" name="meeting_age" value="30대">30대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="nothing" name="meeting_age" value="상관없음">상관없음
				</label>
			</c:when>
			
			<c:when test="${m.meeting_age == '30대'}">
				<label data-v-5ccf00ea class="radio" name="meeting_age">
	    			<input type="radio" class="radio" id="teen" name="meeting_age" value="10대" >10대
	   			</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="twenty" name="meeting_age" value="20대" >20대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="thirty" name="meeting_age" value="30대" checked>30대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="nothing" name="meeting_age" value="상관없음">상관없음
				</label>
			</c:when>
			<c:otherwise>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
	    			<input type="radio" class="radio" id="teen" name="meeting_age" value="10대" >10대
	   			</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="twenty" name="meeting_age" value="20대" >20대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="thirty" name="meeting_age" value="30대" checked>30대
				</label>
				<label data-v-5ccf00ea class="radio" name="meeting_age">
					<input type="radio" class="radio" id="nothing" name="meeting_age" value="상관없음" checked>상관없음
				</label>
			</c:otherwise>
		</c:choose>
	</div>
	
	<div data-v-5ccf00ea class="section" >
		<h2 data-v-5ccf00ea>분야</h2>
		<p data-v-5ccf00ea class="select unselected">분야 선택 : 
		 <select id="subject" data-v-5ccf00ea class="select unselected" name="meeting_subject" >
		 	<option value="${m.meeting_subject}">${m.meeting_subject}</option>
			<option value="취업">취업</option>
			<option value="코딩">코딩</option>
			<option value="토익">토익</option>
		 </select>
		</p>
	</div>
	
	<div data-v-5ccf00ea class="section">
		<h2 data-v-5ccf00ea>지역</h2>
		<p data-v-5ccf00ea class="select selected">서울 : 
		 <select id="location" data-v-5ccf00ea class="select unselected" name="meeting_address" >
		 	<option value="${m.meeting_address }">${m.meeting_address }</option>
			<option value="강남구">강남구</option>
			<option value="강서구">강서구</option>
			<option value="강동구">강동구</option>
		 </select>
		</p>
	</div>
	
	<div data-v-5ccf00ea class="section">
		<h2 data-v-5ccf00ea>모집 인원</h2>
		<!-- <label  data-v-5ccf00ea class="checkbox unchecked">제한 없음</label> -->
		<div data-v-5ccf00ea class="number"  >
		<span data-v-5ccf00ea class="value min">2명</span>
		<%-- <canvas data-v-5ccf00ea class="slider" id="slider" width="405" height="60" style="width: 324px; height: 48px; margin: 0px -7px;"></canvas> --%>

		<input data-v-5ccf00ea type="range" class="slider" id="myRange" name="meeting_limit"
				min="0" max="10" step="1" value="${m.meeting_limit}" style="width : 300px;"/>

		<span data-v-5ccf00ea class="value max" id="limit" name="meeting_limit"></span>
		</div>
	</div>
	
	<p data-v-5ccf00ea class="title" >
		<input data-v-5ccf00ea type="text" id="meetingTitle" value="${m.meeting_title}" name="meeting_title">
	</p>
	
	<p data-v-5ccf00ea class="text">
		<textarea data-v-5ccf00ea id="meetingContent" name="meeting_content" >${m.meeting_content}</textarea>
	</p>	
	
	<div data-v-5ccf00ea class="submit">
		<input data-v-5ccf00ea type="submit" value="글쓰기">
	</div>

</div>
</div>
</form>
<script>

$(document).ready(function () {
	$('#myRange').on('change', function () {
		var value = $(this).val();
		$('#limit').text(value + '명');
	});

});
</script>
</body>
</html>