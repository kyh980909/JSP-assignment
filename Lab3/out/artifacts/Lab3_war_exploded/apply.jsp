<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String[] value = request.getParameterValues("chk_subject");
%>
<h2>수강신청</h2>
<table border="1">
    <tr>
        <th>번호</th>
        <th>선택한 과목</th>
        <th>학점</th>
        <th>학년</th>
    </tr>
    <%
        int i = 0;
        for (String val: value) {   // foreach문으로 value문자열 배열에서 값 하나 씩 꺼내 오기
            i++;
            switch (val) {  // 체크박스에서 선택된 값만 테이블 태그를 사용하여 출력
                case "1":
                    out.print("<tr>");
                    out.print("<td>"+i+"</td>");
                    out.print("<td>[웹 시스템 설계 및 개발]</td>");
                    out.print("<td>3학점</td>");
                    out.print("<td>3학년</td>");
                    out.print("</tr>");
                    break;
                case "2":
                    out.print("<tr>");
                    out.print("<td>"+i+"</td>");
                    out.print("<td>[자바기반응용프로그래밍]</td>");
                    out.print("<td>3학점</td>");
                    out.print("<td>2학년</td>");
                    out.print("</tr>");
                    break;
                case "3":
                    out.print("<tr>");
                    out.print("<td>"+i+"</td>");
                    out.print("<td>[컴퓨터프로그래밍기초]</td>");
                    out.print("<td>3학점</td>");
                    out.print("<td>1학년</td>");
                    out.print("</tr>");
                    break;
                case "4":
                    out.print("<tr>");
                    out.print("<td>"+i+"</td>");
                    out.print("<td>[운영체제]</td>");
                    out.print("<td>3학점</td>");
                    out.print("<td>3학년</td>");
                    out.print("</tr>");
                    break;
            }
        }
    %>
    <tr align="center">
        <td colspan="3"><b>총 학점</b></td>
        <td style="color: red; "><%=i * 3%></td>    <!-- 학점 계산해서 출력 -->
    </tr>
</table>
<input type="button" value="신청" onclick="location.href = './main.jsp?pagefile=result'">