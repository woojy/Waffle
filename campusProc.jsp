<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.campus{
	background-color: white;
	text-align: center;
	height:600px;
	line-height: 50px;
}
h2{
	text-align:center;
	color:orange;
	
}
</style>
</head>
<body>
<%
 	String dirPath = application.getRealPath("/WEB-INF/Text");
	//out.println(dirpath);
	File dir = new File(dirPath);
	String filenames[] = dir.list();
	
	/*	for(int i=0;i<filenames.length;i++){
		out.println(filenames[i]);
		out.println("<br>");
	} */
%>

<h2>캠퍼스 안내</h2>
<div class="campus">
<%
	for(String filename : filenames ){%>
		<a href="campusReader.jsp?FILE_NAME=<%=filename%>"><%=filename %></a>
		<br>
<%  }
%>	
</div>
</body>
</html>
