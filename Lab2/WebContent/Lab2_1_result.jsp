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
		out.print("���� ��ư�� �������� �ʾҽ��ϴ�.");
	else {
		out.print("�̸� : "+request.getParameter("name")+"<br>");
		out.print("�й� : "+request.getParameter("stu_num")+"<br>");
		String input = request.getParameter("input");
		int count = Integer.parseInt(request.getParameter("count"));
		int i = 0;
		if(request.getParameter("select").equals("while")) {
			out.print(request.getParameter("select")+"������!<br>");
			while(i < count)
			{
				out.print(input+"<br>");
				i++;
			}
		} else {
			out.print(request.getParameter("select")+"������!<br>");
			for(i = 0; i < count; i++)
				out.print(input+"<br>");
		}
	}
%>
</body>
</html>