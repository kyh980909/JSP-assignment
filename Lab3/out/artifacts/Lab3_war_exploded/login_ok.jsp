<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<% String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    if (id.equals("test") && pwd.equals("1234"))
        session.setAttribute("id",id);
    response.sendRedirect("main.jsp");
%>