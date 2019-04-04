<%--
  Created by IntelliJ IDEA.
  User: 201704005 김용호
  Date: 2019-04-03
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    function check() {
        var isChk = false;
        var arr_subject = document.getElementsByName("chk_subject");
        for(var i=0;i<arr_subject.length;i++){
            if(arr_subject[i].checked === true) {  // arr_subject 배열 중 하나라도 참이면 isChk에 참을 대
                isChk = true;
                break;
            }
        }

        if(!isChk){
            alert("하나 이상은 체크해주세");
            return false;
        } else
            return true;
    }
</script>


<%if (session.getAttribute("id") == null) { %>  <!-- 로그인 세션이 없을 때 -->
<h2>개설강좌</h2>
<table width="900" border="1">
    <tr>
        <th>강좌코드</th>
        <th>과목명</th>
        <th>학년</th>
        <th>학점</th>
    </tr>
    <tr>
        <td>IC015-A</td>
        <td>웹 시스템 설계 및 개발</td>
        <td>3</td>
        <td>3</td>
    </tr>
    <tr>
        <td>IC147-A</td>
        <td>자바기반응용프로그래밍</td>
        <td>2</td>
        <td>3</td>
    </tr>
    <tr>
        <td>IC136-A</td>
        <td>컴퓨터프로그래밍기초</td>
        <td>1</td>
        <td>3</td>
    </tr>
    <tr>
        <td>IC066-A</td>
        <td>운영체제</td>
        <td>3</td>
        <td>3</td>
    </tr>
</table>
<% } else { %> <!-- 로그인 세션이 있을 때 -->
<h2>수강신청하기</h2>
<form action="./main.jsp?pagefile=apply" method="post" onsubmit="return check()">
    <table width="900" border="1" id="table">
        <tr>
            <th>강좌코드</th>
            <th>과목명</th>
            <th>학년</th>
            <th>학점</th>
            <th>선택</th>
        </tr>
        <tr>
            <td>IC015-A</td>
            <td>웹 시스템 설계 및 개발</td>
            <td>3</td>
            <td>3</td>
            <td><input type="checkbox" name="chk_subject" value="1"></td>
        </tr>
        <tr>
            <td>IC147-A</td>
            <td>자바기반응용프로그래밍</td>
            <td>2</td>
            <td>3</td>
            <td><input type="checkbox" name="chk_subject" value="2"></td>
        </tr>
        <tr>
            <td>IC136-A</td>
            <td>컴퓨터프로그래밍기초</td>
            <td>1</td>
            <td>3</td>
            <td><input type="checkbox" name="chk_subject" value="3"></td>
        </tr>
        <tr>
            <td>IC066-A</td>
            <td>운영체제</td>
            <td>3</td>
            <td>3</td>
            <td><input type="checkbox" name="chk_subject" value="4"></td>
        </tr>
    </table>
    <br>
    <div align="right"> <!-- 버튼 오른쪽으로 정렬 -->
        <input type="submit" value="수강신청" >
    </div>
</form>
<%}%>