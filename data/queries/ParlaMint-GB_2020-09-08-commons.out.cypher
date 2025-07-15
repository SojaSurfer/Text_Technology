MERGE (d:Debate {date: '2020-09-08', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Conservative'})
MERGE (p1:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#PaulHolmes'})
ON CREATE SET s0.name = 'Paul Holmes', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s1.name = 'Alison Thewliss', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JamesCleverly'})
ON CREATE SET s2.name = 'James Cleverly', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 3
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d);