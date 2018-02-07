<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type = "text/javascript">
$(function() {
    $("#date_pick").datepicker({
    	changeMonth: true,
    	changeYear: true,
    	yearRange: 'c-100:c+0',
    	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
    });
});
function goPopup(){
    // 주소검색을 수행할 팝업 페이지를 호출합니다.
    // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("/popup/common/jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
     //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
function invalid_check(){
	alert("hh");
}
</script>
<div class="register">
	<form action="" id="f_register" name="f_register" onsubmit="invalid_check()" enctype="multipart/form-data">
	<div>
		<div class="bar_menu">회원가입</div>
	</div>
	<div>
		<table>
			<tr>
				<th>*아이디</th>
				<td colspan="4">
					<input type="text" placeholder="아이디를 넣으세요" />
				</td>
			</tr>
			<tr>
				<th>*비밀번호</th>
				<td colspan="4">
					<input type="password" placeholder="비밀번호를 넣으세요" />
				</td>
			</tr>
			<tr>
				<th>*비밀번호 확인</th>
				<td colspan="4">
					<input type="password" placeholder="다시한번 비밀번호를 넣으세요">
				</td>
			</tr>
			<tr>
				<th>*이름</th>
				<td colspan="4">
					<input type="text" placeholder="이름을 넣으세요">
				</td>
			</tr>
			<tr>
				<th>*성별</th>
				<td colspan="4">
					<input type="radio" value="1">남
					<input type="radio" value="2">여
				</td>
			</tr>
			<tr>
				<th>*연락처</th>
				<td colspan="4">
					<select>
						<option>=선택=</option>
						
						<c:forEach items="${telList}" var="obj" varStatus="idx">
							<option>${obj}</option>
						</c:forEach>
						
					</select>
					<input type="number" name="Mtel" pattern="[0-9]*" inputmode="numeric" min = "0" maxlength="4" oninput=""/> - 
					<input type="number" name="Btel" pattern="[0-9]*" inputmode="numeric" min = "0" maxlength="4" oninput=""/>
				</td>
			</tr>
			<tr>
				<th>*이메일</th>
				<td colspan="4">
					<input type="text" name="Bemail" placeholder="이메일 앞자리" /> @ 
					<input type="text" name="Aemail" />
					<select name="">
						<option>직접입력</option>
						<option>naver.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>*생년월일</th>
				<td colspan="4">
					<input type="text" id="date_pick" readonly="readonly" />
				</td>
			</tr>
			<tr>
				<th>*주소</th>
				<td colspan="4">
					<input type="text" style="width:350px;" id="addr"  name="addr" readonly="readonly" >
					<input type="button"  value="주소검색" onClick="goPopup()">	
				</td>
			</tr>
			<tr>
				<th>*개인정보 공개</th>
				<td colspan="4">
					<input type="radio" value="0" />
					<label>비공개</label>
					<input type="radio" value="1" />
					<label>팀원공개</label>
					<input type="radio" value="2" />
					<label>회원공개</label>
					<input type="radio" value="3" />
					<label>전체공개</label>
				</td>
			</tr>
			<tr>
				<th>사진 선택</th>
				<td colspan="4">
					<input type="file">
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" />
					<img width="100" height="100" src="/img/human/chae.png">
				</td>
				<td>
					<input type="radio" />
					<img width="100" height="100" src="/img/human/gang.png">
				</td>
				<td>
					<input type="radio" />
					<img width="100" height="100" src="/img/human/jung.png">
				</td>
				<td>
					<input type="radio" />
					<img width="100" height="100" src="/img/human/seo.png">
				</td>
				<td>
					<input type="radio" />
					<img width="100" height="100" src="/img/human/song.png">
				</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td colspan="4">
					<input type="text" />
				</td>
			</tr>
			<tr>
				<th>키</th>
				<td colspan="4">
					<input type="text" />
				</td>
			</tr>
			<tr>
				<th>몸무게</th>
				<td colspan="4">
					<input type="text" />
				</td>
			</tr>
			<tr>
				<th>선호지역</th>
				<td colspan="4">
				
				</td>
			</tr>
			<tr>
				<th>주포지션</th>
				<td colspan="4">
					<select>
						<option>=선택=</option>
						<option>가드</option>
						<option>센터</option>
						<option>포워드</option>
					</select>
				</td>
			</tr>
		</table>
	</div>
	</form>
</div>