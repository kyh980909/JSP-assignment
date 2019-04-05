<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
* 좋아하는 계절은?
<br>
<form action="includeResult.jsp" method="post">
	<input type="radio" name="season" value="spring">봄
	<input type="radio" name="season" value="summer">여름 
	<input type="radio" name="season" value="fall">가을
	<input type="radio"	name="season" value="winter">겨울
	<input type="submit" value="결과보기">
</form>