MERGE (d:Debate {date: '2018-06-11', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#TariqAhmad'})
ON CREATE SET s0.name = 'Tariq Ahmad', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 5
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RaymondCollins'})
ON CREATE SET s1.name = 'Raymond Collins', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#BarbaraJanke'})
ON CREATE SET s2.name = 'Barbara Janke', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#DesmondBrowne'})
ON CREATE SET s3.name = 'Desmond Browne', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#JohnAnderson'})
ON CREATE SET s4.name = 'John Anderson', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d);