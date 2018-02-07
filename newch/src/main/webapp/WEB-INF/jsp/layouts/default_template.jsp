<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:insertAttribute name="title" /></title>
	
	<!-- 공통 스타일 -->
	<link rel="stylesheet" type="text/css" href="/css/default.css">
	<link rel="stylesheet" type="text/css" href="/css/common.css">
	<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css">
	
	<!-- 공통 스크립트 -->
	<script type="text/javascript" src="/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="/js/jquery-ui-1.12.1.js"></script>
	
	<script>
	$(function(){
	    $("#menuArea").hover(function(){
	        $(this).find("span").show();
	    }, function(){
	        $(this).find("span").hide();
	    });
	});
	</script>
	
</head>
<body class="choo">
	<!-- alert 메세지가 있으면 뿌려준다. -->
	<c:if test="${not empty message}">
	<script type="text/javascript">
		alert('${message}');
	</script>
	</c:if>
	
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>
	
	<!-- Body -->
	<div class="body">
		<tiles:insertAttribute name="body" />
	</div>
		
	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>