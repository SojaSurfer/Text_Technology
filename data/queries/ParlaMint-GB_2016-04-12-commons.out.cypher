MERGE (d:Debate {date: '2016-04-12', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#CarolynHarris'})
ON CREATE SET s0.name = 'Carolyn Harris', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 5
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#EdwardArgar'})
ON CREATE SET s2.name = 'Edward Argar', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#KeithVaz'})
ON CREATE SET s3.name = 'Keith Vaz', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DianaJohnson'})
ON CREATE SET s4.name = 'Diana Johnson', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d);