<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<style>
.choo .body .board{
	width: 100%;
	text-align: center;
}
.choo .body .board table{
	display: table;
	width: 100%;
}
.choo .body .board table th{
	border-top: 5px solid #004479;
	border-bottom: 3px solid #EAEAEA;
}
.choo .body .board table td{
	background-color: #FFFDFF;
}

.paging{
	text-align: center;
	margin-top: 5px;
	margin-bottom: 5px;
}
.paging ul{
	display: inline-block;
}
.paging ul li{
	float: left;
	padding: 5px;
	border: 1px solid #EAEAEA;
	margin-left: 1px;
	margin-right: 1px;
	/* background-color: #004479; */
	color: #000000;
	width: 35px;
	height: 35px;
	overflow: hidden;
}
.btn_area{
	text-align: right;
	margin-top: 10px;
	margin-bottom: 10px;
	
}
.btn_area .btn{
	border: 1px solid #EAEAEA;
	color: #000000;
	width: 35px;
	height: 35px;
	overflow: hidden;
}
</style>
<div class="board">
	<div class="bar_menu">공 지 사 항</div>
	<div>
		<table>
			<colgroup>
				<col width="10%">
				<col width="*">
				<col width="20%">
				<col width="20%">
				<col width="20%">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td class="title">
						<a href="javascript:;">공지사항</a>
						<img width="13" height="12" class="pic" alt="첨부이미지" src="/img/ic_pic.gif">
						<font color="red">[1]</font>
					</td>
					<td><a href="javascript:;">남동우</a></td>
					<td>2018.02.12</td>
					<td>2018.02.12</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="btn_area">
		<a href="" class="btn">글쓰기</a>
	</div>
</div>
<div class="paging">	 
	<ul>
		<li><a href="">F</a></li>
		<li><a href="">P</a></li>
		<li><a href="">1</a></li>
		<li><a href="">2</a></li>
		<li><a href="">3</a></li>
		<li><a href="">4</a></li>
		<li><a href="">5</a></li>
		<li><a href="">N</a></li>
		<li><a href="">L</a></li>
	</ul>
</div>