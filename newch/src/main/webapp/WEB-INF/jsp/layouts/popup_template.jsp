<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:insertAttribute name="title" /></title>
</head>
<body class="chuBody">
	<!-- alert 메세지가 있으면 뿌려준다. -->
	<c:if test="${not empty message}">
	<script type="text/javascript">
		alert('${message}');
	</script>
	</c:if>
	<br/><br/>
	<!-- Body -->
	<div class="body">
		<tiles:insertAttribute name="body" />
	</div>
	
</body>
</html>