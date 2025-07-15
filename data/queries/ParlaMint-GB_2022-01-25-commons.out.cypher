MERGE (d:Debate {date: '2022-01-25', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#EmmaLewellBuck'})
ON CREATE SET s0.name = 'Emma Lewell-Buck', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#GillianFurniss'})
ON CREATE SET s1.name = 'Gillian Furniss', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JamesCleverly'})
ON CREATE SET s2.name = 'James Cleverly', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 4
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#CharalambosCharalambous'})
ON CREATE SET s3.name = 'Charalambos Charalambous', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d);