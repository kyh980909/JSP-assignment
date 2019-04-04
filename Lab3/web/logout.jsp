<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    session.invalidate();
    response.sendRedirect("main.jsp");
%>