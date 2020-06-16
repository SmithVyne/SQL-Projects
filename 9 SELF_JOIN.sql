SELECT COUNT(name) FROM stops


SELECT id FROM stops
WHERE name = 'Craiglockhart'


SELECT id, name
FROM stops JOIN route ON stops.id=route.stop
WHERE num = 4 AND company = 'LRT'
ORDER BY pos


SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*)=2


SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53
AND b.stop = (
SELECT id FROM stops
WHERE name = 'London Road'
)


SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'
AND stopb.name='London Road'


SELECT a.company, a.num
FROM route a JOIN route b ON(a.company=b.company AND a.num=b.num)
WHERE a.stop = 115 AND b.stop = 137
GROUP BY num


SELECT a.company, a.num
FROM route a JOIN route b ON(a.company=b.company AND a.num=b.num)
JOIN stops stopa ON(a.stop=stopa.id)
JOIN stops stopb ON(b.stop=stopb.id)
WHERE stopa.name = 'Craiglockhart'
AND stopb.name = 'Tollcross' 


SELECT stops.name, a.company, a.num
FROM route a JOIN route b ON(a.company=b.company AND a.num=b.num)
JOIN stops ON(b.stop=stops.id) 
WHERE a.stop=53
AND a.company='LRT'