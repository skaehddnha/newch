<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function goPopup(){
	    // �ּҰ˻��� ������ �˾� �������� ȣ���մϴ�.
	    // ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
	    var pop = window.open("./jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	    
	    // ����� ���� ���, ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
	     //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	 }
</script>
</head>
<body>
	<form id="f_memberInsert" name="f_memberInsert">
	<input type="text" style="width:350px;" id="mem_addr"  name="mem_addr" > 
	<!-- ��ǥ�� �Է�ĭ ���� -->
	      <input type="hidden" id="mem_entx" name="mem_entx">
	      <input type="hidden" id="mem_enty" name="mem_enty">
	<!-- ��ǥ�� �Է�ĭ �� -->
	<input type="button"  value="�ּҰ˻�" onClick="goPopup()">
	</form>
</body>
</html>