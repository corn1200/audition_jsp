<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/css.css">
<body>
	<%@ include file="static/header.jsp" %>
	<%@ include file="static/nav.jsp" %>
	<section>
	<%
		String section = request.getParameter("section") != null ? request.getParameter("section") : "";
		switch(section) {
			case "insert_audition" :
				%><%@ include file="page/insert_audition.jsp" %><%
				break;
			case "lookup_participant_list" : 
				%><%@ include file="page/lookup_participant_list.jsp" %><%
				break;
			case "lookup_mento_grade" : 
				%><%@ include file="page/lookup_mento_grade.jsp" %><%
				break;
			case "lookup_participant_rank" : 
				%><%@ include file="page/lookup_participant_rank.jsp" %><%
				break;
			default :
				%><%@ include file="static/index.jsp" %><%
		}
	%>
	</section>
	<%@ include file="static/footer.jsp" %>
</body>
</html>