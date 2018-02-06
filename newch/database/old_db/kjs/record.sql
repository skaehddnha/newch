CREATE TABLE PLAYER_RECORD(
	ID VARCHAR2(14) NOT NULL,
	PLAYNO VARCHAR2(30) NOT NULL,
	PLAYDATE DATE NOT NULL,
	PLAYTEAM VARCHAR2(30) NOT NULL,
	OPPOSINGTEAM VARCHAR2(30) NOT NULL,
	SUCCESS2P NUMBER(5),
	TRY2P NUMBER(5),
	SUCCESS3P NUMBER(5),
	TRY3P NUMBER(5),
	SUCCESS1P NUMBER(5),
	TRY1P NUMBER(5),
	REBOUND NUMBER(5),
	ASSIST NUMBER(5),
	BLOCKING NUMBER(5),
	STEAL NUMBER(5),
	FOUL NUMBER(5),
	MANNERPOINT NUMBER(5)
);

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
