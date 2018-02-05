<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<c:forEach items="${list}" var="obj">
		<div>아이디 : ${obj.id}</div>
		<div>비번 : ${obj.password}</div>
	</c:forEach>
</div>
