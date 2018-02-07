<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%
   List<Map<String,Object>> list = (List<Map<String,Object>>)request.getAttribute("detailListInfo");
   String fullAddress = (String)list.get(0).get("ADDR");
   String api_key = "AIzaSyC6l3ZdcUFFsxU8cYpMmt_E3llzI_esGRc";  // 구글맵 API 인증키
   StringTokenizer st = new StringTokenizer(fullAddress,",");
   String address = st.nextToken(); // 주소
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>해주세요 해드립니다</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;region=GB&amp;key=<%=api_key%>" type="text/javascript"></script>

<script language="JavaScript">

var map = null;
var geocoder = null;

// 구글맵
function Gmap_load(){

   if(GBrowserIsCompatible()){

 

    // 지도를 표시할 영영을 지정하여 map 인스턴스 생성.
    map = new GMap2(document.getElementById("map_canvas"));
    map.setCenter(new GLatLng(37.478204,126.881629),13); //기본 center value.

    map.setUIToDefault();   // 줌인기능. 지도,위성,지형 노출 
    
    geocoder = new GClientGeocoder(); //google의 지리정보를 객체화
    showAddress("<%=address%>");

   }

  }

  // 주소를 좌표로 변환
  function showAddress(address){

   if(geocoder){
    geocoder.getLatLng ( address,
     function(point){
      if(!point){
       alert("'"+address + "' 를 찾지 못하였습니다.");
      }else {
       map.setCenter(point, 16);
       var marker = new GMarker(point);
       map.addOverlay(marker); // 지도좌표에 표시할 마크
       //marker.openInfoWindowHtml(address); // 말풍선효과
      }
     }
    );
   }
  }

  </script>
 </head>

 <body onload="Gmap_load()" onunload="GUnload()">    
     <div id="map_canvas" style="width:100%; height:100%;">
     <!-- 구글지도 영역 -->
    </div>

 </body>
</html>