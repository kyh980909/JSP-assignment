<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1_result</title>
</head>
<body>
<%
	if(request.getParameter("select") == null)
		out.print("라디오 버튼을 선택하지 않았습니다.");
	else {
		out.print("이름 : "+request.getParameter("name")+"<br>");
		out.print("학번 : "+request.getParameter("stu_num")+"<br>");
		String input = request.getParameter("input");
		int count = Integer.parseInt(request.getParameter("count"));
		int i = 0;
		if(request.getParameter("select").equals("while")) {
			out.print(request.getParameter("select")+"문선택!<br>");
			while(i < count)
			{
				out.print(input+"<br>");
				i++;
			}
		} else {
			out.print(request.getParameter("select")+"문선택!<br>");
			for(i = 0; i < count; i++)
				out.print(input+"<br>");
		}
	}
%>
</body>
</html>