<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberJoinForm.jsp</title>
<link rel="stylesheet" type="text/css" href="resources/css/board.css" />
<script src="resources/script/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
<h1>사용자 등록</h1>
<form name="frm" method="post" action="memberJoin">
<table>
	<tr><th>아이디</th><td><input type="text" name="id" size="20"> *
		<input type="button" value="중복체크" onClick="idCheck();">
		<input type="hidden" name="re_id"></td></tr>
	<tr><th>암호</th><td><input type="password" name="pw" size="20"> * </td></tr>
	<tr><th>확인</th><td><input type="password" name="pw_check" size="20"> *</td></tr>
	<tr><th>이름</th><td><input type="text" size="20" name="name"> *</td></tr>
	<tr><th>전화번호</th><td><input type="text" size="5" name="phone1">-
		<input type="text" size="7" name="phone2">-
		<input type="text" size="7" name="phone3"></td></tr>
	<tr><th>이메일</th><td><input type="text" name="email" size="20"></td></tr>
</table><br><br>
<input type="submit" value="등록" onClick="return joinCheck()">
	<input type="reset" value="다시 작성">
	<input type="button" value="로그인페이지로" onClick="history.go(-1);">
	<input type="button" value="로그인페이지로" onClick="location.href='/spboard/'">
</form>
</div>
</body>
</html>