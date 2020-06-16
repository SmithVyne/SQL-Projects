SELECT matchid, player FROM goal 
  WHERE teamid LIKE '%GER%'


SELECT id,stadium,team1,team2
  FROM game
  WHERE id = 1012


SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (game.id=goal.matchid)
  WHERE teamid LIKE '%GER%'


SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (game.id=goal.matchid)
  WHERE teamid LIKE '%GER%'


SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON (goal.teamid = eteam.id)
 WHERE gtime<=10



