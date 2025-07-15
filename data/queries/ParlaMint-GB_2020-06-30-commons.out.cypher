MERGE (d:Debate {date: '2020-06-30', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#SimonBaynes'})
ON CREATE SET s0.name = 'Simon Baynes', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#CarolineNokes'})
ON CREATE SET s1.name = 'Caroline Nokes', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#MargaretGreenwood'})
ON CREATE SET s2.name = 'Margaret Greenwood', s2.sex = 'F', s2.parliament = 'House of Commons', s2.contributions = 2
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JamesCleverly'})
ON CREATE SET s3.name = 'James Cleverly', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 4
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d);