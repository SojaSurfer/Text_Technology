MERGE (d:Debate {date: '2018-11-21', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#AnnabelGoldie'})
ON CREATE SET s0.name = 'Annabel Goldie', s0.sex = 'F', s0.parliament = 'House of Lords', s0.contributions = 5
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RaymondCollins'})
ON CREATE SET s1.name = 'Raymond Collins', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#LindsayGranshaw'})
ON CREATE SET s2.name = 'Lindsay Granshaw', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#PatrickCormack'})
ON CREATE SET s3.name = 'Patrick Cormack', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#MenziesCampbell'})
ON CREATE SET s4.name = 'Menzies Campbell', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d);