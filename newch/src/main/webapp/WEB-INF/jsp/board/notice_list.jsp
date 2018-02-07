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
	
}
.paging ul{
	
}
.paging ul li{
	
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
		<a href="/board/notice/showWrite.do">
			<img alt="글쓰기" src="/img/write_btn.jpg" border="0">
		</a>
	</div>
</div>
<div class="paging">	 
	<ul>
		<li>맨처음</li>
		<li>이전</li>
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>다음</li>
		<li>마지막</li>
	</ul>
</div>