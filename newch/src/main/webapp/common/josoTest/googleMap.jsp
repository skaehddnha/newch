<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%
   List<Map<String,Object>> list = (List<Map<String,Object>>)request.getAttribute("detailListInfo");
   String fullAddress = (String)list.get(0).get("ADDR");
   String api_key = "AIzaSyC6l3ZdcUFFsxU8cYpMmt_E3llzI_esGRc";  // ���۸� API ����Ű
   StringTokenizer st = new StringTokenizer(fullAddress,",");
   String address = st.nextToken(); // �ּ�
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>���ּ��� �ص帳�ϴ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;region=GB&amp;key=<%=api_key%>" type="text/javascript"></script>

<script language="JavaScript">

var map = null;
var geocoder = null;

// ���۸�
function Gmap_load(){

   if(GBrowserIsCompatible()){

 

    // ������ ǥ���� ������ �����Ͽ� map �ν��Ͻ� ����.
    map = new GMap2(document.getElementById("map_canvas"));
    map.setCenter(new GLatLng(37.478204,126.881629),13); //�⺻ center value.

    map.setUIToDefault();   // ���α��. ����,����,���� ���� 
    
    geocoder = new GClientGeocoder(); //google�� ���������� ��üȭ
    showAddress("<%=address%>");

   }

  }

  // �ּҸ� ��ǥ�� ��ȯ
  function showAddress(address){

   if(geocoder){
    geocoder.getLatLng ( address,
     function(point){
      if(!point){
       alert("'"+address + "' �� ã�� ���Ͽ����ϴ�.");
      }else {
       map.setCenter(point, 16);
       var marker = new GMarker(point);
       map.addOverlay(marker); // ������ǥ�� ǥ���� ��ũ
       //marker.openInfoWindowHtml(address); // ��ǳ��ȿ��
      }
     }
    );
   }
  }

  </script>
 </head>

 <body onload="Gmap_load()" onunload="GUnload()">    
     <div id="map_canvas" style="width:100%; height:100%;">
     <!-- �������� ���� -->
    </div>

 </body>
</html>