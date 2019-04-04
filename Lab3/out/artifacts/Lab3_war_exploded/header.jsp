<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%if(session.getAttribute("id")==null){ %>
<form action="login_ok.jsp" method="post">
    아이디 <input type= "text" name="id"> 비밀번호 <input type="password" name="pwd">
    <input type="submit" value="로그인">
    <input type="button" value="회원가입" onclick="location.href = './main.jsp?pagefile=join'">
</form>
<% }else {
%>
<form action="logout.jsp" method="post" >
    <%= session.getAttribute("id") %>님 로그인하셨습니다.
    <input type="submit" value="로그아웃">
</form>
<%}%>