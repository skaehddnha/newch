create table player_record(
id varchar2(14) not null,
playno varchar2(30) not null,
playDate date not null,
playTeam varchar2(30) not null,
opposingTeam varchar2(30) not null,
success2p number(5),
try2p number(5),
success3p number(5),
try3p number(5),
success1p number(5),
try1p number(5),
rebound number(5),
assist number(5),
blocking number(5),
steal number(5),
foul number(5),
mannerPoint number(5));

insert into player_record (
id,playNo,playDate,playTeam,opposingTeam,success2p,try2p,success3p,try3p,success1p,try1p,rebound,assist,blocking,steal,foul,mannerPoint)
values()

SELECT 
		id, playNo, playDate, playTeam, opposingTeam, 
		success2p, try2p, success3p, try3p, success1p, try1p,
		rebound, assist, blocking, steal, foul, mannerPoint
		FROM player_record
		WHERE id = #value#
		ORDER BY playdate DESC
		
SELECT
	success2p, try2p, success3p, try3p, success1p, try1p,
	rebound, assist, blocking, steal, foul, mannerPoint,
	ROUND(success2p/try2p, 2) as avg2p, ROUND(success3p/try3p, 2) as avg3p, ROUND(success1p/try1p, 2) as avg1p,
	avgRebound, avgAssist, avgBlocking, avgSteal, avgFoul
	FROM(
		SELECT 
		sum(success2p) success2p, 
		sum(try2p) try2p, 
		sum(success3p) success3p, 
		sum(try3p) try3p, 
		sum(success1p) success1p, 
		sum(try1p) try1p,
		sum(rebound) rebound, 
		sum(assist) assist, 
		sum(blocking) blocking, 
		sum(steal) steal, 
		sum(foul) foul, 
		avg(mannerPoint) mannerPoint,
 		ROUND(avg(rebound), 2) avgRebound,
 		ROUND(avg(assist), 2) avgAssist,
 		ROUND(avg(blocking), 2) avgBlocking,
 		ROUND(avg(steal), 2) avgSteal,
 		ROUND(avg(foul), 2) avgFoul
		FROM (
			SELECT
			id, playNo, playDate, playTeam, opposingTeam, 
			success2p, try2p, success3p, try3p, success1p, try1p,
			rebound, assist, blocking, steal, foul, mannerPoint
			FROM player_record
			WHERE id = 'nlbzf'
			ORDER BY playdate DESC
			)
		GROUP BY id
	)
	GROUP BY success2p, try2p, success3p, try3p, success1p, try1p,
	rebound, assist, blocking, steal, foul, mannerPoint, avgRebound, avgAssist, avgBlocking, avgSteal, avgFoul
/

