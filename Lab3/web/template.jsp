<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String pagefile=request.getParameter("pagefile");
%>

<html>
<head>
    <title>Lab3</title>
    <meta charset="utf-8">
    <style>
        #container {
            width: 940px;
            margin: 0px auto;
            padding: 20px;
            border: 1px solid #bcbcbc;
        }

        #header {
            padding: 20px;
            margin-bottom: 5px;
            width: 900px;
            height: 10px;
            border: 1px solid #bcbcbc;
            float: right;
            text-align: right;
        }

        #headermenu {
            padding: 20px;
            margin-bottom: 5px;
            width: 900px;
            height: 50px;
            float: left;
            border: 1px solid #bcbcbc;
        }

        #content {
            width: 900px;
            padding: 20px;
            margin-bottom: 20px;
            float: right;
            border: 1px solid #bcbcbc;
        }

        #footer {
            clear: both;
            padding: 20px;
            border: 1px solid #bcbcbc;
        }
    </style>
</head>
<body>
<div id="container">
    <!-- header 시작  -->
    <div id="header">
        <jsp:include page="header.jsp"/>
    </div>
    <div id="headermenu">
        <jsp:include page="menu.jsp"/>
    </div>

    <!-- header 끝  -->
    <!--  content 시작  -->
    <div id="content">
        <jsp:include page='<%=pagefile+".jsp"%>'/>
    </div>
    <!--  content 끝  -->

    <!--  footer 시작   -->
    <div id="footer">
        <jsp:include page="footer.jsp"/>
    </div>
    <!--  footer 끝  -->

</div>
</body>
</html>