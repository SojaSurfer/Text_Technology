MERGE (d:Debate {date: '2018-10-30', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Conservative'})
MERGE (p1:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#GavinNewlands'})
ON CREATE SET s0.name = 'Gavin Newlands', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AlistairBurt'})
ON CREATE SET s1.name = 'Alistair Burt', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 3
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s2.name = 'Andrew Mitchell', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d);