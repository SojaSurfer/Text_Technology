MERGE (d:Debate {date: '2019-01-22', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#MaryTwist'})
ON CREATE SET s0.name = 'Mary Twist', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RuthGeorge'})
ON CREATE SET s1.name = 'Ruth George', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JeremyHunt'})
ON CREATE SET s2.name = 'Jeremy Hunt', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 4
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#KevinBrennan'})
ON CREATE SET s3.name = 'Kevin Brennan', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d);