<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="header_left"><img src="/img/menu/chulogoL.png" alt="" /></div>
<div class="header_right">
	<div class="user_info">
		<ul>
			<li><input type="text" placeholder="ID" /></li>
			<li><input type="password" placeholder="PASSWORD" /></li>
			<li><a href><img src="/img/menu/memberState.png" alt="회원" />김준성</a></li>
			<li><a href><img src="/img/menu/requestTeam.png" alt="스카웃" />0</a></li>
			<li><a href><img src="/img/menu/letter2.png" />0</a></li>
			<li><a href><img src="/img/menu/chulogin.png" alt="로그인" /></a></li>
			<li><a href="/member/registerMember.do"><img src="/img/menu/chuJoin.png" alt="회원가입" /></a></li>
		</ul>
	</div>
	<div class="menu" id="menuArea">
		<img src="/img/menu/main_menu.png" />
		<span style="display:none;">
		    <ul>
				<li>
					<h1>HOME</h1>
					<a href="javascript:board('introChu')">츄리닝 소개</a><br>
					<a href="javascript:board('howUse')">사이트 이용방법</a><br>
					<a href="javascript:cafe('home')">까페 홈</a><br>
					<a href="javascript:cafe('my')">내 팀까페</a><br>
					<a href="javascript:cafe('home')">팀 만들기</a><br>
					<a href="javascript:cafe('home')">팀 가입하기</a>
				</li>
				<li>
					<h1>게시판</h1>
					<a href="javascript:board('notice')">공지사항</a><br>
					<a href="javascript:board('qna')">Q&A</a><br>
					<a href="javascript:board('free')">자유게시판</a><br>
					<a href="javascript:board('groundInfo')">운동장 정보</a>
				</li>
				<li>
					<h1>게임한판</h1>
					<a href="javascript:jumpball('matchFree')">번개모집</a><br>
					<a href="javascript:jumpball('requestMatch')">경기신청</a><br>
				</li>
				<li>
					<h1>기록보기</h1>
					<a href="javascript:record('myRecord')">내 기록</a><br>
					<a href="javascript:record('myTeamRecord')">나의팀 기록</a><br>
					<a href="javascript:record('compareRecord')">기록 비교하기</a><br>
					<a href="javascript:record('playerRanking')">선수랭킹보기</a><br>
					<a href="javascript:record('teamRanking')">팀 랭킹보기</a>
				</li>
				<li>
					<h1>둘러보기</h1>
					<a href="javascript:search('searchMember')">회원 둘러보기</a><br>
					<a href="javascript:cafe('home')">팀 둘러보기</a><br><br><br>
				</li>
			</ul>
		</span>
	</div>
</div>