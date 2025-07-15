MERGE (d:Debate {date: '2017-11-29', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#MartinDochertyHughes'})
ON CREATE SET s0.name = 'Martin Docherty-Hughes', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s1.name = 'Alison Thewliss', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#PenelopeMordaunt'})
ON CREATE SET s2.name = 'Penelope Mordaunt', s2.sex = 'F', s2.parliament = 'House of Commons', s2.contributions = 7
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#KevinFoster'})
ON CREATE SET s3.name = 'Kevin Foster', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#AndrewPercy'})
ON CREATE SET s4.name = 'Andrew Percy', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#AnnClwyd'})
ON CREATE SET s5.name = 'Ann Clwyd', s5.sex = 'F', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#RobertaBlackmanWoods'})
ON CREATE SET s6.name = 'Roberta Blackman-Woods', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s7.name = 'Andrew Mitchell', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#EleanorLaing'})
ON CREATE SET s8.name = 'Eleanor Laing', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 3
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d);