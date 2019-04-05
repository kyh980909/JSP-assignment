<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<a href="main.jsp">홈</a> |
<%if (session.getAttribute("id") == null) { %>
    <a href="./main.jsp?pagefile=list"> 개설강좌 </a> <% } else {%>
    <a href="./main.jsp?pagefile=list"> 수강신청 </a> <% } %>