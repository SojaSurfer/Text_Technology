MERGE (d:Debate {date: '2019-02-20', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#DenisTunnicliffe'})
ON CREATE SET s0.name = 'Denis Tunnicliffe', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RonaFairhead'})
ON CREATE SET s1.name = 'Rona Fairhead', s1.sex = 'F', s1.parliament = 'House of Lords', s1.contributions = 4
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#DavidHowell'})
ON CREATE SET s2.name = 'David Howell', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JeremyPurvis'})
ON CREATE SET s3.name = 'Jeremy Purvis', s3.sex = 'M', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d);