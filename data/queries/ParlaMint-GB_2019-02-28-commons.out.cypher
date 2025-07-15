MERGE (d:Debate {date: '2019-02-28', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#KeithVaz'})
ON CREATE SET s0.name = 'Keith Vaz', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 4
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s1.name = 'Alison Thewliss', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#TimothyLoughton'})
ON CREATE SET s2.name = 'Timothy Loughton', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 2
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#AlistairBurt'})
ON CREATE SET s3.name = 'Alistair Burt', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 4
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EleanorLaing'})
ON CREATE SET s4.name = 'Eleanor Laing', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d);