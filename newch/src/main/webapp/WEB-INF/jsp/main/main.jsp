<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="lv_1">
	<div class="left">
		<img src="/img/main/bar_adTeam.png" alt="" />
		<!-- <img src="/img/main/team_ad_index.gif" alt="" /> -->
		<div class="match_schedual">
		<b>이번주 팀 경기일정<span id="cntMyTeamIngMatchList"></span></b>
		<table>
			<tr>
				<td>
				<table class="tableType">
					<thead>
					<tr>
						<th>경기날짜</th><th>home</th><th>away</th>
					</tr>
					</thead>
					<tbody id="ingMyTeamMatchList">
					
					</tbody>
				</table>
				</td>
			</tr>
		</table>
		</div>
		<div class="match_schedual">
				<b>자유경기 경기일정<span id="cntIngMyFreeMatchList"></span></b>
			<table>
				<tr>
					<td>
					<table class="tableType">
						<thead>
						<tr>
							<th>경기날짜</th><th>경기장소</th><th>모집인원</th>
						</tr>
						</thead>
						<tbody id="myfreematch">
						
						</tbody>
					</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="center">
		<img src="/img/main/bar_schedual.png" alt="" />
	</div>
	<div class="right">
		<img src="/img/main/ranking_bar.png" alt="" />
	</div>
</div>