<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function goPopup(){
	    // 주소검색을 수행할 팝업 페이지를 호출합니다.
	    // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	    var pop = window.open("./jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	    
	    // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	     //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	 }
</script>
</head>
<body>
	<form id="f_memberInsert" name="f_memberInsert">
	<input type="text" style="width:350px;" id="mem_addr"  name="mem_addr" > 
	<!-- 좌표값 입력칸 시작 -->
	      <input type="hidden" id="mem_entx" name="mem_entx">
	      <input type="hidden" id="mem_enty" name="mem_enty">
	<!-- 좌표값 입력칸 끝 -->
	<input type="button"  value="주소검색" onClick="goPopup()">
	</form>
</body>
</html>