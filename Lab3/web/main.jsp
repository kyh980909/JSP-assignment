<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 09:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setCharacterEncoding("UTF-8");
  String pagefile=request.getParameter("pagefile");
  if(pagefile==null) {  // pagefile이 null이면 intro출력
    pagefile = "intro";
  }
%>
<jsp:forward page="template.jsp">
  <jsp:param name="pagefile" value="<%=pagefile%>"/>
</jsp:forward>