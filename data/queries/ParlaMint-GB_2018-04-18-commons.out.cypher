MERGE (d:Debate {date: '2018-04-18', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#NicholasSmith'})
ON CREATE SET s0.name = 'Nicholas Smith', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AlistairBurt'})
ON CREATE SET s1.name = 'Alistair Burt', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 5
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#KevinFoster'})
ON CREATE SET s2.name = 'Kevin Foster', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#ChristopherLaw'})
ON CREATE SET s3.name = 'Christopher Law', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DanielCarden'})
ON CREATE SET s4.name = 'Daniel Carden', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d);